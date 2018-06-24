(*
  MRTool Core by [big_fury]SiZiOUS <http://sbibuilder.shorturl.com/>
  This source is licensed under the GNU GPL 3.

  Convert a normal picture file into a special format ('.MR') for use in a Sega
  Dreamcast Bootstrap file (aka IP.BIN).

  Image size should be 320x90 or less and colors must be less than 128.
  The output 'MR' file must be less than 8192 bytes to fit in a "normal" IP.BIN.

  Usage:
    To use this class, just call LoadFromFile to load an image (it can be a
    .MR, directly an IP.BIN, or PNG, GIF, BMP, JPG), and for saving, call
    SaveToFile (it can be a .MR, IP.BIN - for patching it directly -, or PNG,
    GIF, BMP or JPG).

    The Render method is used when you want to show the image to the user.
    This method returns the internal Bitmap used everytime when loading a file.

  --- Credits ---

  Initial code by kRYPT_ <krypt@mountaincable.net>
  Portion of code from "pngtomr" by ADK/Napalm <andrewk@napalm-x.com>
  Portion of code from "MR Writer 0.3" by fackue <http://dchelp.dcemulation.com>

  By the way, where are you gentlemens ... ?

  --- History changes ---

  2012-10-21: Version 1.0
    - *** COMPLETE REWRITE OF THE CODE!!! *** (under Delphi XE2)
      This rewrite fixes some problems when converting .MR files to .BMP and
      is more powerful and easier to understand (use of standard classes from
      Delphi instead of old memory management methods).
      It includes a smooth management of pictures too.
    - Complete code cleanup and indentation.

  2005-09-06: Version 0.6
    - Fixed a bitmap size bug in the method Compress.
    - Fixed invalid bitmap & mr files detection
    - Fixed BMP write.
    - Fixed many mini-bugs...
    - Code cleaned

  200?: Version 0.5
    - Lastest public release from kRYPT_

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
unit MRImage;

// Comment this if you want to disable iplogo size checks
{$DEFINE CHECK_IPLOGO_SIZE}

// Debug this module ?
{$IFDEF DEBUG}
  {$DEFINE DEBUG_MRIMAGE_UNIT}
{$ELSE}
  {$UNDEF DEBUG_MRIMAGE_UNIT}
{$ENDIF}

interface

uses
  SysUtils, Classes, Graphics;

const
  CoreVersion = '1.0';

type
  // Generic Exception
  EMRFile                   = class(Exception);
  // MR file is too big to fit in the bootstrap (IP.BIN), (max is 8192 Bytes)
  EMRFileTooBigForBootstrap = class(EMRFile);
  // The width of the MR file is to large (max is 320)
  EMRFileWidthToLarge       = class(EMRFile);
  // The height of the MR file is to large (max is 90)
  EMRFileHeightToLarge      = class(EMRFile);
  // The MR file has to much colors in the palette (max is 128)
  EMRFileTooMuchColors       = class(EMRFile);

  // Header of the MR file (30 Bytes)
  TMRHeader = packed record
    ID                    : array[0..1] of AnsiChar;  // 'M', 'R'
    Size,                                             // MR File size
    CrapUnknowAddress1,                               // ?? Detected in "bleem.mr" ...
    DataOffset,                                       // Start of the MR data
    Width,                                            // Width of the MR image
    Height,                                           // Height of the MR image
    CrapUnknowAddress2,                               // ?? Detected in "bleem.mr" ...
    Colors                : LongWord;                 // Colors
  end;

  // Entry of the palette (4 Bytes)
  TMRColor = packed record
    Blue,
    Green,
    Red,
    Alpha     : Byte; // Alpha isn't used...
  end;

  // Palette (128 items max)
  TMRPalette = packed record
    Colors    : array[0..127] of TMRColor;
    Count     : Integer;
  end;

  // Main class
  TMRFile = class(TObject)
  private
    fSourceBitmap: TBitmap;
    fCompressedData,
    fDecompressedData: TMemoryStream;
    fLoaded: Boolean;
    fPalette: TMRPalette;
    fLoadedFileName: TFileName;
    fFileLoaded: TNotifyEvent;
    procedure BuildPalette;
    procedure Compress;
    procedure Decompress;
    procedure Draw;
    function LoadFromBootstrap(InputStream: TStream): Boolean;
    function LoadFromMR(InputStream: TStream; Header: TMRHeader): Boolean;
    function LoadFromPictureFormat(const FileName: TFileName): Boolean;
    function SaveToBootstrap(FileName: TFileName): Boolean;
    procedure SaveToMR(OutputStream: TStream);
    procedure SaveToPictureFormat(const FileName: TFileName);
  public
    constructor Create;
    destructor Destroy; override;
    // Clear the content of the object...
    procedure Clear;
    // Load from: BMP, GIF, JPEG or PNG; .MR; or directly from an IP.BIN file.
    function LoadFromFile(FileName: TFileName): Boolean;
    // Render the picture on the specified bitmap
    procedure Render(DestinationBitmap: TBitmap);
    // Save to: BMP, GIF, JPEG or PNG; .MR; or patch directly an IP.BIN file.
    procedure SaveToFile(FileName: TFileName);
    // Specify if the file is loaded or not.
    property Loaded: Boolean read fLoaded;
    // Loaded FileName...
    property LoadedFileName: TFileName read fLoadedFileName;
    // Event when loaded with success an image file
    property OnFileLoaded: TNotifyEvent read fFileLoaded write fFileLoaded;
  end;

function ColorToMRColor(Color: TColor): TMRColor;
function MRColorToColor(MRColor: TMRColor): TColor;
function SameMRColor(MRColor1, MRColor2: TMRColor): Boolean;

implementation

uses
  Vcl.Consts, Jpeg, PngImage, JvGif;

const
  MR_HEADER_ID            = 'MR';
  MR_FILE_EXTENSION       = '.MR';

  MR_MAX_FILESIZE         = 8192;
  MR_MAX_WIDTH            = 320;
  MR_MAX_HEIGHT           = 90;

  IP_HEADER_ID            = 'SEGA SEGAKATANA SEGA ENTERPRISES';
  IP_MR_OFFSET            = $3820;

{$IFDEF DEBUG}
var
  DebugLog: TStringList;
{$ENDIF}

function ColorToMRColor(Color: TColor): TMRColor;
begin
  with Result do
  begin
    Red := Color and $FF;
    Green := (Color and $FF00) div $100;
    Blue := (Color and $FF0000) div $10000;
    Alpha := 0;
  end;
end;

function MRColorToColor(MRColor: TMRColor): TColor;
begin
  Result := MRColor.Red + (MRColor.Green * $100) + (MRColor.Blue * $10000);
end;

function SameMRColor(MRColor1, MRColor2: TMRColor): Boolean;
begin
  Result := (MRColor1.Blue = MRColor2.Blue) and
    (MRColor1.Green = MRColor2.Green) and (MRColor1.Red = MRColor2.Red);
end;

{ TMRFile }

procedure TMRFile.BuildPalette;
var
  CurrentMRColor: TMRColor;
  ColorFound: Boolean;
  ColorIndex: Byte;
  x, y: Integer;

begin
  // Initialize...
  fPalette.Count := 0;
  fCompressedData.Seek(0, soFromBeginning);
  fDecompressedData.Clear;

{$IFDEF DEBUG_MRIMAGE_UNIT}
  DebugLog.Clear;
  DebugLog.Add('B;G;R');
{$ENDIF}

  // Build the palette used by the internal Bitmap.
  for y := 0 To fSourceBitmap.Height - 1 do // loop the y coordinates
    for x := 0 To fSourceBitmap.Width - 1 do // loop the x coordinates
    begin
      // Get the pixel
      CurrentMRColor := ColorToMRColor(fSourceBitmap.Canvas.Pixels[x, y]);

      // Searching for the color in the palette
      // if not found, we'll add it to the palette.
      ColorFound := False;
      ColorIndex := Low(fPalette.Colors);
      while (not ColorFound) and (ColorIndex < fPalette.Count) do
      begin
        ColorFound := SameMRColor(fPalette.Colors[ColorIndex], CurrentMRColor);
        Inc(ColorIndex);
      end;
      if not ColorFound then
      begin
        // new index for the new color...
        ColorIndex := fPalette.Count;

        // check if there is enough space in the palette
        if ColorIndex > High(fPalette.Colors) then
          raise EMRFileTooMuchColors.CreateFmt('Too much colors used in this image '
            + '(max is %d)', [High(fPalette.Colors)+1]);

        // Add the new color to the palette...
        fPalette.Colors[ColorIndex] := CurrentMRColor;
        Inc(fPalette.Count);

{$IFDEF DEBUG_MRIMAGE_UNIT}
        DebugLog.Add(
          IntToStr(CurrentMRColor.Blue) + ';' +
          IntToStr(CurrentMRColor.Green) + ';' +
          IntToStr(CurrentMRColor.Red)
        );
{$ENDIF}

      end else begin
        Dec(ColorIndex);
      end;

      // Rebuild decompressed data stream...
      fDecompressedData.Write(ColorIndex, 1);
    end;

{$IFDEF DEBUG_MRIMAGE_UNIT}
    DebugLog.SaveToFile('Palette.log');
{$ENDIF}
end;

procedure TMRFile.Clear;
begin
  fLoaded := False;
  fCompressedData.Clear;
  fDecompressedData.Clear;
  fPalette.Count := 0;
  fLoadedFileName := '';
  fSourceBitmap.Assign(nil);
end;

procedure TMRFile.Compress;
var
  Position, Run: LongWord;
  Buffer1, Buffer2: Byte;

  function _GetByte: Byte;
  begin
    fDecompressedData.Read(Result, 1);
    fDecompressedData.Seek(-1, soFromCurrent);
  end; // _GetByte

  function _GetByteRun: Byte;
  begin
    fDecompressedData.Seek(Run, soFromCurrent);
    Result := _GetByte;
    fDecompressedData.Seek(-Run, soFromCurrent);
  end; // _GetByteRun

begin
  // Prepare streams...
  fCompressedData.Clear;
  fDecompressedData.Seek(0, soFromBeginning);

  // Compress to MR...
  Position := 0;
  while fDecompressedData.Position < fDecompressedData.Size do
  begin
    Run := 1;

    Buffer1 := _GetByte;
    while ((Buffer1 = _GetByteRun) and (Run < $17F) and (Position + Run <= fDecompressedData.Size)) do
      Inc(Run);

    if (Run > $FF) then
    begin
      Buffer2 := $82;
      fCompressedData.Write(Buffer2, 1);
      Buffer2 := $80 or (Run - $100);
      fCompressedData.Write(Buffer2, 1);
    end else if (Run > $7F) then
    begin
      Buffer2 := $81;
      fCompressedData.Write(Buffer2, 1);
      Buffer2 := Run;
      fCompressedData.Write(Buffer2, 1);
    end else if (Run > 1) then
    begin
      Buffer2 := $80 or Run;
      fCompressedData.Write(Buffer2, 1);
    end;

    fCompressedData.Write(Buffer1, 1);

    Inc(Position, Run);
    fDecompressedData.Seek(Position, soFromBeginning);
  end;
  fCompressedData.Seek(0, soFromBeginning);

  // CompressedData contains now the MR data ready to be written to the file.
end;

constructor TMRFile.Create;
begin
  fSourceBitmap := TBitmap.Create;
  fSourceBitmap.PixelFormat := pf24bit;
  fCompressedData := TMemoryStream.Create;
  fDecompressedData := TMemoryStream.Create;
  Clear;
end;

procedure TMRFile.Decompress;
var
  Buffer1, Buffer2, Buffer3: Byte;
  Run: LongWord;
  k: Integer;

begin
  // Prepare streams...
  fCompressedData.Seek(0, soFromBeginning);
  fDecompressedData.Clear;

{$IFDEF DEBUG_MRIMAGE_UNIT}
  DebugLog.Clear;
  DebugLog.Add('Key;Run;ByteWritten');
{$ENDIF}

  // Decompress the MR data...
  while fCompressedData.Position < fCompressedData.Size - 1 do
  begin
    fCompressedData.Read(Buffer1, 1);
    fCompressedData.Read(Buffer2, 1);
    fCompressedData.Seek(-1, soFromCurrent);

    if Buffer1 < $80 then
    begin

{$IFDEF DEBUG_MRIMAGE_UNIT}
      DebugLog.Add('$80;0;' + IntToStr(Ord(Buffer1)));
{$ENDIF}

      // The bytes lower than $80 are recopied just as they are in the Bitmap
      Run := 1;
    end else if Buffer1 = $81 then
    begin
      // The tag $81 is followed by a byte giving directly the count of points
      fCompressedData.Read(Buffer3, 1);
      Run := Buffer3;
      fCompressedData.Read(Buffer1, 1);

{$IFDEF DEBUG_MRIMAGE_UNIT}
      DebugLog.Add('$81;' + IntToStr(Run) + ';' + IntToStr(Ord(Buffer1)));
{$ENDIF}

    end else if (Buffer1 = $82) and (Buffer2 >= $80) then
    begin
      // The tag $82 is followed by the number of the points decoded in Run
      // By retaining only the first byte for each point
      fCompressedData.Read(Buffer3, 1);
      Run := Buffer3 - $80 + $100;
      fCompressedData.Read(Buffer1, 1);
//      Buffer1 := Buffer2;

{$IFDEF DEBUG_MRIMAGE_UNIT}
      DebugLog.Add('$82;' + IntToStr(Run) + ';' + IntToStr(Ord(Buffer1)));
{$ENDIF}

    end else begin
      // if the value > $82 : Decode the number of points present in Run
      Run := Buffer1 - $80;
      fCompressedData.Read(Buffer1, 1); // codés sur un seul octet

{$IFDEF DEBUG_MRIMAGE_UNIT}
      DebugLog.Add('+$82;' + IntToStr(Run) + ';' + IntToStr(Ord(Buffer1)));
{$ENDIF}

    end;

    // Writing decompressed bytes
    for k := 1 to Run do
      fDecompressedData.Write(Buffer1, 1);

  end;
  fDecompressedData.Seek(0, soFromBeginning);

{$IFDEF DEBUG_MRIMAGE_UNIT}
  DebugLog.SaveToFile('DecompressedAlgorithm.log');
{$ENDIF}

  // After this code, DecompressedData.Size will be (Bitmap.Height * Bitmap.Width) + 1
  // The additional byte (+ 1) is useless, but it always present in MR files.
end;

destructor TMRFile.Destroy;
begin
  fSourceBitmap.Free;
  fCompressedData.Free;
  fDecompressedData.Free;
  inherited;
end;

procedure TMRFile.Draw;
var
  x, y: Integer;
  Buffer: Byte;
  CurrentPoint: TMRColor;

begin
  fDecompressedData.Seek(0, soFromBeginning);

  for y := 0 To fSourceBitmap.Height - 1 do // loop the y coordinates
    for x := 0 To fSourceBitmap.Width - 1 do // loop the x coordinates
    begin
      // Get RGB values from palette for current pixel
      fDecompressedData.Read(Buffer, 1);

      if Buffer > fPalette.Count then
        // Fix for WinCE (extracted from MR Writer, thx Fackue)
        CurrentPoint := fPalette.Colors[0]
      else
        // Normal point
        CurrentPoint := fPalette.Colors[Buffer];

      // Draw the pixel
      fSourceBitmap.Canvas.Pixels[x, y] := MRColorToColor(CurrentPoint);
    end;
end;

function TMRFile.LoadFromBootstrap(InputStream: TStream): Boolean;
var
  BootstrapID: array[0..31] of AnsiChar;
  Header: TMRHeader;

begin
  Result := False;
  InputStream.Seek(0, soFromBeginning);
  InputStream.Read(BootstrapID, SizeOf(BootstrapID));
  if SameText(string(BootstrapID), IP_HEADER_ID) then
  begin
    // The signature of the file = IP.BIN
    InputStream.Seek(IP_MR_OFFSET, soFromBeginning);
    InputStream.Read(Header, SizeOf(TMRHeader));
    Result := LoadFromMR(InputStream, Header);
  end;
end;

function TMRFile.LoadFromFile(FileName: TFileName): Boolean;
var
  FileStream: TFileStream;
  Header: TMRHeader;
  ConvertFromAnotherFormat: Boolean;

begin
  Result := False;
  if not FileExists(FileName) then Exit;

  ConvertFromAnotherFormat := False;
  FileStream := TFileStream.Create(FileName, fmOpenRead);
  try

    try
      // Clear all internal datas
      Clear;

      // Try reading MR header...
      FileStream.Read(Header, SizeOf(TMRHeader));
      if SameText(string(Header.ID), MR_HEADER_ID) then
      begin
        // The target file is MR (direct), handling it.
        fLoaded := LoadFromMR(FileStream, Header)

      end else begin

        // The target file isn't MR. Maybe IP.BIN ?
        // So MR is embedded in the IP.BIN ?
        fLoaded := LoadFromBootstrap(FileStream);
        if not fLoaded then
          // The file is another format (bmp, gif, jpg, png...)
          ConvertFromAnotherFormat := True;

      end;

    except
      on E:EMRFile do
        raise;
      on E:Exception do
        raise EMRFile.Create('LoadFromFile: Generic Error (' + E.ClassName + '): ' + E.Message);
    end;

  finally
    FileStream.Free;
  end;

  // The format is other than MR (direct) or embedded MR in IP.BIN...
  // In clear, the image format is a simple known format such bmp, jpg, png...
  if ConvertFromAnotherFormat then
    fLoaded := LoadFromPictureFormat(FileName);

  // Return the value (if needed by the user after...)
  Result := fLoaded;

  // Save the loaded filename...
  if Result then
  begin
    fLoadedFileName := FileName;
    if Assigned(OnFileLoaded) then OnFileLoaded(Self);
  end;
end;


function TMRFile.LoadFromMR(InputStream: TStream; Header: TMRHeader): Boolean;
var
  i: Integer;

begin
  Result := False;
  try

    // Verify MR header
    if SameText(string(Header.ID), MR_HEADER_ID) then
    begin
      // Read MR header
      fSourceBitmap.Width := Header.Width;
      fSourceBitmap.Height := Header.Height;

      // Read MR Palette
      for i := 0 to Header.Colors - 1 do
        InputStream.Read(fPalette.Colors[i], SizeOf(TMRColor));
      fPalette.Count := Header.Colors;

      // Seek to the MR data offset
      // Normally, by reading the palette, we are already on the good offset.
      // But sometimes (bleem.mr...) we have extra data just after the palette
      // data. So to be sure, seek to the MR data.
      InputStream.Seek(Header.DataOffset, soFromBeginning);

      // Read MR Compressed Data
      fCompressedData.CopyFrom(InputStream, Header.Size - Header.DataOffset);
{$IFDEF DEBUG_MRIMAGE_UNIT}
      fCompressedData.SaveToFile('LoadFromMR_CompressedData.bin');
{$ENDIF}

      // Decompressing MR data
      Decompress;
{$IFDEF DEBUG_MRIMAGE_UNIT}
      fDecompressedData.SaveToFile('LoadFromMR_DecompressedData.bin');
{$ENDIF}

      // Render MR in the internal Bitmap
      Draw;

      // Loaded!
      Result := True;
    end;

  except
    on E:EMRFile do
      raise;
    on E:Exception do
      raise EMRFile.Create('LoadFromMR: Generic Error (' + E.ClassName + '): ' + E.Message);
  end;
end;

function TMRFile.LoadFromPictureFormat(const FileName: TFileName): Boolean;
var
  Picture: TPicture;

begin
  Result := False;
  Picture := TPicture.Create;
  try
    try
      Picture.LoadFromFile(FileName);
      fSourceBitmap.Height := Picture.Height;
      fSourceBitmap.Width := Picture.Width;
      fSourceBitmap.Canvas.Draw(0, 0, Picture.Graphic);
      Result := True;
    except
      on E:EMRFile do
        raise;
      on E:Exception do
        raise EMRFile.Create('LoadFromPictureFormat: Generic Error (' + E.ClassName + '): ' + E.Message);
    end;
  finally
    Picture.Free;
  end;
end;

procedure TMRFile.Render(DestinationBitmap: TBitmap);
begin
  DestinationBitmap.Assign(fSourceBitmap);
end;

function TMRFile.SaveToBootstrap(FileName: TFileName): Boolean;
var
  FileStream: TFileStream;
  BootstrapID: array[0..31] of AnsiChar;

begin
  Result := False;
  if FileExists(FileName) then
  begin
    FileStream := TFileStream.Create(FileName, fmOpenReadWrite);
    try
      FileStream.Read(BootstrapID, SizeOf(BootstrapID));
      if SameText(string(BootstrapID), IP_HEADER_ID) then
      begin
        // The signature of the file = IP.BIN
        FileStream.Seek(IP_MR_OFFSET, soFromBeginning);
        SaveToMR(FileStream);
        Result := True;
      end;
    finally
      FileStream.Free;
    end;
  end;
end;

procedure TMRFile.SaveToFile(FileName: TFileName);
var
  FileStream: TFileStream;
  ConvertFromAnotherFormat: Boolean;

begin
  ConvertFromAnotherFormat := False;

  // Save to IP.BIN if possible...?
  if not SaveToBootstrap(FileName) then
  begin
    // Save to image (MR or other)
    FileStream := TFileStream.Create(FileName, fmCreate);
    try

      if SameText(ExtractFileExt(FileName), MR_FILE_EXTENSION) then
        // Save to MR
        SaveToMR(FileStream)
      else
        // Save to another format
        ConvertFromAnotherFormat := True;

    finally
      FileStream.Free;
    end;

  end;

  // the format is other... (bmp, jpg, png or something else...)
  if ConvertFromAnotherFormat then
    SaveToPictureFormat(FileName);
end;

procedure TMRFile.SaveToMR(OutputStream: TStream);
var
  i: Integer;
  Header: TMRHeader;

begin
  try
    // Create the palette and retrieve decompressed data stream
    BuildPalette;

    // Compress to MR
    Compress;

    // Initializing Header
    FillChar(Header, SizeOf(TMRHeader), #0);
    StrCopy(Header.ID, MR_HEADER_ID);
    Header.Width := fSourceBitmap.Width;
    Header.Height := fSourceBitmap.Height;
    Header.Colors := fPalette.Count;
    Header.DataOffset := SizeOf(TMRHeader) + fPalette.Count * SizeOf(TMRColor);
    Header.Size := Header.DataOffset + fCompressedData.Size;

    // Check the Width
    if Header.Width > MR_MAX_WIDTH then
      raise EMRFileWidthToLarge.CreateFmt('The width for the MR file is too '
        + 'large (max is %d)', [MR_MAX_WIDTH]);

    // Check the Height
    if Header.Height > MR_MAX_HEIGHT then
      raise EMRFileHeightToLarge.CreateFmt('The height for the MR file is too '
        + 'large (max is %d)', [MR_MAX_HEIGHT]);

{$IFDEF CHECK_IPLOGO_SIZE}
    // Check if the MR file will fit in the IP.BIN
    if Header.Size > MR_MAX_FILESIZE then
      raise EMRFileTooBigForBootstrap.CreateFmt('MR file is too big to fit in '
        + 'the IP.BIN (it''s %d Bytes too big)', [Header.Size - MR_MAX_FILESIZE]);
{$ENDIF}

    // Writing MR header
    OutputStream.Write(Header, SizeOf(TMRHeader));

    // Writing Palette
    for i := Low(fPalette.Colors) to fPalette.Count - 1 do
      OutputStream.Write(fPalette.Colors[i], SizeOf(TMRColor));

    // Writing Compressed data...
    OutputStream.CopyFrom(fCompressedData, 0);
  except
    on E:EMRFile do
      raise;
    on E:Exception do
      raise EMRFile.Create('SaveToMR: Generic Error (' + E.ClassName + '): ' + E.Message);
  end;
end;

procedure TMRFile.SaveToPictureFormat(const FileName: TFileName);
type
  TFileFormat = record
    GraphicClass: TGraphicClass;
    Ext: string;
  end;

const
  KNOWS_FILE_FORMATS: array[0..5] of TFileFormat = (
    (GraphicClass: TJPEGImage;    Ext: 'jpg'),
    (GraphicClass: TJPEGImage;    Ext: 'jpeg'),
    (GraphicClass: TJvGIFImage;   Ext: 'gif'),
    (GraphicClass: TBitmap;       Ext: 'bmp'),
    (GraphicClass: TBitmap;       Ext: 'dib'),
    (GraphicClass: TPngImage;     Ext: 'png')
  );

var
  Ext: string;
  NewGraphic: TGraphic;
  GraphicClass: TGraphicClass;

  function __FindFileFormat(__FileExt: string): TGraphicClass;
  var
    i: Integer;
  begin
    for i := Low(KNOWS_FILE_FORMATS) to High(KNOWS_FILE_FORMATS) do
      if SameText(__FileExt, KNOWS_FILE_FORMATS[i].Ext) then
      begin
        Result := KNOWS_FILE_FORMATS[i].GraphicClass;
        Exit;
      end;
    Result := nil;
  end; // __FindFileFormat

begin
  // Determine the type of the requested FileName
  Ext := ExtractFileExt(FileName);
  Delete(Ext, 1, 1);
  GraphicClass := __FindFileFormat(Ext);
  if GraphicClass = nil then
    raise EInvalidGraphic.CreateFmt(SUnknownExtension, [Ext]);

  // Calling the SaveToFile method of the new instance.
  NewGraphic := GraphicClass.Create;
  try
    NewGraphic.Assign(fSourceBitmap);
    NewGraphic.SaveToFile(FileName);
  finally
    NewGraphic.Free;
  end;
end;

{$IFDEF DEBUG_MRIMAGE_UNIT}
initialization
  DebugLog := TStringList.Create;

finalization
  DebugLog.Free;
{$ENDIF}

end.
