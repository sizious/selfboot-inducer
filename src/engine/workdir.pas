(*
  Working Directory Unit @ 2012-08-18
  License: GPL 3
  Created by SiZiOUS

  Allow you to deal with a custom temporary directory for the application.

  This unit was ripped of another project I own:
    Shenmue Translation Pack - http://shenmuesubs.sourceforge.net/

  --- Changes ---

  Here is the list of changes between the original version from the
  Shenmue Translation Pack:
    N/A

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
unit WorkDir;

interface

uses
  Windows, SysUtils;

// Get the Temp directory for the application
function GetWorkingTempDirectory: TFileName;

// Get a temp filename in the temp directory above.
function GetWorkingTempFileName: TFileName;

implementation

uses
  SysTools, IOUtils;

var
  sWorkingTempDirectory: TFileName;

//------------------------------------------------------------------------------

procedure InitWorkingDirectory;
begin
  sWorkingTempDirectory := TPath.GetTempPath + GetApplicationRadicalName + '\';
  if not DirectoryExists(sWorkingTempDirectory) then
    ForceDirectories(sWorkingTempDirectory);
end;

//------------------------------------------------------------------------------

procedure DeleteWorkingTempDirectory;
begin
  if DirectoryExists(sWorkingTempDirectory) then
    DeleteDirectory(sWorkingTempDirectory);
end;

//------------------------------------------------------------------------------

function GetWorkingTempDirectory: TFileName;
begin
  if sWorkingTempDirectory = '' then
    InitWorkingDirectory;
  Result := sWorkingTempDirectory;
end;

//------------------------------------------------------------------------------

function GetWorkingTempFileName: TFileName;
begin
  repeat
    Result := GetWorkingTempDirectory + IntToHex(Random($FFFFFFF), 8) + '.SiZ';
  until not FileExists(Result);
end;

//------------------------------------------------------------------------------

initialization
  sWorkingTempDirectory := ''; // see GetWorkingTempDirectory

//------------------------------------------------------------------------------

finalization
  DeleteWorkingTempDirectory;

end.

