(*
  Selfboot Inducer Core
  License: GPL 3
  (C)reated by [big_fury]SiZiOUS

  This is the main heart of this application.
  All the logic stuff is here.

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
unit SBICore;

interface

uses
  Windows, SysUtils, Classes, Messages, Graphics, MRImage, CDRecord;

const
  SFILE_DC_BOOTSTRAP      = 'IP.BIN';
  SFILE_DC_BOOT_BINARY    = '1ST_READ.BIN';

type
  ESelfbootInducer = class(Exception);
  EDirectBootPackageNotSelected = class(ESelfbootInducer);
  ERequiredComponentNotFound = class(ESelfbootInducer);

  TSelfbootInducerEngine = class;

  TPackageScanMode = (psmRefresh, psmRetrieve);
  TPackageKind = (pkUndef, pkApp, pkDemo, pkEmu, pkGame);
  TMenuMode = (mmMultiMenu, mmSingleMenu, mmSbi2Boot);

  { Packages Manager }

  TPackagesList = class;

  { Thread used to scan the ".\packages" directory. }
  TPackagesListScanner = class(TThread)
  private
    fOwner: TPackagesList;
    procedure AddFile(const FileName: TFileName);
    procedure ResetVisibleState;
  protected
    procedure Execute; override;
  public
    constructor Create(AOwner: TPackagesList);
    property Owner: TPackagesList read fOwner;
  end;

  { This will represent a SBI file placed in the ".\packages" directory. }
  TPackageListItem = class(TObject)
  private
    fName: string;
    fFileName: TFileName;
    fKind: TPackageKind;
    fSelected: Boolean;
    fComments: string;
    fDescription: string;
    fAvailable: Boolean;
    fScreenshot: TPicture;
    fMetaData: string;
    fBinaryFileName: TFileName;
    fDxlPackageFileName: TFileName;
    procedure ReadPackageProperties;
  public
    constructor Create; overload;
    constructor Create(AFileName: TFileName); overload;
    destructor Destroy; override;
    // Is the item valid and available on the disk (file wasn't deleted) ?
    property Available: Boolean read fAvailable;
    // Name of the main Dreamcast binary of this package
    property BinaryFileName: TFileName read fBinaryFileName;
    // ZipComment of the package (usually the tutorial)
    property Comments: string read fComments;
    // Description shown on the DreamInducer screen for the package
    property Description: string read fDescription;
    // Source file name of the SBI package
    property FileName: TFileName read fFileName;
    // Type of the package
    property Kind: TPackageKind read fKind;
    // Name of the package
    property Name: string read fName;
    // DXL MetaData
    property MetaData: string read fMetaData;
    // Screenshot of the item
    property Screenshot: TPicture read fScreenshot;
    // Is the item selected to be included in the compilation ?
    property Selected: Boolean read fSelected write fSelected;
  end;

  TPackageScanStartEvent = procedure(Sender: TObject;
    ScanMode: TPackageScanMode) of object;

  TPackageScanItemFoundEvent = procedure(Sender: TObject;
    Item: TPackageListItem; ItemIndex: Integer; NewItem: Boolean) of object;

  { Containers of TPackageListItem }
  TPackagesList = class(TObject)
  private
    fPackagesListScanner: TPackagesListScanner;
    fList: TList;
    fDirectory: TFileName;
    fOwner: TSelfbootInducerEngine;
    fPackageScanItemFound: TPackageScanItemFoundEvent;
    fPackageScanStart: TPackageScanStartEvent;
    fPackageScanEnd: TNotifyEvent;
    function Add(FileName: TFileName): Integer;
    procedure Clear;
    function GetCount: Integer;
    function GetItem(Index: Integer): TPackageListItem;
    function IndexOf(FileName: TFileName): Integer;
    procedure PerformScan;
    procedure SetDirectory(const Value: TFileName);
    procedure PackagesListScannerTerminate(Sender: TObject);
  public
    constructor Create(AOwner: TSelfbootInducerEngine);
    destructor Destroy; override;
    procedure Refresh;
    procedure Retrieve;
    property Count: Integer read GetCount;
    property Directory: TFileName read fDirectory write SetDirectory;
    property Items[Index: Integer]: TPackageListItem read GetItem; default;
    property OnPackageScanStart: TPackageScanStartEvent
      read fPackageScanStart write fPackageScanStart;
    property OnPackageScanItemFound: TPackageScanItemFoundEvent
      read fPackageScanItemFound write fPackageScanItemFound;
    property OnPackageScanEnd: TNotifyEvent
      read fPackageScanEnd write fPackageScanEnd;
    property Owner: TSelfbootInducerEngine read fOwner;
  end;

  { Store each directory used by the application }
  TSelfbootInducerDirectories = class(TObject)
  private
    fDiscRoot: TFileName;
    fEngine: TFileName;
    fOwner: TSelfbootInducerEngine;
    fWorkingDirectory: TFileName;
    procedure CheckRequiredPrograms;
    function GetPackagesDirectory: TFileName;
    procedure SetPackagesDirectory(const Value: TFileName);
    procedure SetWorkingDirectory(const Value: TFileName);
  public
    constructor Create(AOwner: TSelfbootInducerEngine);
    // For making "Inducer" CD-ROM (contains plain files)
    property DiscRoot: TFileName read fDiscRoot;
    // Contains every necessary files (MkIsoFs)...
    property Engine: TFileName read fEngine;
    // All packages (sbi) are stored in this directory
    property Packages: TFileName
      read GetPackagesDirectory write SetPackagesDirectory;
    // Owner of this object
    property Owner: TSelfbootInducerEngine read fOwner;
    // Working (temporary) directory
    property Temporary: TFileName read fWorkingDirectory write SetWorkingDirectory;
  end;

  { Thread used in PrepareDisc method }
  TPrepareDiscThread = class;

  TPrepareDiscItemProceedEvent = procedure(Sender: TObject;
    PackageName: string; FileName: TFileName) of object;

  // INTERNAL: This is used in the TPrepareDiscThread, to hold selected packages in a sorted way
  TPrepareDiscWorkingPackages = class(TObject)
  private
    fSelectedPackagesList: TList;
    fOwner: TPrepareDiscThread;
    procedure Add(PackageName: string; PackageIndex: Integer);
    procedure Clear;
    procedure Sort;
    function GetCount: Integer;
    function GetItem(Index: Integer): TPackageListItem;
    function GetOwnerEngine: TSelfbootInducerEngine;
  public
    constructor Create(AOwner: TPrepareDiscThread);
    destructor Destroy; override;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TPackageListItem read GetItem; default;
    property Owner: TPrepareDiscThread read fOwner;
    property OwnerEngine: TSelfbootInducerEngine read GetOwnerEngine;
  end;

  // INTERNAL: This is used in the TPrepareDiscThread, to generate DXL files
  TPrepareDiscDxlMap = packed record
    Kind: TPackageKind; // kind of selected packages (App, Demo, Emu, Game)
    Count: Integer;     // number of selected packages
    MetaData: string;   // MetaData (dxl) entries for selected packages
    MetaDataSeparator: string; // for formating MetaData properly...
  end;

  TPrepareDiscThread = class(TThread)
  private
    { Déclarations privées }
    fException: Exception;
    fSelectedPackages: TPrepareDiscWorkingPackages;
    fCurrentPackageName: string;
    fCurrentFileName: TFileName;
    fOwner: TSelfbootInducerEngine;
    fSbi2BootIndex: Integer;
    procedure CleanDirectoryOfDxl(Kind: TPackageKind);
    procedure DoHandleException;
    procedure ExecuteMultiFilesBoot;
    procedure ExecuteSbi2Boot;
    function MakeDxlMultiMenuForKind(Kind: TPackageKind; KindCount: Integer;
      DxlEntries: string): Boolean;
    procedure MakeDxlMultiMenu(DxlMap: array of TPrepareDiscDxlMap);
    procedure MakeDxlSingleMenu(DxlMap: array of TPrepareDiscDxlMap);
    procedure NotifyItemProceed(PackageName: string; FileName: TFileName);
    procedure SyncNotifyItemProceed;
    property SelectedPackages: TPrepareDiscWorkingPackages
      read fSelectedPackages;
  protected
    { Déclarations protégées }
    procedure Execute; override;
    procedure HandleException;
  public
    { Déclarations publiques }
    constructor Create(AOwner: TSelfbootInducerEngine);
    destructor Destroy; override;
    property BootPackageIndex: Integer read fSbi2BootIndex write fSbi2BootIndex;
    property Owner: TSelfbootInducerEngine read fOwner;
  end;

  { Options }
  TDiscTrackType = (dttAudioData, dttDataData);
  TDiscImageType = (ditDAO, ditTAO);

  TSelfbootInducerOptions = class(TObject)
  private
    fRockRidge: Boolean;
    fJoliet: Boolean;
    fAutoDummy: Boolean;
    fIpLogo: Boolean;
    fVolumeLabel: string;
    fDiscStructureType: TDiscTrackType;
    fDiscImageType: TDiscImageType;
    fUDF: Boolean;
    fKeepBootstrapFS: Boolean;
  public
    constructor Create;
    property AutoDummy: Boolean read fAutoDummy write fAutoDummy;
    property BootstrapInFileSystem: Boolean read fKeepBootstrapFS
      write fKeepBootstrapFS;
    property DiscImageType: TDiscImageType read fDiscImageType
      write fDiscImageType;
    property DiscTrackType: TDiscTrackType read fDiscStructureType
      write fDiscStructureType;
    property Joliet: Boolean read fJoliet write fJoliet;
    property LongFileNames: Boolean read fUDF write fUDF;
    property RockRidge: Boolean read fRockRidge write fRockRidge;
    property IpLogo: Boolean read fIpLogo write fIpLogo;
    property VolumeLabel: string read fVolumeLabel write fVolumeLabel;
  end;

  { Thread used when writing images / burning CD-R... }
  TMakeDiscMethod = (mdmIdle, mdmCDI, mdmNRG, mdmMDS, mdmCDR);

  TMakeDiscStatusEvent = procedure(Sender: TObject;
    StatusMessage: string) of object;
  TMakeDiscEndEvent = procedure(Sender: TObject; Success: Boolean;
    OutputFileName: TFileName) of object;

  TMakeDiscThread = class(TThread)
  private
    fBurningSuccess: Boolean;
    fException: Exception;
    fStatusMessage: string;
    fDummyFileName: TFileName;
    fDataIsoFile: TFileName;
    fOwner: TSelfbootInducerEngine;
    fMakingMethod: TMakeDiscMethod;
    fOutputFileName: TFileName;
    procedure DoHandleException;
    procedure MakeDummyFile;
    procedure MakeImage;
    procedure Notify(StatusMessage: string);
    procedure RunBinary(BinaryName: TFileName; Parameters: string);
    procedure SyncOnMakeStatus;
  protected
    { Déclarations protégées }
    procedure Execute; override;
    procedure HandleException; virtual;
  public
    { Déclarations publiques }
    constructor Create(AOwner: TSelfbootInducerEngine);
    property MakingMethod: TMakeDiscMethod read fMakingMethod write fMakingMethod;
    property OutputFileName: TFileName read fOutputFileName write fOutputFileName;
    property Owner: TSelfbootInducerEngine read fOwner;
  end;

  { Main Class }
  TSelfbootInducerEngine = class(TObject)
  private
    fMakeDiscThread: TMakeDiscThread;
    fPackages: TPackagesList;
    fPrepareDiscThread: TPrepareDiscThread;
    fDirectories: TSelfbootInducerDirectories;
    fPrepareDiscStart: TNotifyEvent;
    fPrepareDiscEnd: TNotifyEvent;
    fPrepareDiscItemProceed: TPrepareDiscItemProceedEvent;
    fMenuMode: TMenuMode;
    fBootstrapLogo: TMRFile;
    fOptions: TSelfbootInducerOptions;
    fResetDiscEnd: TNotifyEvent;
    fMakeDiscStart: TNotifyEvent;
    fBusy: Boolean;
    fMakeDiscEnd: TMakeDiscEndEvent;
    fMakeStatus: TMakeDiscStatusEvent;
    fMakingMethod: TMakeDiscMethod;
    fMakeDiscOutputFileName: TFileName;
    fCDRecordEngine: TCDRecordEngine;
    procedure MakeDiscThreadTerminate(Sender: TObject);
    procedure PrepareDiscThreadTerminate(Sender: TObject);
  public
    constructor Create;
    destructor Destroy; override;
    procedure BurnDisc;
    procedure MakeDiscImage(AMakingMethod: TMakeDiscMethod; AOutputFileName: string);
    procedure PrepareDisc; overload;
    procedure PrepareDisc(DirectBootPackageIndex: Integer); overload;
    procedure ResetDisc;
    property Busy: Boolean read fBusy;
    property BootstrapLogo: TMRFile read fBootstrapLogo;
    property CDRecordEngine: TCDRecordEngine read fCDRecordEngine;
    property Directories: TSelfbootInducerDirectories read fDirectories;
    property MakingMethod: TMakeDiscMethod read fMakingMethod;
    property MenuMode: TMenuMode read fMenuMode write fMenuMode;
    property Packages: TPackagesList read fPackages;
    property Options: TSelfbootInducerOptions read fOptions;

    property OnMakeDiscStart: TNotifyEvent
      read fMakeDiscStart write fMakeDiscStart;
    property OnMakeDiscStatus: TMakeDiscStatusEvent
      read fMakeStatus write fMakeStatus;
    property OnMakeDiscEnd: TMakeDiscEndEvent
      read fMakeDiscEnd write fMakeDiscEnd;

    property OnPrepareDiscStart: TNotifyEvent
      read fPrepareDiscStart write fPrepareDiscStart;
    property OnPrepareDiscItemProceed: TPrepareDiscItemProceedEvent
      read fPrepareDiscItemProceed write fPrepareDiscItemProceed;
    property OnPrepareDiscEnd: TNotifyEvent
      read fPrepareDiscEnd write fPrepareDiscEnd;

    property OnResetDiscEnd: TNotifyEvent
      read fResetDiscEnd write fResetDiscEnd;
  end;

function PackageKindToStr(PackageKind: TPackageKind): string;
function StrToPackageKind(Str: string): TPackageKind;

implementation

uses
  System.IOUtils, Forms, Zip, PngImage, SysTools, WorkDir;

const
  SDIR_ENGINE                 = 'engine';
  SDIR_PACKAGES 		          = 'packages';
  SDIR_INDUCER_LEGACY_ROOT    = 'Inducer';
  SDIR_INDUCER_DISC_ROOT 	    = 'cd_root';

  SBASE_INDUCER               = 'inducer.sbi';
  SBASE_INDUCER_PACKAGE_NAME  = 'Inducer Engine';

  SBASE_INDUCER_XML_SIGNATURE = '<?xml version=''1.0'' encoding=''UTF-8''?>';

  SBIN_MKISOFS                = 'mkisofs.exe';
  SBIN_CDI4DC                 = 'cdi4dc.exe';
  SBIN_MDS4DC                 = 'mds4dc.exe';
  SBIN_CDI2NERO               = 'cdi2nero.exe';
  SBIN_SCRAMBLE               = 'scramble.exe';
  SBIN_CDRECORD               = 'cdrecord.exe';

  SFILE_CDI4NERO              = 'temp4nrg.cdi';
  SFILE_DUMMY                 = '0.0';
  SFILE_DATA                  = 'data.iso';

// PackageKindToStr
function PackageKindToStr(PackageKind: TPackageKind): string;
begin
  case PackageKind of
    pkUndef:
      Result := '';
    pkApp:
      Result := 'App';
    pkEmu:
      Result := 'Emu';
    pkDemo:
      Result := 'Demo';
    pkGame:
      Result := 'Game';
  end;
end;

// StrToPackageKind
function StrToPackageKind(Str: string): TPackageKind;
begin
  Str := StringReplace(UpperCase(Str), '\', '', [rfReplaceAll]);
  if Str = 'APPS' then
    Result := pkApp
  else if Str = 'EMUS' then
    Result := pkEmu
  else if Str = 'DEMOS' then
    Result := pkDemo
  else if Str = 'GAMES' then
    Result := pkGame
  else
    Result := pkUndef;
end;

// KillThread
procedure KillThread(Thread: TThread);
begin
  if Assigned(Thread) then
  begin
    Thread.Terminate;
    Thread.WaitFor;
    Application.ProcessMessages;
  end;
  Thread.Free; // destroy the stopped thread
end;

{ TSelfbootInducerEngine }

constructor TSelfbootInducerEngine.Create;
begin
  MenuMode := mmMultiMenu;
  fMakingMethod := mdmIdle;
  fPackages := TPackagesList.Create(Self);
  fDirectories := TSelfbootInducerDirectories.Create(Self);
  fBootstrapLogo := TMRFile.Create;
  fOptions := TSelfbootInducerOptions.Create;
  fBusy := False;
  fCDRecordEngine := TCDRecordEngine.Create(Directories.Engine + SBIN_CDRECORD);
end;

destructor TSelfbootInducerEngine.Destroy;
begin
  KillThread(fMakeDiscThread);
  KillThread(fPrepareDiscThread);
  fPackages.Free;
  fDirectories.Free;
  fBootstrapLogo.Free;
  fOptions.Free;
  fCDRecordEngine.Free;
  inherited;
end;

procedure TSelfbootInducerEngine.MakeDiscImage(AMakingMethod: TMakeDiscMethod;
  AOutputFileName: string);
begin
  // Checking prerequist
  Directories.CheckRequiredPrograms;

  // Killing current thread if possible
  KillThread(fMakeDiscThread);

  // Init the controller...
  fBusy := True;
  fMakingMethod := AMakingMethod;
  fMakeDiscOutputFileName := AOutputFileName;

  // Running new thread...
  fMakeDiscThread := TMakeDiscThread.Create(Self);
  with fMakeDiscThread do
  begin
    OnTerminate := MakeDiscThreadTerminate;
    MakingMethod := AMakingMethod;
    OutputFileName := AOutputFileName;
    Start;
  end;
  if Assigned(OnMakeDiscStart) then
    OnMakeDiscStart(Self);
end;

procedure TSelfbootInducerEngine.BurnDisc;
begin
  MakeDiscImage(mdmCDR, '');
end;

procedure TSelfbootInducerEngine.MakeDiscThreadTerminate(Sender: TObject);
var
  Success: Boolean;

begin
  fBusy := False;

  // Success Flag
  if MakingMethod = mdmCDR then
    // Burning success ?
    Success := (Sender as TMakeDiscThread).fBurningSuccess
  else
    // Image creation success ?
    Success := TFile.Exists(fMakeDiscOutputFileName);

  // Send the event
  if Assigned(OnMakeDiscEnd) then
    OnMakeDiscEnd(Self, Success, fMakeDiscOutputFileName);

  // reinit the flags
  fMakeDiscOutputFileName := '';
  fMakingMethod := mdmIdle;
end;

procedure TSelfbootInducerEngine.PrepareDisc;
begin
  PrepareDisc(-1);
end;

procedure TSelfbootInducerEngine.PrepareDisc(DirectBootPackageIndex: Integer);
begin
  Directories.CheckRequiredPrograms;

  KillThread(fPrepareDiscThread);

  if (MenuMode = mmSbi2Boot) and (DirectBootPackageIndex = -1) then
    raise EDirectBootPackageNotSelected.Create('The boot package wasn''t defined!');

  fBusy := True;
  fPrepareDiscThread := TPrepareDiscThread.Create(Self);
  with fPrepareDiscThread do
  begin
    OnTerminate := PrepareDiscThreadTerminate;
    BootPackageIndex := DirectBootPackageIndex; // used only in mmSbi2Boot mode.
    Start;
  end;
  if Assigned(OnPrepareDiscStart) then
    OnPrepareDiscStart(Self);
end;

procedure TSelfbootInducerEngine.PrepareDiscThreadTerminate(Sender: TObject);
begin
  fBusy := False;
  if Assigned(OnPrepareDiscEnd) then
    OnPrepareDiscEnd(Self);
end;

procedure TSelfbootInducerEngine.ResetDisc;
begin
  // Cleaning the DiscRoot folder
  DeleteDirectory(Directories.DiscRoot, False);
  if Assigned(OnResetDiscEnd) then
    OnResetDiscEnd(Self);
end;

{ TSBIPackagesList }

function TPackagesList.Add(FileName: TFileName): Integer;
var
  PackageListItem: TPackageListItem;
  NewItem: Boolean;

begin
  Result := IndexOf(FileName);
  NewItem := Result = -1;

  if NewItem then
  begin
    PackageListItem := TPackageListItem.Create(FileName);
    Result := fList.Add(PackageListItem);
  end else begin
    PackageListItem := Items[Result];
  end;

  // The package found is now visible on the UI
  PackageListItem.fAvailable := True;

  // Send the event...
  if Assigned(OnPackageScanItemFound) then
    OnPackageScanItemFound(Self, PackageListItem, Result, NewItem);
end;

procedure TPackagesList.Clear;
var
  i: Integer;

begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  fList.Clear;
end;

constructor TPackagesList.Create(AOwner: TSelfbootInducerEngine);
begin
  fList := TList.Create;
  fOwner := AOwner;
  // Default packages (SBI) directory is '.\packages'
  Directory := GetApplicationDirectory + SDIR_PACKAGES;
  if not TDirectory.Exists(Directory) then
    ForceDirectories(Directory);
end;

destructor TPackagesList.Destroy;
begin
  KillThread(fPackagesListScanner);
  Clear;
  fList.Free;
  inherited;
end;

function TPackagesList.GetCount: Integer;
begin
  Result := fList.Count;
end;

function TPackagesList.GetItem(Index: Integer): TPackageListItem;
begin
  Result := TPackageListItem(fList[Index]);
end;

function TPackagesList.IndexOf(FileName: TFileName): Integer;
var
  i: Integer;

begin
  Result := -1;
  for i := 0 to Count - 1 do
    if Items[i].FileName = FileName then
    begin
      Result := i;
      Break;
    end;
end;

procedure TPackagesList.PackagesListScannerTerminate(Sender: TObject);
begin
  // End event
  if Assigned(OnPackageScanEnd) then
    OnPackageScanEnd(Self);
end;

procedure TPackagesList.PerformScan;
begin
  KillThread(fpackagesListScanner);
  fPackagesListScanner := TPackagesListScanner.Create(Self);
  with fPackagesListScanner do
  begin
    OnTerminate := PackagesListScannerTerminate;
    Start;
  end;
end;

procedure TPackagesList.Refresh;
begin
  if Assigned(OnPackageScanStart) then
    OnPackageScanStart(Self, psmRefresh);
  PerformScan;
end;

procedure TPackagesList.Retrieve;
begin
  if Assigned(OnPackageScanStart) then
    OnPackageScanStart(Self, psmRetrieve);
  Clear; // Clean first
  PerformScan; // Reload the list
end;

procedure TPackagesList.SetDirectory(const Value: TFileName);
begin
  fDirectory := IncludeTrailingPathDelimiter(Value);
end;

{ TPackageListItem }

constructor TPackageListItem.Create(AFileName: TFileName);
begin
  Create;
  fFileName := AFileName;
  ReadPackageProperties;
end;

destructor TPackageListItem.Destroy;
begin
  Screenshot.Free;
  inherited;
end;

constructor TPackageListItem.Create;
begin
  fSelected := True;
  fFileName := '';
  fName := '';
  fKind := pkUndef;
  fComments := '';
  fDescription := '';
  fAvailable := False;
  fScreenshot := TPicture.Create;
end;

procedure TPackageListItem.ReadPackageProperties;
const
  DXL_SIGN = '.DXL';
  DXL_TITLE_SIGN = 'TITLE';
  DXL_DESC_SIGN = 'DESCRIPTION';
  DXL_SCREEN_SIGN = 'SCREENSHOT';
  DXL_BINARY_SIGN = 'TARGET';

var
  PackageTempPath, PackageTempDXLName, TempFileName: string;
  Package: TZipFile;
  Found: Boolean;
  i: Integer;
  SL: TStringList;

  function __GetNodeValue(Source, TagName: string): string;
  var
    j: Integer;
    Done: Boolean;
    C: string;

  begin
    Result := '';
    j := Pos(UpperCase(TagName) + '="', UpperCase(Source));
    if j > 0 then
    begin
      Done := False;
      Inc(j, Length(TagName) + 2);
      while (not Done) and (j < Length(Source)) do
      begin
        C := Copy(Source, j, 1);
        Result := Result + C;
        Done := C = '"';
        Inc(j);
      end;
      Result := Copy(Result, 1, Length(Result) - 1);
    end;
  end; // __GetNodeValue

  procedure __ExtractScreenshot(DXLScreenshotEntry: TFileName);
  var
    k: Integer;
    Done: Boolean;
    Picture: TPicture;
    ScreenshotFileName: TFileName;

  begin
    Picture := TPicture.Create;
    try
      // Searching the Screenshot file index in the zip file (SBI package)
      DXLScreenshotEntry := StringReplace(UpperCase(DXLScreenshotEntry), '/CD/', 'INDUCER/', [rfReplaceAll, rfIgnoreCase]);
      k := 0; Done := False;
      while (not Done) and (k < Package.FileCount) do
      begin
        Done := UpperCase(Package.FileName[k]) = DXLScreenshotEntry;
        Inc(k);
      end; if Done then Dec(k) else k := -1;

      // if the file found, extract it then read it...
      if k <> -1 then
      begin
        // Extracting...
        ScreenshotFileName := PackageTempPath + ExtractFileName(StringReplace(Package.FileName[k], '/', '\', [rfReplaceAll]));
        Package.Extract(k, PackageTempPath, False);
        // Reading it...
        Picture.LoadFromFile(ScreenshotFileName);
        fScreenshot.Assign(Picture);
      end;
    finally
      Picture.Free;
    end;
  end; // __ExtractScreenshot

  function __GetZipComment(PackageFileName: TFileName): string;
  const
    ZIP_COMMENT_MAX_SIZE = 8192;

  var
    FS: TFileStream;
    Buffer: array[0..ZIP_COMMENT_MAX_SIZE - 1] of AnsiChar;

  begin
    Result := '';
    FS := TFileStream.Create(PackageFileName, fmOpenRead);
    try
      FS.Seek(-ZIP_COMMENT_MAX_SIZE, soFromEnd);
      FS.Read(Buffer, ZIP_COMMENT_MAX_SIZE);
      Result := string(Buffer);
    finally
      FS.Free;
    end;
  end; // __GetZipComment

begin
  // Reading the comment (see below...)
  fComments := __GetZipComment(FileName);

  // Reading the SBI package...
  Package := TZipFile.Create;
  try
    Package.Open(FileName, zmRead);

    // Retrieve the comment... (The property "Comment" DOESN'T WORK!)
    // Doesn't work because WideString are used instead of AnsiString...
    //fComments := AnsiString(Package.Comment);
    if Length(Package.Comment) = 0 then
      fComments := '';
    fName := '(' + TPath.GetFileNameWithoutExtension(FileName) + ')';

    // Find the DXL file of the package...
    Found := False;
    i := 0;
    while (i < Package.FileCount) and (not Found) do
    begin
      TempFileName := Package.FileName[i];
      Found := UpperCase(ExtractFileExt(TempFileName)) = DXL_SIGN;
      Inc(i);
    end;

    // We have found the DXL file, so extract and read it...
    if Found then
    begin
      // But before, getting the package kind
      TempFileName := StringReplace(StringReplace(TempFileName, '/', '\', [rfReplaceAll]), 'Inducer\', '', [rfIgnoreCase]);
      fKind := StrToPackageKind(ExtractFilePath(TempFileName));

      // Storing the DXL filename to delete when generating Sbi2Boot...
      fDxlPackageFileName := ExtractFileName(TempFileName);

      // Extracting...
      Dec(i);
      PackageTempPath := IncludeTrailingPathDelimiter(GetWorkingTempDirectory + ExtractRadicalFileName(FileName));
      PackageTempDXLName := PackageTempPath + fDxlPackageFileName;
      ForceDirectories(PackageTempPath);
      Package.Extract(i, PackageTempPath, False);

      // Reading the DXL...
      SL := TStringList.Create;
      try
        SL.LoadFromFile(PackageTempDXLName);
        // Saving the DXL MetaData...
        fMetaData := SL.Text;
        if Copy(fMetaData, Length(fMetaData) - 1, 2) = sLineBreak then
          fMetaData := Copy(fMetaData, 1, Length(fMetaData) - 2);
        // Reading the Title
        fName := __GetNodeValue(SL.Text, DXL_TITLE_SIGN);
        if fName = '' then
          fName := '(' + fDxlPackageFileName + ')';
        // Reading the Description
        fDescription := StringReplace(__GetNodeValue(SL.Text, DXL_DESC_SIGN), '#', sLineBreak, [rfReplaceAll]);
        // Reading the Screenshot path...
        TempFileName := __GetNodeValue(SL.Text, DXL_SCREEN_SIGN);
        if (TempFileName <> '') then
          __ExtractScreenshot(TempFileName); // Extracting Screenshot...
        // Reading the main Dreamcast Binary...
        TempFileName := __GetNodeValue(SL.Text, DXL_BINARY_SIGN);
        fBinaryFileName := ExtractFileName(StringReplace(TempFileName, '/', '\', [rfReplaceAll]));
      finally
        SL.Free;
      end;
    end;

    Package.Close;
  finally
    Package.Free;
  end;
end;

{ TSelfbootInducerDirectories }

procedure TSelfbootInducerDirectories.CheckRequiredPrograms;
const
  REQUIRED_BINARIES: array[0..6] of string = (
    SBASE_INDUCER, SBIN_MKISOFS, SBIN_CDI4DC, SBIN_MDS4DC,
    SBIN_CDI2NERO, SBIN_SCRAMBLE, SBIN_CDRECORD
  );

var
  i: Integer;

begin
  for i := Low(REQUIRED_BINARIES) to High(REQUIRED_BINARIES) do
    if not TFile.Exists(Engine + REQUIRED_BINARIES[i]) then
      raise ERequiredComponentNotFound.CreateFmt('A required component ' +
        'was not found: "%s" !', [REQUIRED_BINARIES[i]]);
end;

constructor TSelfbootInducerDirectories.Create(AOwner: TSelfbootInducerEngine);
begin
  fOwner := AOwner;
  fEngine := IncludeTrailingPathDelimiter(GetApplicationDirectory + SDIR_ENGINE);
  fDiscRoot := IncludeTrailingPathDelimiter(GetApplicationDirectory + SDIR_INDUCER_DISC_ROOT);
  if not TDirectory.Exists(DiscRoot) then
    ForceDirectories(DiscRoot);
  Temporary := GetWorkingTempDirectory;
end;

function TSelfbootInducerDirectories.GetPackagesDirectory: TFileName;
begin
  Result := Owner.Packages.Directory;
end;

procedure TSelfbootInducerDirectories.SetPackagesDirectory(
  const Value: TFileName);
begin
  Owner.Packages.Directory := Value;
end;

procedure TSelfbootInducerDirectories.SetWorkingDirectory(
  const Value: TFileName);
begin
  fWorkingDirectory := IncludeTrailingPathDelimiter(Value);
end;

{ TPrepareDiscThread }

procedure TPrepareDiscThread.CleanDirectoryOfDxl(Kind: TPackageKind);
var
  DxlDir: TFileName;
  SR: TSearchRec;

begin
  DxlDir := Owner.Directories.DiscRoot + PackageKindToStr(Kind) + 's\';
  if FindFirst(DxlDir + '*.dxl', faAnyFile, SR) = 0 then
  begin
    repeat
      if (SR.Attr and faDirectory) = 0 then
        DeleteFile(DxlDir + SR.Name);
    until (FindNext(SR) <> 0);
    FindClose(SR); // Must free up resources used by these successful finds
  end;
end;

constructor TPrepareDiscThread.Create(AOwner: TSelfbootInducerEngine);
begin
  inherited Create(True);
  fOwner := AOwner;
  BootPackageIndex := -1;
  fSelectedPackages := TPrepareDiscWorkingPackages.Create(Self);
end;

destructor TPrepareDiscThread.Destroy;
begin
  fSelectedPackages.Free;
  inherited;
end;

procedure TPrepareDiscThread.DoHandleException;
begin
  // Cancel the mouse capture
  if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  // Now actually show the exception
  if FException is Exception then
    Application.ShowException(FException)
  else
    SysUtils.ShowException(FException, nil);
end;

procedure TPrepareDiscThread.Execute;
begin
  fException := nil;
  try
    if Owner.MenuMode = mmSbi2Boot then
      ExecuteSbi2Boot
    else
      ExecuteMultiFilesBoot;
  except
    HandleException;
  end;
end;

procedure TPrepareDiscThread.ExecuteMultiFilesBoot;
var
  i: Integer;
  DxlMap: array[1..4] of TPrepareDiscDxlMap;
  CurrentPackage: TPackageListItem;

begin
  with Owner do
  begin
    // Init Dxl Map (Inducer Compilation Content)
    // Each position represent one kind (1=Apps, 2=Demos, 3=Emus, 4=Games)
    for i := Low(DxlMap) to High(DxlMap) do
      with DxlMap[i] do
      begin
        Count := 0;
        MetaData := '';
        MetaDataSeparator := '';
        Kind := TPackageKind(i);
      end;

    // Getting selected packages, and sorting them
    i := 0;
    while (not Terminated) and (i < Packages.Count) do
    begin
      if Packages[i].Available and Packages[i].Selected then
        SelectedPackages.Add(Packages[i].Name, i); // the file exists and is selected
      Inc(i);
    end;
    SelectedPackages.Sort;

    // Extracting the Base Package (Inducer.sbi)
    NotifyItemProceed(SBASE_INDUCER_PACKAGE_NAME, SBASE_INDUCER);
    TZipFile.ExtractZipFile(Directories.Engine + SBASE_INDUCER, Directories.DiscRoot);

    // Extracting each selected package...
    // (Using the selected packages list built below, and it's sorted!)
    for i := 0 to SelectedPackages.Count - 1 do
    begin
      CurrentPackage := SelectedPackages[i];

      // Notify the user: what package was extracted
      NotifyItemProceed(CurrentPackage.Name, CurrentPackage.FileName);

      // Extracting the zip package
      TZipFile.ExtractZipFile(CurrentPackage.FileName, Directories.DiscRoot);

      // MultiMenu: Store each item by Kind
      with DxlMap[Integer(CurrentPackage.Kind)] do
      begin
        MetaData := MetaData + MetaDataSeparator + CurrentPackage.MetaData;
        MetaDataSeparator := sLineBreak;
        Inc(Count);
      end;
    end;

    // Moving every file from the 'cd_root\Inducer' to 'cd_root'...
    // This will remove the old 'Inducer\' directory included in SBI files.
    MoveDirectory(Directories.DiscRoot + SDIR_INDUCER_LEGACY_ROOT, Directories.DiscRoot);

    // Generate proper DXL files
    case Owner.MenuMode of
      mmMultiMenu:
        MakeDxlMultiMenu(DxlMap);
      mmSingleMenu:
        MakeDxlSingleMenu(DxlMap);
    end;

  end; // Owner
end;

function TPrepareDiscThread.MakeDxlMultiMenuForKind(Kind: TPackageKind;
  KindCount: Integer; DxlEntries: string): Boolean;
var
  Buffer: TStringList;
  DxlName: TFileName;

begin
  Result := KindCount > 0;
  if Result then
  begin
    // Deleting every DXL items from the DiscRoot directory, we don't need them
    // (We have already them when we discovered the 'packages' directory) ...
    CleanDirectoryOfDxl(Kind);

    // ... Then making the appropriate DXL file!
    DxlName := Owner.Directories.DiscRoot + 'Themes\' + PackageKindToStr(Kind) + 's.dxl';
    Buffer := TStringList.Create;
    try
      Buffer.Add(SBASE_INDUCER_XML_SIGNATURE);
      Buffer.Add('<LIST ENTRIES="' + IntToStr(KindCount + 1) + '" THEME="/cd/Themes/' +
        PackageKindToStr(Kind) + 's.dxt" MODE="RGB565">');
      Buffer.Add(DxlEntries);
      Buffer.Add('  <LINK' + sLineBreak +
                 '    TITLE="Exit to Menu"' + sLineBreak +
                 '    DESCRIPTION="Exit to the main menu"' + sLineBreak +
                 '    SCREENSHOT="/cd/Themes/Exit.png"' + sLineBreak +
                 '    TARGET="/cd/Mainmenu.dxl"' + sLineBreak +
                 '    PREROLL="/cd/Themes/Loading.dxi"/>');
      Buffer.Add('</LIST>');
      Buffer.SaveToFile(DxlName);
    finally
      Buffer.Free;
    end;
  end;
end;

procedure TPrepareDiscThread.MakeDxlMultiMenu(DxlMap: array of TPrepareDiscDxlMap);
var
  i, Count: Integer;
  Buffer: TStringList;
  Kind, KindDescription: string;

begin
  // Making MainMenu.dxl and <Kind.dxl> at the same time
  Buffer := TStringList.Create;
  try

    // Making Dxl files for each kind!
    Count := 0;
    for i := Low(DxlMap) to High(DxlMap) do
      if DxlMap[i].Count > 0 then
      begin
        // Making "Themes\<Kind>.dxl"
        MakeDxlMultiMenuForKind(DxlMap[i].Kind, DxlMap[i].Count, DxlMap[i].MetaData);

        // Getting Kind Description
        case DxlMap[i].Kind of
          pkApp:  KindDescription := 'Applications';
          pkDemo: KindDescription := 'Demos';
          pkEmu:  KindDescription := 'Emulators';
          pkGame: KindDescription := 'Games';
          else    KindDescription := '';
        end;

        // Adding in Mainmenu.dxl...
        Kind := PackageKindToStr(DxlMap[i].Kind) + 's'; // the 's' is for plural..
        Buffer.Add('  <LINK ' + sLineBreak +
                   '    TITLE="' + Kind + '"' + sLineBreak +
                   '    DESCRIPTION="' + KindDescription + '"' + sLineBreak +
                   '    SCREENSHOT="/cd/Themes/' + Kind + '.png"' + sLineBreak +
                   '    TARGET="/cd/Themes/' + Kind + '.dxl"' + sLineBreak +
                   '    PREROLL="/cd/Themes/Loading.dxi"/>');
        Inc(Count);
      end;

    Buffer.Insert(0, SBASE_INDUCER_XML_SIGNATURE);
    Buffer.Insert(1, '<LIST ENTRIES="' + IntToStr(Count) + '" THEME="/cd/Themes/Mainmenu.dxt" MODE="RGB565">');
    Buffer.Add('</LIST>');

    Buffer.SaveToFile(Owner.Directories.DiscRoot + 'Mainmenu.dxl');
  finally
    Buffer.Free;
  end;
end;

procedure TPrepareDiscThread.MakeDxlSingleMenu(DxlMap: array of TPrepareDiscDxlMap);
var
  i: Integer;
  Buffer: TStringList;

begin
  // Cleaning the Apps, Demos, Emus, Games folders
  for i := Low(DxlMap) to High(DxlMap) do
    if DxlMap[i].Count > 0 then
      CleanDirectoryOfDxl(DxlMap[i].Kind);

  // Making the Mainmenu.dxl
  Buffer := TStringList.Create;
  try
    Buffer.Add(SBASE_INDUCER_XML_SIGNATURE);

    // Writing each DXL entry...
    for i := 0 to SelectedPackages.Count - 1 do
      Buffer.Add(SelectedPackages[i].MetaData);

    Buffer.Insert(1, '<LIST ENTRIES="' + IntToStr(SelectedPackages.Count) +
      '" THEME="/cd/Themes/Mainmenu.dxt" MODE="RGB565">');
    Buffer.Add('</LIST>');

    Buffer.SaveToFile(Owner.Directories.DiscRoot + 'Mainmenu.dxl');
  finally
    Buffer.Free;
  end;
end;

procedure TPrepareDiscThread.ExecuteSbi2Boot;
const
  BOOT_TEMP_EXT = '_tmp';

var
  BootPackage: TPackageListItem;
  BootFileName,
  SourceFileName,
  TempFileName,
  KindFilePath: TFileName;

  procedure __ExtractBootstrap;
  var
    Package: TZipFile;
    Found: Boolean;
    i: Integer;
    CurrentFileName: TFileName;

  begin
    // Reading the SBI package...
    Package := TZipFile.Create;
    try
      Package.Open(Owner.Directories.Engine + SBASE_INDUCER, zmRead);

      // Find the DXL file of the package...
      Found := False;
      i := 0;
      while (i < Package.FileCount) and (not Found) do
      begin
        CurrentFileName := Package.FileName[i];
        Found := InString('/' + SFILE_DC_BOOTSTRAP, CurrentFileName);
        Inc(i);
      end;

      if Found then
      begin
        Dec(i);
        Package.Extract(i, Owner.Directories.DiscRoot, False);
      end;

      Package.Close;
    finally
      Package.Free;
    end;
  end; // __ExtractBootstrap

begin
  with Owner do
  begin
    // This package will be converted on a selfboot disc!
    BootPackage := Packages[BootPackageIndex];

    // Cleaning the DiscRoot folder
    DeleteDirectory(Directories.DiscRoot, False);

    // Unzipping package
    NotifyItemProceed(BootPackage.Name, BootPackage.FileName);
    TZipFile.ExtractZipFile(BootPackage.FileName, Directories.DiscRoot);

    // Moving every file from the 'cd_root\Inducer' to 'cd_root'...
    // This will remove the old 'Inducer\' directory included in SBI files.
    MoveDirectory(Directories.DiscRoot + SDIR_INDUCER_LEGACY_ROOT, Directories.DiscRoot);

    // Moving the boot filename and cleaning the 'Kind' directory (removing the .DXL file)
    BootFileName := Directories.DiscRoot + SFILE_DC_BOOT_BINARY;
    KindFilePath := Directories.DiscRoot + PackageKindToStr(BootPackage.Kind) + 's\';
    SourceFileName := KindFilePath + BootPackage.BinaryFileName;
    TempFileName := BootFileName + BOOT_TEMP_EXT;
    KillFile(TempFileName);
    TFile.Move(SourceFileName, TempFileName);
    KillFile(KindFilePath + BootPackage.fDxlPackageFileName);
    RemoveDir(KindFilePath); // remove the Kind inducer dir if possible.

    // Scrambling the 1ST_READ.BIN...
    RunAndWait(Directories.Engine + 'scramble "' + TempFileName + '" "' + BootFileName + '"');
    KillFile(TempFileName);

    // Extracting the IP.BIN from the "Inducer.sbi" package.
    __ExtractBootstrap;
  end;
end;

procedure TPrepareDiscThread.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not (FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

procedure TPrepareDiscThread.NotifyItemProceed(PackageName: string;
  FileName: TFileName);
begin
  fCurrentPackageName := PackageName;
  fCurrentFileName := ExtractFileName(FileName);
  Synchronize(SyncNotifyItemProceed);
end;

procedure TPrepareDiscThread.SyncNotifyItemProceed;
begin
  // don't call this directly! use NotifyItemProceed instead
  with Owner do
    if Assigned(OnPrepareDiscItemProceed) then
      OnPrepareDiscItemProceed(Owner, fCurrentPackageName, fCurrentFileName);
end;

{ TPrepareDiscWorkingPackages }

type
  (*
    Used in the internals of TPrepareDiscWorkingPackages, to get the packages
    (sbi) selected by the user in the UI, but in the sorted way!
    Check the TPrepareDiscWorkingPackages methods.
  *)
  TPrepareDiscSelectedPackageItem = class(TObject)
  private
    fPackageIndex: Integer;
    fPackageName: string;
  public
    property PackageName: string read fPackageName;
    property PackageIndex: Integer read fPackageIndex;
  end;

procedure TPrepareDiscWorkingPackages.Add(PackageName: string;
  PackageIndex: Integer);
var
  Item: TPrepareDiscSelectedPackageItem;

begin
  Item := TPrepareDiscSelectedPackageItem.Create;
  Item.fPackageName := PackageName;
  Item.fPackageIndex := PackageIndex;
  fSelectedPackagesList.Add(Item);
end;

procedure TPrepareDiscWorkingPackages.Clear;
var
  i: Integer;

begin
  for i := 0 to Count - 1 do
    TPrepareDiscSelectedPackageItem(fSelectedPackagesList[i]).Free;
  fSelectedPackagesList.Clear;
end;

constructor TPrepareDiscWorkingPackages.Create(AOwner: TPrepareDiscThread);
begin
  Assert(Assigned(AOwner), 'AOwner must be initialized!');
  fSelectedPackagesList := TList.Create;
  fOwner := AOwner;
end;

destructor TPrepareDiscWorkingPackages.Destroy;
begin
  Clear;
  fSelectedPackagesList.Free;
  inherited;
end;

function TPrepareDiscWorkingPackages.GetCount: Integer;
begin
  Result := fSelectedPackagesList.Count;
end;

function TPrepareDiscWorkingPackages.GetItem(Index: Integer): TPackageListItem;
var
  Item: TPrepareDiscSelectedPackageItem;

begin
  Item := TPrepareDiscSelectedPackageItem(fSelectedPackagesList[Index]);
  Result := OwnerEngine.Packages[Item.PackageIndex];
end;

function TPrepareDiscWorkingPackages.GetOwnerEngine: TSelfbootInducerEngine;
begin
  Result := Owner.Owner;
end;

procedure TPrepareDiscWorkingPackages.Sort;

  function __SortCriteria(Item1, Item2: Pointer): Integer;
  begin
    Result := CompareText(TPrepareDiscSelectedPackageItem(Item1).PackageName,
      TPrepareDiscSelectedPackageItem(Item2).PackageName);
  end; // __SortCriteria

begin
  fSelectedPackagesList.Sort(@__SortCriteria);
end;


{ TSelfbootInducerOptions }

constructor TSelfbootInducerOptions.Create;
begin
  AutoDummy := True;
  Joliet := True;
  RockRidge := True;
  LongFileNames := True;
  IpLogo := False;
  VolumeLabel := '';
  DiscImageType := ditDAO;
  DiscTrackType := dttAudioData;
end;

{ TMakeDiscThread }

procedure TMakeDiscThread.MakeDummyFile;
const
  BUFFER_BLOCK_SIZE = 16384; // 16KB
  RESERVED_SPACE = 31457280;
  AVAILABLE_SPACE = 734003200; // 80min CD-R are common now... right?

var
  DummyRequestedSize: Int64;
  DummyFile: TFileStream;
  Buffer: array[0..BUFFER_BLOCK_SIZE-1] of AnsiChar;
  i, Count: Integer;

begin
  // Compute dummy file size.
  DummyRequestedSize := AVAILABLE_SPACE - RESERVED_SPACE - GetDirectorySize(Owner.Directories.DiscRoot);
  if DummyRequestedSize > 0 then
  begin
    // Create the dummy file.
    DummyFile := TFileStream.Create(fDummyFileName, fmCreate);
    try
      FillChar(Buffer, SizeOf(Buffer), '!');

      // Writing by blocks
      i := 0;
      Count := DummyRequestedSize div SizeOf(Buffer);
      while (not Terminated) and (i < Count) do
      begin
        DummyFile.Write(Buffer, SizeOf(Buffer));
        Inc(i);
      end;

      // Writing the rest (if needed)
      Count := DummyRequestedSize - SizeOf(Buffer) * Count;
      if Count > 0 then
        DummyFile.Write(Buffer, Count);
    finally
      DummyFile.Free;
    end;
  end; // DummyRequestedSize > 0
end;

constructor TMakeDiscThread.Create(AOwner: TSelfbootInducerEngine);
begin
  inherited Create(True);
  fOwner := AOwner;
  fBurningSuccess := False;
end;

procedure TMakeDiscThread.DoHandleException;
begin
  // Cancel the mouse capture
  if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  // Now actually show the exception
  if FException is Exception then
    Application.ShowException(FException)
  else
    SysUtils.ShowException(FException, nil);
end;

procedure TMakeDiscThread.Execute;
begin
  fException := nil;
  try
    // Prepare the process...
    fDummyFileName := Owner.Directories.DiscRoot + SFILE_DUMMY;
    KillFile(fDummyFileName);

    fDataIsoFile := Owner.Directories.Temporary + SFILE_DATA;

    // Making the job
    MakeImage;

    // Clean temporary files...
    KillFile(fDataIsoFile);
  except
    HandleException;
  end;
end;

procedure TMakeDiscThread.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not (FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

procedure TMakeDiscThread.MakeImage;
var
  SwitchTrackType, SwitchImageType, MsInfo,
  IsoOptions, JolietIsoOptions: string;
  SavedCurrentDirectory, IpFile, TempOutputFile: TFileName;
  MsInfoValue: LongWord;
  CloseSession: Boolean;

begin
  with Owner do
  begin
    // Initializing tools...
    SavedCurrentDirectory := GetCurrentDir;
    SetCurrentDir(Directories.Engine);

    // Step 1: Inserting the logo in the IP.BIN if activated...
    IpFile := Directories.DiscRoot + SFILE_DC_BOOTSTRAP;
    if Options.IpLogo and BootstrapLogo.Loaded then
    begin
      Notify('Inserting logo in the IP.BIN file...');
      BootstrapLogo.SaveToFile(IpFile);
    end;

    // Step 2: Making the dummy file if needed...
    // Only for 700MB! - we'll see if we need to implement more size or not...
    if Options.AutoDummy then
    begin
      Notify('Creating dummy file...');
      MakeDummyFile;
    end;

    // Step 3: Making image with mkisofs

    // Prepare parameters: Disc Track Type (Audio/Data or Data/Data)
    SwitchTrackType := '';
    MsInfo := '';
    case Options.DiscTrackType of

      // Audio/Data
      dttAudioData:
        begin
          // 11702 is the default MsInfo value (used at least with cdi4dc, mds4dc)
          MsInfoValue := 11702;

          // CDRecord? OK, burn the fake audio track...
          if MakingMethod = mdmCDR then
          begin
            Notify('Burning the fake audio track...');
            MsInfoValue := CDRecordEngine.BurnAudioTrack; // Get the new Multisession value!
            // if the MsInfo <> 11702 or 11700, an exception is raised in the CDRecordEngine...
          end;

          // MsInfo is needed with Audio/Data structure
          MsInfo := Format('-C 0,%d ', [MsInfoValue]);

          // Command Switch: Only for mds4dc (for cdi4dc, there is no switch)
          if MakingMethod = mdmMDS then
            SwitchTrackType := '-a ';
        end;

      // Data/Data
      dttDataData:
        begin
          SwitchTrackType := '-d '; // for mds4dc
          if MakingMethod <> mdmMDS then
            SwitchTrackType := ' -d'; // for cdi4dc
        end;

    end; // DiscTrackType

    // Iso Options...
    IsoOptions := '';
    if not Options.BootstrapInFileSystem then
      IsoOptions := '-hide ' + SFILE_DC_BOOTSTRAP + ' ';
    if Options.Joliet then
      IsoOptions := IsoOptions + '-J ';
    if Options.RockRidge then
      IsoOptions := IsoOptions + '-R ';
    if Options.LongFileNames then
      IsoOptions := IsoOptions + '-l ';

    // Joliet Iso Options...
    JolietIsoOptions := '';
    if Options.Joliet then
    begin
      JolietIsoOptions := '-hide-joliet 0.0 ';
      if not Options.BootstrapInFileSystem then
        JolietIsoOptions := JolietIsoOptions + '-hide-joliet '
          + SFILE_DC_BOOTSTRAP + ' ';
    end;

    // Run mkisofs
    Notify('Making data track...');
    RunBinary(
      SBIN_MKISOFS,
      MsInfo +
      '-V "' + Options.VolumeLabel + '" ' +
      '-G "' + IpFile + '" ' +
      '-no-cache-inodes ' +
      '-hide 0.0 ' +
      IsoOptions +
      JolietIsoOptions +
      '-o "' + fDataIsoFile + '" ' +
      '"' + ExcludeTrailingPathDelimiter(Directories.DiscRoot) + '" '
    );

    // Step 4: Making the burnable image...
    case MakingMethod of
      // DiscJuggler
      mdmCDI:
        begin
          Notify('Making DiscJuggler image...');
          RunBinary(
            SBIN_CDI4DC,
            '"' + fDataIsoFile + '" ' +
            '"' + OutputFileName + '"' +
            SwitchTrackType
          );
        end;

      // Nero Burning Rom
      mdmNRG:
        begin
          TempOutputFile := Directories.Temporary + SFILE_CDI4NERO;
          KillFile(TempOutputFile);

          // Run CDI4DC first
          Notify('Making temporary DiscJuggler image...');
          RunBinary(
            SBIN_CDI4DC,
            '"' + fDataIsoFile + '" ' +
            '"' + TempOutputFile + '"' +
            SwitchTrackType
          );
          KillFile(fDataIsoFile);

          SwitchImageType := '';
          if Options.DiscImageType = ditTAO then
            SwitchImageType := ' -t';

          // Run CDI2NERO in second.
          Notify('Making Nero Burning Rom image...');
          RunBinary(
            SBIN_CDI2NERO,
            '"' + TempOutputFile + '" ' +
            '"' + OutputFileName + '"' +
            SwitchImageType
          );
          KillFile(TempOutputFile);
        end;

      // Alcohol 120%
      mdmMDS:
        begin
          Notify('Making Alcohol 120% image...');
          // Run MDS4DC
          RunBinary(
            SBIN_MDS4DC,
            SwitchTrackType +
            '"' + OutputFileName + '" ' +
            '"' + fDataIsoFile + '"'
          );
        end;

      // CDRecord: Burning the Data Track!
      mdmCDR:
        try
          // Audio/Data AND Data/Data
          // if the first audio track has been burned, then close the session
          // else, keep the session open to burn the bootable data track
          CloseSession := Options.DiscTrackType = dttAudioData;
          Notify('Burning the data track...');
          CDRecordEngine.BurnDataTrack(fDataIsoFile, CloseSession);

          // Data/Data: Make the Header Data Session...
          if not CloseSession then
          begin
            Notify('Burning the bootable data track...');
            TempOutputFile := CDRecordEngine.GenerateBootableDataTrack(fDataIsoFile);
            CDRecordEngine.BurnDataTrack(TempOutputFile, True);
          end;

          fBurningSuccess := True;
        except
          on E:Exception do
          begin
            fBurningSuccess := False;
            raise;
          end;
        end;
    end;

    // Finalizing
    SetCurrentDir(SavedCurrentDirectory);
  end; // Owner
end;

procedure TMakeDiscThread.Notify(StatusMessage: string);
begin
  fStatusMessage := StatusMessage;
  Synchronize(SyncOnMakeStatus);
end;

procedure TMakeDiscThread.RunBinary(BinaryName: TFileName; Parameters: string);
begin
  if not Terminated then
    RunAndWait(ChangeFileExt(BinaryName, '') + ' ' + Parameters);
end;

procedure TMakeDiscThread.SyncOnMakeStatus;
begin
  if Assigned(Owner.OnMakeDiscStatus) then
    Owner.OnMakeDiscStatus(Owner, fStatusMessage);
end;

{ TPackagesListScanner }

procedure TPackagesListScanner.AddFile(const FileName: TFileName);
begin
  Synchronize(
    procedure
    begin
      Owner.Add(FileName)
    end
  );
end;

constructor TPackagesListScanner.Create(AOwner: TPackagesList);
begin
  inherited Create(True);
  fOwner := AOwner;
end;

procedure TPackagesListScanner.Execute;
var
  SR: TSearchRec;
  Directory: TFileName;

begin
  // Reset every package item visible state
  ResetVisibleState;

  // Scanning for *.sbi and *.sbt
  Directory := Owner.Directory;
  if FindFirst(Directory + '*.sb?', faAnyFile, SR) = 0 then
  begin
    repeat
      if ((SR.Attr and faDirectory) = 0) then
        AddFile(Directory + SR.Name);
    until Terminated or (FindNext(SR) <> 0);
    FindClose(SR); // Must free up resources used by these successful finds
  end;
end;

procedure TPackagesListScanner.ResetVisibleState;
begin
  Synchronize(
    procedure
    var
      i: Integer;
    begin
      with Owner do
        for i := 0 to Count - 1 do
          Items[i].fAvailable := False;
    end
  );
end;

end.
