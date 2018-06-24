object frmLogoPreview: TfrmLogoPreview
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Screen License Preview'
  ClientHeight = 490
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMR: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 644
    Height = 484
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object imgScreen: TImage
      Left = 2
      Top = 2
      Width = 640
      Height = 480
    end
    object imgLogoBack: TImage
      Left = 302
      Top = 300
      Width = 320
      Height = 90
    end
    object imgLogo: TImage
      Left = 302
      Top = 300
      Width = 320
      Height = 90
    end
  end
end
