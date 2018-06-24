(*
  Console Manager Unit @ 2012-09-15
  License: GPL 3
  Created by SiZiOUS

  Allows you to control the Windows Console more easier with some nice colors...

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
unit CslMgr;

interface

uses
  Windows, SysUtils, Forms;

type
  TConsoleTextColor = (txBlack, txDarkBlue, txDarkGreen, txDarkCyan, txDarkRed,
    txDarkMangenta, txBrown, txLightGray, txDarkGray, txLightBlue, txLightGreen,
    txLightCyan, txLightRed, txLightMangenta, txYellow, txWhite);

  TConsole = class(TObject)
  private
    procedure PrintLogo;
  public
    constructor Create;
    destructor Destroy; override;
    procedure PrintLn(Text: string);
    procedure PrintError(Text: string);
    procedure PrintHeader(Text: string);
    procedure PrintOperationItem(Operation, Value: string);
    procedure PrintSuccess(Text: string);
    procedure SetColor(TextColor: TConsoleTextColor); overload;
    procedure SetColor(TextColor: TConsoleTextColor; BackgroundColor: TConsoleTextColor); overload;
  end;

var
  Console: TConsole;

implementation

var
  ConsoleAllocated: Boolean;

{ TConsole }

constructor TConsole.Create;
begin
  ConsoleAllocated := AllocConsole;
  if ConsoleAllocated then
  begin
    SetConsoleTitleW(PWideChar(Application.Title + ' :: Output Console'));
    PrintLogo;
  end;
end;

destructor TConsole.Destroy;
begin
  if ConsoleAllocated then
    FreeConsole;
  inherited;
end;

procedure TConsole.PrintLogo;
begin
  SetColor(txWhite);
  WriteLn(
    '╔══════════════════════════════════════════════════════════════════════════════╗',
    '║█████████ █████████ ███       █████████ ███       █████████ █████████ ███     ║',
    '║███       ███   ███ ███       ███       ███       ███   ███ ███   ███ ███     ║',
    '║█████████ █████████ ███       ██████    █████████ ███   ███ ███   ███ ██████  ║',
    '║      ███ ███       ███       ███       ███   ███ ███   ███ ███   ███ ███     ║',
    '║█████████ █████████ █████████ ███       █████████ █████████ █████████ ████████║',
    '║                                                    ╔══════════════════╗      ║',
    '╚════════════════════════════════════════════════════╣ i N D U C E R  5 ╠══════╝',
    '                                                     ╚══════════════════╝       '
  );
  SetColor(txLightGray);
end;

procedure TConsole.PrintError(Text: string);
begin
  WriteLn('');
  SetColor(txLightRed);
  WriteLn(Text, sLineBreak);
  SetColor(txLightGray);
end;

procedure TConsole.PrintHeader(Text: string);
begin
  SetColor(txLightCyan);
  WriteLn(Text, sLineBreak);
  SetColor(txLightGray);
end;

procedure TConsole.PrintLn(Text: string);
begin
  WriteLn(Text);
end;

procedure TConsole.PrintOperationItem(Operation, Value: string);
begin
  SetColor(txWhite);
  Write(Operation, ': ');
  SetColor(txLightGray);
  WriteLn(Value);
end;

procedure TConsole.PrintSuccess(Text: string);
begin
  WriteLn('');
  SetColor(txLightGreen);
  WriteLn(Text, sLineBreak);
  SetColor(txLightGray);
end;

procedure TConsole.SetColor(TextColor: TConsoleTextColor);
begin
  SetColor(TextColor, txBlack);
end;

procedure TConsole.SetColor(TextColor, BackgroundColor: TConsoleTextColor);
begin
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE),
    Integer(TextColor) + (Integer(BackgroundColor) shl 4));
end;

initialization

finalization
  Console.Free;

end.
