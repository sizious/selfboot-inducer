(*
  CDRTools "CDRecord" Dreamcast Driver
  License: GPL 3
  (C)reated by [big_fury]SiZiOUS

  This unit was made to drive the CDRecord binary from the CDRTools package,
  with the goal to provide every method needed to burn Dreamcast-oriented CD-R.

  --- Licensing stuff ---

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*)
unit CDRecord;

interface

uses
  Windows, SysUtils, Classes;

const
  SCDRECORD_ERROR_OUTPUT_TAG = '*** CDRECORD ERROR OUTPUT ***';

type
  ECDRecordEngine = class(Exception)
  public
    constructor Create(const Msg: string);
    constructor CreateFmt(const Msg: string; const Args: array of const);
  end;
  ECDRecordUnableToRetrieveDrives = class(ECDRecordEngine);
  ECDRecordDriveNotSelected = class(ECDRecordEngine);
  ECDRecordDiscNotPresent = class(ECDRecordEngine);
  ECDRecordDiscNotBlank = class(ECDRecordEngine);
  ECDRecordDiscBlank = class(ECDRecordEngine);
  ECDRecordFakeAudioTrackGenerationFailed = class(ECDRecordEngine);
  ECDRecordFakeAudioTrackBurningFailed = class(ECDRecordEngine);
  ECDRecordUnableToRetrieveMultisessionInfo = class(ECDRecordEngine);
  ECDRecordDataIsoNotFound = class(ECDRecordEngine);
//  ECDRecordDataTrackBurningFailed = class(ECDRecordEngine);
  ECDRecordDriveInvalidBurner = class(ECDRecordEngine);
  ECDRecordEngineDiscNotWritable = class(ECDRecordEngine);

  TCDRecordEngine = class;

  TCDRecordDriveListItem = class
  private
    fCode: string;
    fManufacturer: string;
    fModel: string;
    fFirmwareVersion: string;
  public
    property Code: string read fCode;
    property FirmwareVersion: string read fFirmwareVersion;
    property Manufacturer: string read fManufacturer;
    property Model: string read fModel;
  end;

  TBurnSpeed = (bs1x, bs2x, bs4x, bs8x, bs12x);

  TCDRecordDrivesList = class
  private
    fList: TList;
    fOwner: TCDRecordEngine;
    fSelectedIndex: Integer;
    fBurnSpeed: TBurnSpeed;
    procedure Add(ACode, AName: string);
    procedure Clear;
    function GetCount: Integer;
    function GetItem(Index: Integer): TCDRecordDriveListItem;
    procedure ParseScanBus(const ScanBusOutputFileName: TFileName);
  public
    constructor Create(AOwner: TCDRecordEngine);
    destructor Destroy; override;
    procedure Refresh;
    property BurnSpeed: TBurnSpeed read fBurnSpeed write fBurnSpeed;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TCDRecordDriveListItem read GetItem; default;
    property SelectedIndex: Integer read fSelectedIndex write fSelectedIndex;
    property Owner: TCDRecordEngine read fOwner;
  end;

  TCDRecordEngine = class(TObject)
  private
    fDrives: TCDRecordDrivesList;
    fEngine: TFileName;
    procedure CheckDrive;
    function GetBurnSpeed: LongWord;
    function GetDriveCode: string;
    function GetMsInfoValue: LongWord;
    function GenerateFakeAudioTrack: TFileName;
    function IsValidMsInfo(MsInfoValue: LongWord): Boolean;
    function RunCommand(const Parameters: string): TFileName; overload;
    function RunCommand(const Parameters: string;
      CatchOutput: Boolean): TFileName; overload;
  public
    constructor Create(EngineExecutable: TFileName);
    destructor Destroy; override;
    function BurnAudioTrack: LongWord;
    procedure BurnDataTrack(const IsoFileName: TFileName; CloseSession: Boolean);
    function GenerateBootableDataTrack(const DataIsoFileName: TFileName): TFileName;
    property Drives: TCDRecordDrivesList read fDrives;
    property Engine: TFileName read fEngine;
  end;

implementation

uses
  SysTools, WorkDir, IOUtils;

const
  SCDRECORD_NO_DISC           = 'No disk / Wrong disk!';
  SCDRECORD_BLANK_DISC        = 'Cannot read session offset.';
  SCDRECORD_INVALID_BURNER    = 'Sorry, no CD/DVD/BD-Drive found on this target.';
  SCDRECORD_DISC_NOT_WRITABLE = 'Cannot read first writable address.';

{ TCDRecordDrivesList }

procedure TCDRecordDrivesList.Add(ACode, AName: string);
var
  NewItem: TCDRecordDriveListItem;

begin
  AName := '''' + AName + ' ''';
  NewItem := TCDRecordDriveListItem.Create;
  with NewItem do
  begin
    fCode := ACode;
    fManufacturer := Trim(LeftNRight(''' ''', AName, 1));
    fModel := Trim(LeftNRight(''' ''', AName, 2));
    fFirmwareVersion := Trim(LeftNRight(''' ''', AName, 3));
  end;
  fList.Add(NewItem);
end;

procedure TCDRecordDrivesList.Clear;
var
  i: Integer;

begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  fList.Clear;
end;

constructor TCDRecordDrivesList.Create(AOwner: TCDRecordEngine);
begin
  fList := TList.Create;
  fOwner := AOwner;
end;

destructor TCDRecordDrivesList.Destroy;
begin
  Clear;
  fList.Free;
  inherited;
end;

function TCDRecordDrivesList.GetCount: Integer;
begin
  Result := fList.Count;
end;

function TCDRecordDrivesList.GetItem(Index: Integer): TCDRecordDriveListItem;
begin
  Result := TCDRecordDriveListItem(fList[Index]);
end;

procedure TCDRecordDrivesList.ParseScanBus(
  const ScanBusOutputFileName: TFileName);
const
  CD_TAG = 'Removable CD-ROM';

var
  SL: TStringList;
  i, j: Integer;
  DCode, DName, Buf: string;

begin
  SL := TStringList.Create;
  try
    SL.LoadFromFile(ScanBusOutputFileName);
    for i := 0 to SL.Count - 1 do
      // find the Removable CD-ROM entry...
      if InString(CD_TAG, SL[i]) then
      begin
        Buf := TrimLeft(SL[i]);
        j := Pos(#9, Buf);
        if j = 0 then
          j := Pos(' ', Buf); // Thx VasiliyRS for the bug submission
        DCode := Copy(Buf, 1, j - 1);
        j := Pos(') ''', Buf) + 1;
        DName := Copy(Buf, j, Length(Buf) - Length(CD_TAG) - j);
        Add(DCode, DName);
      end;
  finally
    SL.Free;
    KillFile(ScanBusOutputFileName);
  end;
end;

procedure TCDRecordDrivesList.Refresh;
var
  ScanBusOutputFileName: TFileName;

begin
  ScanBusOutputFileName := Owner.RunCommand('-scanbus');
  if not TFile.Exists(ScanBusOutputFileName) then
    raise ECDRecordUnableToRetrieveDrives.Create('Unable to retrieve drives !');
  Clear;
  ParseScanBus(ScanBusOutputFileName);
end;

{ TCDRecordEngine }

function TCDRecordEngine.BurnAudioTrack: LongWord;
var
  AudioTrackFile: TFileName;
  
begin
  // Check the drive before continue
  CheckDrive;

  // Making Audio Track
  AudioTrackFile := GenerateFakeAudioTrack;
  if not TFile.Exists(AudioTrackFile) then
    raise ECDRecordFakeAudioTrackGenerationFailed.CreateFmt('The Fake Audio Track wasn''t generated properly (FileName="%s")!', [AudioTrackFile]);

  // Burn Audio Track
  RunCommand(
    Format('-dev=%s gracetime=3 -v driveropts=burnfree -multi -tao -pad -swab -audio speed=%d "%s"',
    [GetDriveCode, GetBurnSpeed, AudioTrackFile]),
    False
  );

  // Retrieve MsInfo value...
  Result := GetMsInfoValue;
  if not IsValidMsInfo(Result) then
    raise ECDRecordFakeAudioTrackBurningFailed.CreateFmt('Sorry, the audio track burning was failed. Check if the disc can be re-used before putting it in the trash (MsInfo=%d) !', [Result]);
end;

procedure TCDRecordEngine.BurnDataTrack(const IsoFileName: TFileName;
  CloseSession: Boolean);
var
  CloseSessionSwitch: string;

begin
  if not TFile.Exists(IsoFileName) then
    raise ECDRecordDataIsoNotFound.CreateFmt('The Data Iso File wasn''t found ("%s") !', [IsoFileName]);

  CloseSessionSwitch := '-eject';
  if not CloseSession then
  begin
    CheckDrive; // this is the first session in data/data mode !
    CloseSessionSwitch := '-multi'; // keep the session opened
  end;

  // Burn Data Track
  RunCommand(
    Format('-dev=%s gracetime=3 -v driveropts=burnfree speed=%d %s -tao -xa "%s"',
    [GetDriveCode, GetBurnSpeed, CloseSessionSwitch, IsoFileName]),
    False
  );

  // cdrecord -toc (can be used to check the integrety...)
end;

procedure TCDRecordEngine.CheckDrive;
var
  MsInfo: LongWord;

begin
{$IFDEF DEBUG}
  MsInfo := 0;
{$ENDIF}
  // Verifying MsInfo value...
  try
    MsInfo := GetMsInfoValue;
    // if no exception, the MsInfo value is valid, so the disc isn't blank !!!
    raise ECDRecordDiscNotBlank.CreateFmt('The disc isn''t blank, please insert a blank disc to use this module (MsInfo=%d) !', [MsInfo]);
  except
    // if no disc, then raise the catched exception
    on E:ECDrecordDiscNotPresent do
      raise;
    // if the MsInfo was retrieved, then the disc is not blank.
    on E:ECDRecordDiscNotBlank do
      raise;
    // if other exception, the disc seems to be blank!
{$IFDEF DEBUG}
    on E:Exception do WriteLn('BurnAudioTrack::', E.ClassName, ': ', E.Message);
{$ENDIF}
  end;
{$IFDEF DEBUG}
  WriteLn('MsInfo Before Burning Audio: ', MsInfo);
{$ENDIF}
end;

constructor TCDRecordEngine.Create(EngineExecutable: TFileName);
begin
  fDrives := TCDRecordDrivesList.Create(Self);
  fEngine := EngineExecutable;
  Drives.Refresh;
end;

destructor TCDRecordEngine.Destroy;
begin
  fDrives.Free;
  inherited;
end;

function TCDRecordEngine.GenerateBootableDataTrack(
  const DataIsoFileName: TFileName): TFileName;
const
  SECTOR_SIZE_MODE2_FORM1 = 2048;
  NULL_SECTOR_SIZE = 282;
  DATA_SECTOR_SIZE = 18;

var
  Input, Output: TFileStream;
  Buffer: array[0..SECTOR_SIZE_MODE2_FORM1 - 1] of AnsiChar;
  i: Integer;

begin
  Result := ChangeFileExt(GetWorkingTempFileName, '.ISO');
  Input := TFileStream.Create(DataIsoFileName, fmOpenRead);
  Output := TFileStream.Create(Result, fmCreate);
  try
    Output.CopyFrom(Input, DATA_SECTOR_SIZE * SECTOR_SIZE_MODE2_FORM1);
    FillChar(Buffer, SizeOf(Buffer), #0);
    for i := 0 to NULL_SECTOR_SIZE - 1 do
      Output.Write(Buffer, SECTOR_SIZE_MODE2_FORM1);
  finally
    Input.Free;
    Output.Free;
  end;
end;

function TCDRecordEngine.GenerateFakeAudioTrack: TFileName;
const
  BLOCK_SIZE = 16384;
  AUDIO_FILE_SIZE = 705600;

var
  AudioFile: TFileStream;
  Buffer: array[0..BLOCK_SIZE - 1] of Byte;
  i, Count: Integer;

begin
  Result := ChangeFileExt(GetWorkingTempFileName, '.RAW');
  KillFile(Result);
  AudioFile := TFileStream.Create(Result, fmCreate);
  try
    FillChar(Buffer, SizeOf(Buffer), #0);
    // Writing the blocks...
    i := 0;
    Count := AUDIO_FILE_SIZE div SizeOf(Buffer);
    while i < Count do
    begin
      AudioFile.Write(Buffer, SizeOf(Buffer));
      Inc(i);
    end;
    // Writing the rest (if needed)...
    Count := AUDIO_FILE_SIZE - SizeOf(Buffer) * Count;
    if Count > 0 then
      AudioFile.Write(Buffer, Count);
  finally
    AudioFile.Free;
  end;
end;

function TCDRecordEngine.GetBurnSpeed: LongWord;
begin
  Result := 1;
  case Drives.BurnSpeed of
    bs1x:   Result := 1;
    bs2x:   Result := 2;
    bs4x:   Result := 4;
    bs8x:   Result := 8;
    bs12x:  Result := 12;
  end;
end;

function TCDRecordEngine.GetDriveCode: string;
begin
  if (Drives.SelectedIndex < 0) or (Drives.SelectedIndex > Drives.Count) then
    raise ECDRecordDriveNotSelected.CreateFmt('Selected Drive is invalid (%d) !',
      [Drives.SelectedIndex]);
  Result := Drives[Drives.SelectedIndex].Code;
end;

function TCDRecordEngine.GetMsInfoValue: LongWord;
var
  OutputFile: TFileName;
  SL: TStringList;

begin
  Result := 0;
  OutputFile := RunCommand(Format('-dev=%s -msinfo', [GetDriveCode]));
  SL := TStringList.Create;
  try
    SL.LoadFromFile(OutputFile);
    try
      if InString(SCDRECORD_NO_DISC, SL.Text) then
        raise ECDRecordDiscNotPresent.Create('No disc inserted in the selected drive !');
      if InString(SCDRECORD_BLANK_DISC, SL.Text) then
        raise ECDRecordDiscBlank.Create('Disc is blank, unable to retrieve multi-session information !');
      if InString(SCDRECORD_INVALID_BURNER, SL.Text) then
        raise ECDRecordDriveInvalidBurner.Create('This drive seems not to be a valid burner !');
      if InString(SCDRECORD_DISC_NOT_WRITABLE, SL.Text) then
        raise ECDRecordEngineDiscNotWritable.Create('The disc seems not to be writable !');
      Result := StrToInt(LeftNRight(',', SL[0], 1));
    except
      // know exception
      on E:ECDRecordEngine do
        raise;
      // unknow exception
      on E:Exception do
        raise ECDRecordUnableToRetrieveMultisessionInfo.CreateFmt('Unable to retrieve multi-session information, reason: "%s", buffer: "%s"', [E.Message, SL.Text]);
    end;
  finally
    SL.Free;
  end;
end;

function TCDRecordEngine.IsValidMsInfo(MsInfoValue: LongWord): Boolean;
begin
  Result := (MsInfoValue = 11702) or (MsInfoValue = 11700);
end;

function TCDRecordEngine.RunCommand(const Parameters: string): TFileName;
begin
  Result := RunCommand(Parameters, True);
end;

function TCDRecordEngine.RunCommand(const Parameters: string;
  CatchOutput: Boolean): TFileName;
var
  Buffer, ErrBuffer: TStringList;
  BatchFile, CurrentDir, ErrOutput: TFileName;
  S: string;
  BatchEncoding: TEncoding;

begin
  CurrentDir := GetCurrentDir;
  Result := GetWorkingTempFileName;

  // Preparing the batch for running the command.
  Buffer := TStringList.Create;
  BatchEncoding := TEncoding.GetEncoding(GetOEMCP);
  try
    BatchFile := ChangeFileExt(GetWorkingTempFileName, '.BAT');
    Buffer.Add('@echo off');
    Buffer.Add(ExcludeTrailingPathDelimiter(TPath.GetPathRoot(Engine)));
    Buffer.Add(Format('cd "%s"', [IncludeTrailingPathDelimiter(TPath.GetDirectoryName(Engine))]));
    S := Format('%s %s', [TPath.GetFileNameWithoutExtension(Engine), Parameters]);
    if CatchOutput then 
    begin
      // Catching the output ! (std and err)
      ErrOutput := GetWorkingTempFileName;
      S := S + Format(' > "%s" 2> "%s"', [Result, ErrOutput]);
    end;
    Buffer.Add(S);
    Buffer.SaveToFile(BatchFile, BatchEncoding);
  finally
    Buffer.Free;
    BatchEncoding.Free;
  end;

  // Running the command
  RunAndWait(BatchFile);

  // Appeding the std and err output!
  if CatchOutput then
  begin
    Buffer := TStringList.Create;
    ErrBuffer := TStringList.Create;
    try
      if TFile.Exists(Result) then
        Buffer.LoadFromFile(Result);
      if TFile.Exists(ErrOutput) then
        ErrBuffer.LoadFromFile(ErrOutput);
      Buffer.Add(SCDRECORD_ERROR_OUTPUT_TAG);
      Buffer.Append(ErrBuffer.Text);
      Buffer.SaveToFile(Result);
    finally
      Buffer.Free;
      ErrBuffer.Free;
    end;
    KillFile(ErrOutput);
  end;
  
  SetCurrentDir(CurrentDir);
end;

{ ECDRecordEngine }

constructor ECDRecordEngine.Create(const Msg: string);
begin
  inherited Create('CDRecord: ' + Msg);
end;

constructor ECDRecordEngine.CreateFmt(const Msg: string;
  const Args: array of const);
begin
  inherited CreateFmt('CDRecord: ' + Msg, Args);
end;

end.
