(*
  System Tools Unit @ 2012-08-18
  License: GPL 3
  Created by SiZiOUS

  With the same goal of 'SysUtils' from Borland, this unit contains some
  (custom) additionnal (generic) tools used in the application.

  This unit was ripped of another project I own:
    Shenmue Translation Pack - http://shenmuesubs.sourceforge.net/
  If you want to get the complete unit, grab it from the SVN above.

  --- Changes ---

  Here is the list of changes between the original version from the
  Shenmue Translation Pack:
    - Ripped every functions not used in this standalone application.
    - Adding functions KillFile, GetDiscFreeSpace

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
unit SysTools;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, SysUtils, System.IOUtils;

procedure DeleteDirectory(DirectoryName: TFileName; RemoveRoot: Boolean = True);
function DriveCharToInteger(Drive: Char): Integer;
function ExtractRadicalFileName(const FullPathFileName: TFileName): TFileName;
function GetApplicationDirectory: TFileName;
function GetApplicationRadicalName: string;
function GetDirectorySize(Directory: TFileName): Int64;
function GetDiscFreeSpace(Drive: Char): Int64;
function InString(const SubStr, S: string): Boolean;
function KillFile(const FileName: TFileName): Boolean;
function LeftNRight(SubStr, S: string; N: Integer): string;
procedure MoveDirectory(SourceDirectory, DestinationDirectory: TFileName);
function RunAndWait(const TargetFileName: TFileName): Boolean;

implementation

// GetDiscFreeSpace
function GetDiscFreeSpace(Drive: Char): Int64;
begin
  Result := DiskFree(DriveCharToInteger(Drive));
end;

// DriveCharToInteger
function DriveCharToInteger(Drive: Char): Integer;
begin
  Result := -1;
  Drive := UpCase(Drive);
  if CharInSet(Drive, ['A'..'Z']) then
    Result := (Ord(Drive) - Ord('A')) + 1;
end;

// Thanks Michel (Phidels.com)
function LeftNRight(SubStr, S: string; N: Integer): string;
{==============================================================================}
{ renvoie ce qui est à gauche de la droite de la n ieme sous chaine substr     }
{ de la chaine S                                                               }
{ ex : GaucheNDroite('/','c:machin\truc\essai.exe',1) renvoie 'truc'           }
{ Permet d'extraire un à un les éléments d'une chaine séparés par un séparateur}
{==============================================================================}
var i:integer;
begin
  S:=S+substr;
  for i:=1 to n do
  begin
    S:=copy(s, pos(substr, s)+length(substr), length(s)-pos(substr, s)+length(substr));
  end;
  result:=copy(s, 1, pos(substr, s)-1);
end;

function KillFile(const FileName: TFileName): Boolean;
begin
  if TFile.Exists(FileName) then
    TFile.Delete(FileName);
  Result := not TFile.Exists(FileName);
end;

// Thanks (?)
procedure DeleteDirectory(DirectoryName: TFileName; RemoveRoot: Boolean = True);
var
  aResult : Integer;
  aSearchRec : TSearchRec;

begin
  if DirectoryName = '' then Exit;
  DirectoryName := IncludeTrailingPathDelimiter(DirectoryName);
  aResult := FindFirst(DirectoryName + '*.*', faAnyFile, aSearchRec);
  while aResult=0 do
  begin
    if ((aSearchRec.Attr and faDirectory)<=0) then
    begin
      try
        if (FileGetAttr(DirectoryName+aSearchRec.Name) and faReadOnly) > 0 then
			    FileSetAttr(DirectoryName+aSearchRec.Name, FileGetAttr(DirectoryName+aSearchRec.Name) xor faReadOnly);
        DeleteFile(DirectoryName+aSearchRec.Name)
      except
      end;
    end
    else
    begin
      try
        if aSearchRec.Name[1]<>'.' then   // pas le repertoire '.' et '..'sinon on tourne en rond
        begin
          DeleteDirectory(DirectoryName+aSearchRec.Name); // vide les sous-repertoires de facon recursive
          RemoveDir(DirectoryName+aSearchRec.Name);
        end;
      except // exception silencieuse si ne peut détrure le fichier car il est en cours d'utilisation : sera détruit la fois prochaine....
      end;
    end;
    aResult:=FindNext(aSearchRec);
  end;
  FindClose(aSearchRec); // libération de aSearchRec
  if RemoveRoot and DirectoryExists(DirectoryName) then
    RemoveDir(DirectoryName);
end;

function ExtractRadicalFileName(const FullPathFileName: TFileName): TFileName;
begin
  Result := ExtractFileName(ChangeFileExt(FullPathFileName, ''));
end;

function GetApplicationDirectory: TFileName;
begin
  Result := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
end;

function GetApplicationRadicalName: string;
begin
  Result := ExtractRadicalFileName(ParamStr(0));
end;

// Author unknow
function GetDirectorySize(Directory: TFileName): Int64;
var
  aResult : Integer;
  aSearchRec : TSearchRec;

begin
  Result := 0;
  if Directory = '' then Exit;
  Directory := IncludeTrailingPathDelimiter(Directory);
  aResult := FindFirst(Directory + '*.*', faAnyFile, aSearchRec);
  while aResult = 0 do
  begin
    if ((aSearchRec.Attr and faDirectory) <= 0) then
      Result := Result + aSearchRec.Size //GetFileSize(Directory + aSearchRec.Name)
    else
      if aSearchRec.Name[1] <> '.' then   // pas le repertoire '.' et '..'sinon on tourne en rond
        Result := Result + GetDirectorySize(Directory + aSearchRec.Name);
    aResult := FindNext(aSearchRec);
  end;
  FindClose(aSearchRec); // libération de aSearchRec
end;

function InString(const SubStr, S: string): Boolean;
begin
  Result := Pos(LowerCase(SubStr), LowerCase(S)) > 0;
end;

procedure MoveDirectory(SourceDirectory, DestinationDirectory: TFileName);
var
  SearchResult: Integer;
  SearchRecord: TSearchRec;

begin
  SourceDirectory := IncludeTrailingPathDelimiter(SourceDirectory);
  DestinationDirectory := IncludeTrailingPathDelimiter(DestinationDirectory);

  SearchResult := FindFirst(SourceDirectory + '*.*', faAnyFile, SearchRecord);
  while SearchResult = 0 do
  begin
    if (SearchRecord.Name <> '.') and (SearchRecord.Name <> '..') then
      if (SearchRecord.Attr and faDirectory) = 0 then
      begin
        // Files
        if TFile.Exists(DestinationDirectory + SearchRecord.Name) then
          TFile.Delete(DestinationDirectory + SearchRecord.Name);
        TFile.Move(SourceDirectory + SearchRecord.Name, DestinationDirectory + SearchRecord.Name);
      end else begin
        // Directories
        ForceDirectories(DestinationDirectory + SearchRecord.Name);
        MoveDirectory(SourceDirectory + SearchRecord.Name, DestinationDirectory + SearchRecord.Name);
        RemoveDir(SourceDirectory + SearchRecord.Name);
      end;
    SearchResult := FindNext(SearchRecord);
  end;
  FindClose(SearchRecord);
  RemoveDir(SourceDirectory);
end;

// Thanks Michel
function RunAndWait(const TargetFileName: TFileName) : Boolean;
var
  StartupInfo: TStartupInfo;
  ProcessInformation: TProcessInformation;

begin
  Result := True;
  ZeroMemory(@StartupInfo, SizeOf(StartupInfo));
  StartupInfo.cb := SizeOf(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := SW_HIDE;
  if CreateProcess(
    nil, PChar(TargetFileName), nil, nil, True, 0, nil, nil, StartupInfo,
    ProcessInformation
  ) then
    WaitForSingleObject(ProcessInformation.hProcess, INFINITE)
  else
    Result := False;
end;

end.
