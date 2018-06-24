(*
  System Tools Unit @ 2012-09-15
  License: GPL 3
  Created by SiZiOUS

  Retrieve Windows Application Version.

  This unit was ripped of another project I own:
    Shenmue Translation Pack - http://shenmuesubs.sourceforge.net/
  If you want to get the complete unit, grab it from the SVN above.

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
unit AppVer;

interface

uses
  Windows, SysUtils;

function GetApplicationVersion: string; overload;
function GetApplicationVersion(LangID, SubLangID: Byte): string; overload;

implementation

uses
  SysTools;

//------------------------------------------------------------------------------
(*
  Based on the original function published by Nono40 (nono40.developpez.com)
  Thanks to Olivier Lance:
        http://delphi.developpez.com/faq/?page=systemedivers#langidcquoi
*)
function ExtractApplicationVersion(const wLanguage: LANGID): string;
const
  VERSION_INFO_VALUE = '04E4';

var
  InfoSize,
  InfoLength: LongWord;
  Buffer,
  VersionPC: PChar;
  LangCode: string;

begin
  Result := '';
  Buffer := nil;

  LangCode := IntToHex(wLanguage, 4) + VERSION_INFO_VALUE;

  // Asking file version information size
  InfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), InfoSize);

  // We have file version information on the file.
  if InfoSize > 0 then
    try
      // Allocating memory for reading file info
      Buffer := AllocMem(InfoSize);

      // Copying file info in the buffer
      GetFileVersionInfo(PChar(ParamStr(0)), 0, InfoSize, Buffer);

      // Reading the ProductVersion value
      if VerQueryValue(Buffer, PChar('\StringFileInfo\' + LangCode
        + '\ProductVersion'), Pointer(VersionPC), InfoLength
      ) then
        Result := VersionPC;
    finally
      FreeMem(Buffer, InfoSize);
    end;
end;

//------------------------------------------------------------------------------

function MakeLangID(LangID, SubLangID: Byte): Word;
begin
  Result := (SubLangID shl 10) or LangID;
end;

//------------------------------------------------------------------------------

function GetApplicationVersion(LangID, SubLangID: Byte): string; overload;
begin
  Result := ExtractApplicationVersion(MakeLangID(LangID, SubLangID));
end;

//------------------------------------------------------------------------------

function GetApplicationVersion: string; overload;
begin
  Result := GetApplicationVersion(LANG_FRENCH, SUBLANG_FRENCH);
end;

end.
