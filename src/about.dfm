object frmAbout: TfrmAbout
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '< Dynamic Title >'
  ClientHeight = 275
  ClientWidth = 564
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
  object pnlRight: TPanel
    Left = 348
    Top = 3
    Width = 213
    Height = 270
    BevelOuter = bvLowered
    TabOrder = 0
    object lblTitleHelpAboutShadow: TJvLabel
      Left = 6
      Top = 23
      Width = 202
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Selfboot Inducer 5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblSiZ: TLabel
      Left = 5
      Top = 4
      Width = 203
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = '[big_fury]SiZiOUS proudly presents ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      OnClick = btnSiZClick
      OnMouseEnter = lblSiZMouseEnter
      OnMouseLeave = lblSiZMouseLeave
    end
    object lblTitleHelpAbout: TJvLabel
      Left = 5
      Top = 21
      Width = 202
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'Selfboot Inducer 5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Bevel1: TBevel
      Left = 5
      Top = 44
      Width = 202
      Height = 2
    end
    object lblTitleAppVer: TLabel
      Left = 6
      Top = 48
      Width = 203
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Application Version'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblAppVer: TLabel
      Left = 6
      Top = 62
      Width = 203
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '< Version >'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 6
      Top = 80
      Width = 203
      Height = 2
    end
    object Bevel3: TBevel
      Left = 6
      Top = 234
      Width = 202
      Height = 2
    end
    object memCredits: TJvRichEdit
      Left = 6
      Top = 85
      Width = 202
      Height = 146
      ClipboardCommands = [caCopy]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnURLClick = memCreditsURLClick
    end
    object btnSiZ: TJvImgBtn
      Left = 5
      Top = 239
      Width = 99
      Height = 26
      Caption = 'SiZiOUS...'
      ImageIndex = 1
      Images = iltIcons
      TabOrder = 1
      OnClick = btnSiZClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object btnOK: TJvImgBtn
      Left = 109
      Top = 239
      Width = 99
      Height = 26
      Caption = 'Okay, he !'
      Default = True
      ImageIndex = 0
      Images = iltIcons
      TabOrder = 0
      OnClick = btnOKClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
  end
  object pnlLogo: TPanel
    Left = 2
    Top = 3
    Width = 342
    Height = 270
    BevelOuter = bvLowered
    TabOrder = 1
    object imgLogo: TImage
      Left = 1
      Top = 1
      Width = 340
      Height = 268
      Align = alClient
      ExplicitLeft = 84
      ExplicitTop = 52
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
  end
  object iltIcons: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 18
    Top = 56
    Bitmap = {
      494C010102000400040010001000FFFFFFFF2100FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030303023A3C3D436565
      67773C3E3E45131414150D0D0D0E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000625F6178894053FA7E38
      46FE643541F9865969E779505DE7796B71A53536363D03040403000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030302000000000000000000000000000000000000
      000000000000000000000000000000000000030404038C6C77D2AA485EFFA05F
      71FFB25368FE855666F2D8637EFF94384DFF61313FFB7D6B72B3232424280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000161717194D8562D75B69608B0000000000000000000000000000
      00000000000000000000000000000000000000000000836F78B9BD5C72FF5F39
      47FB886674D7826974C9DA6680FFEA6382FEDC5977FF8E3749FE6A4853EA4747
      4853000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000141515174C815CD519DA60FF20C05CFF59675E8600000000000000000000
      000000000000000000000000000000000000000000005050515FBA7183FEB04B
      62FF7C3041FF9D3D53FFD44F6DFF844A5AFBBE7789FEEB718BFFB6465FFF6135
      42F7565556660000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001213
      13144E815AD216BD51FF12C64FFF11C54EFF1EAA4EFE58655C80000000000000
      0000000000000000000000000000000000000000000006060606807077AAC781
      8DFEEB7582FFE76373FEDD5E6DFF713F4AF86E676B89996E7BEEE5818DFFC052
      5EFE623941F74F50515D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101111125483
      5CCE3AB55FFF37BD5FFF37BE63FF35BE60FF2FB559FF319F51FE56625A7A0000
      0000000000000000000000000000000000000000000000000000090A0A0A796E
      729D986A72FBAD6F67FFBA6F63FF76423EFE7B6D73A8746B6F93936973EEE586
      77FFB8614FFF644347F12729292D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0E0E0F55845DCA50B0
      66FF52B969FF52BA6BFF5B8461CA4C9B5DF353BD6CFF54B86BFF5DAD6BFE535F
      5874000000000000000000000000000000000000000004050504696466827E59
      51F08A5A36FEBE7944FEC77F48FFB67442FE8C5D34FF6A472BFE714A34FED58B
      51FEDE8C51FF8D5B35FE786F739E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000515A556C5BAC68FF66B8
      73FF65BA74FF618865C40B0C0C0C363A394255A262F567BC76FF66B672FF5DA9
      66FE505B546E00000000000000000000000000000000555456669D743EFDCE97
      3FFFDCA348FFDEA750FFC6974FFFBD955BFFD8AE6FFFE2B168FFDDA857FFDDA5
      4CFFDDA246FFC8933EFF846A6AD1030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040505045F7E63AA76BD
      7CFF618D66C80D0D0D0E0000000000000000393E3C4660A964F77CC181FF7BBD
      80FF61A964FD4D5751680000000000000000030404038B7272CEDCAB44FFD8A9
      40FE9B7E4AFFAA883FFEA48132FF654834FE856B76C5847378BC987A76E5AA87
      6EFBB49567FEAE8859FD776F7296000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505055B65
      5E750E0F0F10000000000000000000000000000000003C42404B68B169F890CF
      91FF8FCC90FF68B468FD41474451000000000A0B0B0B97766BE8DDAE4AFF8F6E
      31FE8C6362F4DDAD49FFD1A13DFF927738FF795F5AE30E0E0E0F0A0B0B0B2729
      292D454645503A3B3B4306060606000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004046435071BD
      71F9A8E5A8FF5AA95BEE292B2B3000000000030404038E7477CFE1B75EFF8A6B
      2AFE815F43FDDBAD44FE987830FF9C7863FB8B6B65E411121213000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000434A
      46557DB67FEA2E31303700000000000000000000000055545666B69673FDD5AA
      51FFC59C46FFDCAB44FF816528FF6661627A191B1B1D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303020000000000000000000000000000000005050505776D719A9B7C
      6DF592706AF0CDAF72FE997A34FF63605F770000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303021819
      191B1B1C1C1F847377B3AE8C5BFE726C6C930000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000070707075958596A5D5B5D700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF81FF00000000FFFF803F00000000
      FDFF001F00000000F8FF800F00000000F07F800700000000E03F800300000000
      C01FC00100000000800F80010000000080078000000000008303000100000000
      C781000100000000FFC1003F00000000FFE3807F00000000FFF780FF00000000
      FFFFC0FF00000000FFFFF8FF00000000}
  end
end