(*
  User Interface Tools Unit @ 2012-08-18
  License: GPL 3
  Created by SiZiOUS

  With the same goal of 'Forms' from Borland, this unit contains some (custom)
  additionnal tools used in the application, with an orientation to UI things.

  This unit was ripped of another project I own:
    Shenmue Translation Pack - http://shenmuesubs.sourceforge.net/
  If you want to get the complete unit, grab it from the SVN above.

  --- Changes ---

  Here is the list of changes between the original version from the
  Shenmue Translation Pack:
    - Ripped every functions not used in this standalone application.
    - Adding the procedure LoadTextResource

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
unit UITools;

interface

uses
  Windows, SysUtils, Classes, Forms, ShellApi, JvRichEdit;

procedure DoRightClickSelection;
procedure LoadTextResource(Memo: TJvRichEdit; ResName: string);
procedure LocateFileOnDisk(const FileName: TFileName);
function OpenLink(const LinkURL: string): Boolean;
procedure OpenWindowsExplorer(const Directory: TFileName);

implementation

procedure LoadTextResource(Memo: TJvRichEdit; ResName: string);
var
  ResourceStream: TResourceStream;

begin
  ResourceStream := TResourceStream.Create(HInstance, ResName, RT_RCDATA);
  try
    Memo.Lines.LoadFromStream(ResourceStream);
  finally
    ResourceStream.Free;
  end;
end;

procedure DoRightClickSelection;
var
  Point: TPoint;

begin
  // enable right-click selection
  GetCursorPos(Point);
  Mouse_Event(MOUSEEVENTF_LEFTDOWN, Point.X, Point.Y, 0, 0);
  Mouse_Event(MOUSEEVENTF_LEFTUP, Point.X, Point.Y, 0, 0);
  Application.ProcessMessages;
end;

procedure LocateFileOnDisk(const FileName: TFileName);
begin
  if FileExists(FileName) then
    ShellExecute(Application.Handle, 'open', 'explorer',
      PChar('/e,/select,' + FileName), '', SW_SHOWNORMAL);
end;

function OpenLink(const LinkURL: string): Boolean;
begin
  Result := ShellExecute(
    Application.Handle, 'open', PChar(LinkURL), '', '', SW_SHOWNORMAL
  ) > 32;
end;

procedure OpenWindowsExplorer(const Directory: TFileName);
begin
  if DirectoryExists(Directory) then
    ShellExecute(Application.Handle, 'open', 'explorer',
      PChar(Directory), '', SW_SHOWNORMAL);
end;

end.
