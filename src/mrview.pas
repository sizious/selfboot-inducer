(*
  MR View Unit @ 2012-09-15
  License: GPL 3
  Created by SiZiOUS

  MR Preview Screen.
  Idea from fackue implemented in his "MR Writer 0.3".

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
unit MRView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmLogoPreview = class(TForm)
    pnlMR: TPanel;
    imgScreen: TImage;
    imgLogo: TImage;
    imgLogoBack: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Déclarations privées }
    procedure InitializeLogoBack;
    function GetIpLogo: TPicture;
    procedure SetIpLogo(const Value: TPicture);
  public
    { Déclarations publiques }
    property IpLogo: TPicture read GetIpLogo write SetIpLogo;
  end;

var
  frmLogoPreview: TfrmLogoPreview;

implementation

{$R *.dfm}

procedure TfrmLogoPreview.FormCreate(Sender: TObject);
begin
  imgScreen.Picture.Bitmap.LoadFromResourceName(HInstance, 'SEGALIC');
  imgLogo.Left := 302;
  imgLogo.Top := 300;
  imgLogo.Width := 320;
  imgLogo.Height := 90;
  InitializeLogoBack;
end;

procedure TfrmLogoPreview.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

function TfrmLogoPreview.GetIpLogo: TPicture;
begin
  Result := imgLogo.Picture;
end;

procedure TfrmLogoPreview.SetIpLogo(const Value: TPicture);
(*var
  GraphicOK: Boolean;
*)
begin
  imgLogo.Picture.Assign(Value);
  (*GraphicOK := Assigned(imgLogo.Picture.Graphic);
  if not GraphicOK or (GraphicOK and imgLogo.Picture.Graphic.Empty) then
    ClearLogo;*)
end;

procedure TfrmLogoPreview.InitializeLogoBack;
var
  TempBitmap: TBitmap;

begin
  TempBitmap := TBitmap.Create;
  try
    TempBitmap.Height := imgLogo.Height;
    TempBitmap.Width := imgLogo.Width;
    TempBitmap.Canvas.Brush.Color := RGB(192, 192, 192);
    TempBitmap.Canvas.FillRect(Rect(0, 0, imgLogo.Width, imgLogo.Height));
    imgLogoBack.Picture.Bitmap.Assign(TempBitmap);
  finally
    TempBitmap.Free;
  end;
end;

end.
