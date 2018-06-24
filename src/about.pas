(*
  About Unit @ 2012-09-15
  License: GPL 3
  Created by SiZiOUS

  About Window... Cool, right ?

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
unit About;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls, JvButton,
  JvCtrls, JvRichEdit, Vcl.ExtCtrls, JvExControls, JvLabel, Vcl.ImgList;

type
  TfrmAbout = class(TForm)
    pnlRight: TPanel;
    lblSiZ: TLabel;
    lblTitleHelpAbout: TJvLabel;
    lblTitleHelpAboutShadow: TJvLabel;
    Bevel1: TBevel;
    lblTitleAppVer: TLabel;
    lblAppVer: TLabel;
    Bevel2: TBevel;
    memCredits: TJvRichEdit;
    btnSiZ: TJvImgBtn;
    pnlLogo: TPanel;
    Bevel3: TBevel;
    btnOK: TJvImgBtn;
    iltIcons: TImageList;
    imgLogo: TImage;
    procedure FormCreate(Sender: TObject);
    procedure lblSiZMouseLeave(Sender: TObject);
    procedure lblSiZMouseEnter(Sender: TObject);
    procedure btnSiZClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure memCreditsURLClick(Sender: TObject; const URLText: string;
      Button: TMouseButton);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

uses
  UITools, AppVer;

procedure TfrmAbout.btnSiZClick(Sender: TObject);
begin
   OpenLink('http://www.sizious.com/');
end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  LoadTextResource(memCredits, 'CREDITS');
  imgLogo.Picture.Bitmap.LoadFromResourceName(HInstance, 'ABOUT');
  lblAppVer.Caption := GetApplicationVersion;
  Caption := 'About ' + Application.Title;
  HideCaret(memCredits.Handle);
end;

procedure TfrmAbout.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmAbout.btnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbout.lblSiZMouseEnter(Sender: TObject);
begin
  with (Sender as TLabel) do
  begin
    Font.Style := (Sender as TLabel).Font.Style + [fsUnderline];
    Font.Color := clHotLight;
  end;
end;

procedure TfrmAbout.lblSiZMouseLeave(Sender: TObject);
begin
  with (Sender as TLabel) do
  begin
    Font.Style := (Sender as TLabel).Font.Style - [fsUnderline];
    Font.Color := clWindowText;
  end;
end;

procedure TfrmAbout.memCreditsURLClick(Sender: TObject; const URLText: string;
  Button: TMouseButton);
begin
  OpenLink(URLText);
end;

end.
