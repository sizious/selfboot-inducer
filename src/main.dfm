object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '<Dynamic Application Title>'
  ClientHeight = 345
  ClientWidth = 674
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 326
    Top = 180
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object pclMain: TPageControl
    Left = 0
    Top = 0
    Width = 674
    Height = 273
    ActivePage = tbsPackages
    Align = alClient
    MultiLine = True
    Style = tsFlatButtons
    TabOrder = 0
    object tbsPackages: TTabSheet
      Caption = 'Packages'
      object pnlPackages: TPanel
        Left = 353
        Top = 3
        Width = 313
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object lblPackagesFilter: TLabel
          Left = 7
          Top = 11
          Width = 28
          Height = 13
          Caption = 'Filter:'
        end
        object cbxFilter: TComboBox
          Left = 38
          Top = 8
          Width = 84
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = '(All)'
          OnChange = cbxFilterChange
          Items.Strings = (
            '(All)'
            'Apps'
            'Demos'
            'Emus'
            'Games')
        end
        object btnSelect: TButton
          Left = 6
          Top = 207
          Width = 73
          Height = 26
          Caption = 'Select'
          TabOrder = 1
          OnClick = btnSelectClick
        end
        object btnUnselect: TButton
          Left = 83
          Top = 207
          Width = 73
          Height = 26
          Caption = 'Unselect'
          TabOrder = 2
          OnClick = btnUnselectClick
        end
        object btnRefresh: TJvImgBtn
          Left = 218
          Top = 6
          Width = 90
          Height = 25
          Caption = 'Refresh'
          ImageIndex = 0
          Images = iltLittleIcons
          TabOrder = 3
          OnClick = btnRefreshClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnSelectAll: TButton
          Left = 159
          Top = 207
          Width = 73
          Height = 26
          Caption = 'Select all'
          TabOrder = 4
          OnClick = btnSelectAllClick
        end
        object btnUnselectAll: TButton
          Left = 235
          Top = 207
          Width = 73
          Height = 26
          Caption = 'Unselect all'
          TabOrder = 5
          OnClick = btnUnselectAllClick
        end
        object clbPackages: TJvCheckListBox
          Left = 6
          Top = 35
          Width = 302
          Height = 166
          OnClickCheck = clbPackagesClickCheck
          DoubleBuffered = True
          ItemHeight = 13
          ParentDoubleBuffered = False
          PopupMenu = ppmPackages
          Sorted = True
          TabOrder = 6
          OnClick = clbPackagesClick
          OnContextPopup = clbPackagesContextPopup
        end
        object btnBrowseSbi: TJvImgBtn
          Left = 126
          Top = 6
          Width = 90
          Height = 25
          Caption = 'Browse...'
          ImageIndex = 3
          Images = iltLittleIcons
          TabOrder = 7
          OnClick = btnBrowseSbiClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 3
        Width = 347
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 1
        object Label1: TLabel
          Left = 33
          Top = 203
          Width = 31
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Title:'
        end
        object Label2: TLabel
          Left = 272
          Top = 203
          Width = 27
          Height = 13
          AutoSize = False
          Caption = 'Type:'
        end
        object Label3: TLabel
          Left = 11
          Top = 217
          Width = 53
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'File Name:'
        end
        object lblPackageName: TLabel
          Left = 66
          Top = 203
          Width = 203
          Height = 13
          AutoSize = False
          Caption = 'lblPackageName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPackageFileName: TLabel
          Left = 66
          Top = 217
          Width = 273
          Height = 13
          AutoSize = False
          Caption = 'lblPackageFileName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPackageKind: TLabel
          Left = 301
          Top = 203
          Width = 38
          Height = 13
          AutoSize = False
          Caption = 'lblPackageKind'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pcPackageInfo: TPageControl
          Left = 4
          Top = 4
          Width = 339
          Height = 197
          ActivePage = tbsComment
          TabOrder = 0
          object tbsComment: TTabSheet
            Caption = 'Comments'
            object memPackageComment: TJvRichEdit
              Left = 0
              Top = 0
              Width = 331
              Height = 169
              Align = alClient
              ClipboardCommands = [caCopy]
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnURLClick = memPackageCommentURLClick
            end
          end
          object tbsScreenshot: TTabSheet
            Caption = 'Screenshot'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlPackagesScreenshot: TPanel
              Left = 0
              Top = 0
              Width = 331
              Height = 169
              Align = alClient
              BevelOuter = bvLowered
              BevelWidth = 2
              Caption = '(None)'
              TabOrder = 0
              object imgPackageScreenshot: TImage
                Left = 2
                Top = 2
                Width = 327
                Height = 165
                Align = alClient
                Stretch = True
                ExplicitLeft = 34
                ExplicitTop = 18
                ExplicitWidth = 303
              end
            end
          end
          object tbsDescription: TTabSheet
            Caption = 'Description'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object memPackageDescription: TJvRichEdit
              Left = 0
              Top = 0
              Width = 331
              Height = 169
              Align = alClient
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnURLClick = memPackageCommentURLClick
            end
          end
        end
      end
    end
    object tbsCDI: TTabSheet
      Caption = 'DiscJuggler'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlCDI: TPanel
        Left = 353
        Top = 3
        Width = 313
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object lblTitleCDI: TJvLabel
          Left = 5
          Top = 5
          Width = 302
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = 'Padus DiscJuggler'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnMakeCDI: TJvImgBtn
          Tag = 1
          Left = 6
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Generate...'
          ImageIndex = 1
          Images = iltLittleIcons
          TabOrder = 0
          OnClick = btnMakeCDIClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnCDIBack: TJvImgBtn
          Left = 211
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Back'
          ImageIndex = 2
          Images = iltLittleIcons
          TabOrder = 1
          OnClick = btnCDIBackClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object gbxDiscLabelCDI: TJvGroupBox
          Left = 18
          Top = 28
          Width = 277
          Height = 48
          Caption = ' Disc Label : '
          TabOrder = 2
          object edtCDIVolumeName: TEdit
            Left = 6
            Top = 18
            Width = 265
            Height = 21
            MaxLength = 32
            TabOrder = 0
            Text = 'INDUCER'
            OnChange = edtCDIVolumeNameChange
          end
        end
        object rgpCDIStructureType: TJvRadioGroup
          Left = 18
          Top = 79
          Width = 277
          Height = 41
          Caption = ' Disc Structure Type : '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Audio/Data'
            'Data/Data')
          TabOrder = 3
          OnClick = rgpCDIStructureTypeClick
          CaptionVisible = True
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 3
        Width = 347
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 1
        object memCDI: TJvRichEdit
          Left = 6
          Top = 5
          Width = 335
          Height = 228
          ClipboardCommands = [caCopy]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnURLClick = memPackageCommentURLClick
        end
      end
    end
    object tbsNRG: TTabSheet
      Caption = 'Nero'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlNRG: TPanel
        Left = 353
        Top = 3
        Width = 313
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object lblTitleNRG: TJvLabel
          Left = 5
          Top = 5
          Width = 302
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = 'Nero Burning Rom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnMakeNRG: TJvImgBtn
          Tag = 2
          Left = 6
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Generate...'
          ImageIndex = 1
          Images = iltLittleIcons
          TabOrder = 0
          OnClick = btnMakeCDIClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnNRGBack: TJvImgBtn
          Left = 211
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Back'
          ImageIndex = 2
          Images = iltLittleIcons
          TabOrder = 1
          OnClick = btnCDIBackClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object rgpNRGStructureType: TJvRadioGroup
          Left = 18
          Top = 79
          Width = 277
          Height = 41
          Caption = ' Disc Structure Type : '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Audio/Data'
            'Data/Data')
          TabOrder = 2
          OnClick = rgpCDIStructureTypeClick
          CaptionVisible = True
        end
        object gbxDiscLabelNRG: TJvGroupBox
          Left = 18
          Top = 28
          Width = 277
          Height = 48
          Caption = ' Disc Label : '
          TabOrder = 3
          object edtNRGVolumeName: TEdit
            Left = 6
            Top = 18
            Width = 265
            Height = 21
            MaxLength = 32
            TabOrder = 0
            Text = 'INDUCER'
            OnChange = edtCDIVolumeNameChange
          end
        end
        object rgpNRGImageType: TJvRadioGroup
          Left = 18
          Top = 122
          Width = 277
          Height = 41
          Caption = ' Image Type : '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'DAO'
            'TAO')
          TabOrder = 4
          OnClick = rgpNRGImageTypeClick
          CaptionVisible = True
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 3
        Width = 347
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 1
        object memNRG: TJvRichEdit
          Left = 6
          Top = 5
          Width = 335
          Height = 228
          ClipboardCommands = [caCopy]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnURLClick = memPackageCommentURLClick
        end
      end
    end
    object tbsMDS: TTabSheet
      Caption = 'Alcohol'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlMDS: TPanel
        Left = 353
        Top = 3
        Width = 313
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object lblTitleMDS: TJvLabel
          Left = 5
          Top = 5
          Width = 302
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = 'Alcohol 120%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnMakeMDS: TJvImgBtn
          Tag = 3
          Left = 6
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Generate...'
          ImageIndex = 1
          Images = iltLittleIcons
          TabOrder = 0
          OnClick = btnMakeCDIClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnMDSBack: TJvImgBtn
          Left = 211
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Back'
          ImageIndex = 2
          Images = iltLittleIcons
          TabOrder = 1
          OnClick = btnCDIBackClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object gbxDiscLabelMDS: TJvGroupBox
          Left = 18
          Top = 28
          Width = 277
          Height = 48
          Caption = ' Disc Label : '
          TabOrder = 2
          object edtMDSVolumeName: TEdit
            Left = 6
            Top = 18
            Width = 265
            Height = 21
            MaxLength = 32
            TabOrder = 0
            Text = 'INDUCER'
            OnChange = edtCDIVolumeNameChange
          end
        end
        object rgpMDSStructureType: TJvRadioGroup
          Left = 18
          Top = 79
          Width = 277
          Height = 41
          Caption = ' Disc Structure Type : '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Audio/Data'
            'Data/Data')
          TabOrder = 3
          OnClick = rgpCDIStructureTypeClick
          CaptionVisible = True
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 3
        Width = 347
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 1
        object memMDS: TJvRichEdit
          Left = 6
          Top = 5
          Width = 335
          Height = 228
          ClipboardCommands = [caCopy]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnURLClick = memPackageCommentURLClick
        end
      end
    end
    object tbsCDR: TTabSheet
      Caption = 'CDRTools'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlCDR: TPanel
        Left = 353
        Top = 3
        Width = 313
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object lblTitleCDR: TJvLabel
          Left = 5
          Top = 5
          Width = 302
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = 'CDRTools'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnMakeCDR: TJvImgBtn
          Left = 6
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Burn...'
          ImageIndex = 1
          Images = iltLittleIcons
          TabOrder = 0
          OnClick = btnMakeCDRClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnCDRBack: TJvImgBtn
          Left = 211
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Back'
          ImageIndex = 2
          Images = iltLittleIcons
          TabOrder = 1
          OnClick = btnCDIBackClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object gbxDiscLabelCDR: TJvGroupBox
          Left = 18
          Top = 28
          Width = 277
          Height = 48
          Caption = ' Disc Label : '
          TabOrder = 2
          object edtCDRVolumeName: TEdit
            Left = 6
            Top = 18
            Width = 265
            Height = 21
            MaxLength = 32
            TabOrder = 0
            Text = 'INDUCER'
            OnChange = edtCDIVolumeNameChange
          end
        end
        object gbxDriveCDR: TGroupBox
          Left = 18
          Top = 122
          Width = 277
          Height = 79
          Caption = ' Drive : '
          TabOrder = 3
          object lblBurnSpeedCDR: TLabel
            Left = 7
            Top = 54
            Width = 62
            Height = 13
            Caption = 'Burn Speed :'
          end
          object Label5: TLabel
            Left = 117
            Top = 54
            Width = 6
            Height = 13
            Caption = 'x'
          end
          object Bevel4: TBevel
            Left = 6
            Top = 45
            Width = 265
            Height = 2
          end
          object Label6: TLabel
            Left = 139
            Top = 55
            Width = 131
            Height = 13
            Caption = 'Recommanded speed is 4x.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbxDrivesCDR: TComboBox
            Left = 6
            Top = 18
            Width = 236
            Height = 21
            Style = csDropDownList
            TabOrder = 0
          end
          object btnRefreshDrivesCDR: TJvImgBtn
            Left = 247
            Top = 17
            Width = 23
            Height = 23
            Hint = 'Retrieve all available drives.'
            ImageIndex = 0
            Images = iltLittleIcons
            TabOrder = 1
            OnClick = btnRefreshDrivesCDRClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object cbxBurnSpeedCDR: TComboBox
            Left = 73
            Top = 51
            Width = 40
            Height = 21
            Style = csDropDownList
            ItemIndex = 2
            TabOrder = 2
            Text = '4'
            Items.Strings = (
              '1'
              '2'
              '4'
              '8'
              '12')
          end
        end
        object rgpCDRStructureType: TJvRadioGroup
          Left = 18
          Top = 79
          Width = 277
          Height = 41
          Caption = ' Disc Structure Type : '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Audio/Data'
            'Data/Data')
          TabOrder = 4
          OnClick = rgpCDIStructureTypeClick
          CaptionVisible = True
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 3
        Width = 347
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 1
        object memCDR: TJvRichEdit
          Left = 6
          Top = 5
          Width = 335
          Height = 228
          ClipboardCommands = [caCopy]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnURLClick = memPackageCommentURLClick
        end
      end
    end
    object tbsConfig: TTabSheet
      Caption = 'Config'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlConfig: TPanel
        Left = 0
        Top = 3
        Width = 666
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object lblTitleConfig: TJvLabel
          Left = 5
          Top = 5
          Width = 656
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = 'Selfboot Inducer Configuration'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object gbxISO9660: TGroupBox
          Left = 12
          Top = 29
          Width = 165
          Height = 84
          Caption = ' ISO9660 options: '
          TabOrder = 0
          object cbxJoliet: TCheckBox
            Left = 12
            Top = 39
            Width = 97
            Height = 17
            Caption = 'Joliet'
            TabOrder = 0
            OnClick = cbxJolietClick
          end
          object cbxRockRidge: TCheckBox
            Left = 12
            Top = 60
            Width = 97
            Height = 17
            Caption = 'Rock Ridge'
            TabOrder = 1
            OnClick = cbxRockRidgeClick
          end
          object cbxLongFileNames: TCheckBox
            Left = 12
            Top = 18
            Width = 97
            Height = 17
            Caption = 'Long file names'
            TabOrder = 2
            OnClick = cbxLongFileNamesClick
          end
        end
        object gbxStructure: TGroupBox
          Left = 12
          Top = 119
          Width = 165
          Height = 82
          Caption = ' Structure: '
          TabOrder = 1
          object cbxAutoDummy: TCheckBox
            Left = 12
            Top = 20
            Width = 97
            Height = 17
            Caption = 'Auto-dummy'
            TabOrder = 0
            OnClick = cbxAutoDummyClick
          end
          object cbxBootstrapFileSystem: TCheckBox
            Left = 12
            Top = 49
            Width = 141
            Height = 17
            Caption = 'Bootstrap in file system'
            TabOrder = 1
            OnClick = cbxBootstrapFileSystemClick
          end
        end
        object gbxTempDir: TGroupBox
          Left = 183
          Top = 29
          Width = 474
          Height = 46
          Caption = ' Temporary folder: '
          TabOrder = 2
          object edtWorkDir: TEdit
            Left = 8
            Top = 16
            Width = 327
            Height = 21
            TabOrder = 0
            OnChange = edtWorkDirChange
          end
          object btnWorkDirBrowse: TButton
            Left = 341
            Top = 14
            Width = 60
            Height = 25
            Caption = 'Browse...'
            TabOrder = 1
            OnClick = btnWorkDirBrowseClick
          end
          object btnWorkDirDefault: TButton
            Left = 407
            Top = 14
            Width = 60
            Height = 25
            Caption = 'Default...'
            TabOrder = 2
            OnClick = btnWorkDirDefaultClick
          end
        end
        object gbxMRLogo: TGroupBox
          Left = 183
          Top = 81
          Width = 474
          Height = 120
          Caption = '     '
          TabOrder = 3
          object btnMRLoad: TJvImgBtn
            Left = 341
            Top = 16
            Width = 60
            Height = 25
            Caption = 'Load...'
            Enabled = False
            TabOrder = 0
            OnClick = btnMRLoadClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object pnlMRLogo: TPanel
            Left = 8
            Top = 16
            Width = 324
            Height = 94
            BevelOuter = bvLowered
            BevelWidth = 2
            Caption = '(No Logo)'
            TabOrder = 1
            object imgMRLogo: TImage
              Left = 2
              Top = 2
              Width = 320
              Height = 90
              Align = alClient
              Center = True
              Transparent = True
              ExplicitLeft = 0
              ExplicitTop = 4
              ExplicitHeight = 86
            end
          end
          object btnMRPreview: TJvImgBtn
            Left = 341
            Top = 51
            Width = 60
            Height = 25
            Caption = 'Preview...'
            Enabled = False
            TabOrder = 2
            OnClick = btnMRPreviewClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object btnMRSave: TJvImgBtn
            Left = 407
            Top = 16
            Width = 60
            Height = 25
            Caption = 'Save...'
            Enabled = False
            TabOrder = 3
            OnClick = btnMRSaveClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object btnMRClear: TJvImgBtn
            Left = 341
            Top = 85
            Width = 126
            Height = 25
            Caption = 'Clear...'
            Enabled = False
            TabOrder = 4
            OnClick = btnMRClearClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object btnMRCheck: TJvImgBtn
            Left = 407
            Top = 51
            Width = 60
            Height = 25
            Hint = 
              'Verify if the selected logo will fit properly in the bootstrap b' +
              'inary.'
            Caption = 'Check'
            Enabled = False
            TabOrder = 5
            OnClick = btnMRCheckClick
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
        object btnBackConfig: TJvImgBtn
          Left = 564
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Back'
          ImageIndex = 2
          Images = iltLittleIcons
          TabOrder = 4
          OnClick = btnCDIBackClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object cbxMRLogo: TCheckBox
          Left = 194
          Top = 79
          Width = 195
          Height = 17
          Caption = 'Insert logo in the Bootstrap (IP.BIN)'
          TabOrder = 5
          OnClick = cbxMRLogoClick
        end
      end
    end
    object tbsHelpAbout: TTabSheet
      Caption = 'Help/About'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlHelpAbout: TPanel
        Left = 0
        Top = 3
        Width = 666
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object btnBackHelpAbout: TJvImgBtn
          Left = 564
          Top = 207
          Width = 97
          Height = 26
          Caption = 'Back'
          ImageIndex = 2
          Images = iltLittleIcons
          TabOrder = 0
          OnClick = btnCDIBackClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object memHelp: TJvRichEdit
          Left = 6
          Top = 5
          Width = 655
          Height = 198
          ClipboardCommands = [caCopy]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnURLClick = memPackageCommentURLClick
        end
        object btnAbout: TJvImgBtn
          Left = 6
          Top = 207
          Width = 97
          Height = 26
          Caption = 'About...'
          ImageIndex = 4
          Images = iltLittleIcons
          TabOrder = 2
          OnClick = btnAboutClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
    end
    object tbsDebug: TTabSheet
      Caption = '< DEBUG >'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlDebug: TPanel
        Left = 0
        Top = 3
        Width = 666
        Height = 239
        BevelOuter = bvLowered
        TabOrder = 0
        object btnDebugEnableActionState: TButton
          Left = 8
          Top = 40
          Width = 134
          Height = 25
          Caption = 'Button State'
          TabOrder = 0
          OnClick = btnDebugEnableActionStateClick
        end
        object btnDebugPrintDrives: TButton
          Left = 8
          Top = 9
          Width = 134
          Height = 25
          Caption = 'Print Drives'
          TabOrder = 1
          OnClick = btnDebugPrintDrivesClick
        end
        object btnDebugGenerateHeaderIso: TButton
          Left = 8
          Top = 71
          Width = 134
          Height = 25
          Caption = 'Make Header ISO'
          TabOrder = 2
          OnClick = btnDebugGenerateHeaderIsoClick
        end
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 273
    Width = 674
    Height = 72
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object pnlBurn: TPanel
      Left = 238
      Top = 2
      Width = 242
      Height = 65
      BevelOuter = bvLowered
      TabOrder = 0
      object btnNRG: TJvImgBtn
        Left = 64
        Top = 5
        Width = 56
        Height = 56
        Hint = 'Generate a Nero Burning Rom image.'
        ImageIndex = 2
        Images = iltMainToolbar
        TabOrder = 0
        OnClick = btnCDIClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object btnMDS: TJvImgBtn
        Left = 122
        Top = 5
        Width = 56
        Height = 56
        Hint = 'Generate an Alcohol 120% image.'
        ImageIndex = 3
        Images = iltMainToolbar
        TabOrder = 1
        OnClick = btnCDIClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object btnCDR: TJvImgBtn
        Left = 180
        Top = 5
        Width = 56
        Height = 56
        Hint = 'Burn directly your compilation with the embedded CDRecord.'
        ImageIndex = 4
        Images = iltMainToolbar
        TabOrder = 2
        OnClick = btnCDIClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object btnCDI: TJvImgBtn
        Left = 6
        Top = 5
        Width = 56
        Height = 56
        Hint = 'Generate a Padus DiscJuggler image.'
        ImageIndex = 1
        Images = iltMainToolbar
        TabOrder = 3
        OnClick = btnCDIClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
    object pnlMainCtrl: TPanel
      Left = 486
      Top = 2
      Width = 184
      Height = 65
      BevelOuter = bvLowered
      TabOrder = 1
      object btnHelpAbout: TJvImgBtn
        Left = 64
        Top = 5
        Width = 56
        Height = 56
        Hint = 
          'Show Help and About information on this Selfboot Inducer release' +
          '.'
        ImageIndex = 6
        Images = iltMainToolbar
        TabOrder = 0
        OnClick = btnHelpAboutClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object btnConfig: TJvImgBtn
        Left = 6
        Top = 5
        Width = 56
        Height = 56
        Hint = 'Advanced configuration of the tool.'
        ImageIndex = 5
        Images = iltMainToolbar
        TabOrder = 1
        OnClick = btnConfigClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object btnQuit: TJvImgBtn
        Left = 123
        Top = 5
        Width = 56
        Height = 56
        Hint = 'Exit the application.'
        ImageIndex = 7
        Images = iltMainToolbar
        TabOrder = 2
        OnClick = btnQuitClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
    object pnlMenuType: TPanel
      Left = 4
      Top = 2
      Width = 228
      Height = 65
      BevelOuter = bvLowered
      TabOrder = 2
      object lblMenuType: TLabel
        Left = 8
        Top = 13
        Width = 89
        Height = 13
        Caption = 'Select Menu Type:'
      end
      object cbxMenuType: TComboBox
        Left = 8
        Top = 28
        Width = 89
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Multi Menu'
        OnClick = cbxMenuTypeClick
        Items.Strings = (
          'Multi Menu'
          'Single Menu'
          'SBI2Boot')
      end
      object btnMakeDisc: TJvImgBtn
        Left = 108
        Top = 5
        Width = 56
        Height = 56
        Hint = 'Prepare the compilation with all the selected packages.'
        ImageIndex = 0
        Images = iltMainToolbar
        TabOrder = 1
        OnClick = btnMakeDiscClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object btnCleanDiscRoot: TJvImgBtn
        Left = 167
        Top = 5
        Width = 56
        Height = 56
        Hint = 
          'Clean the compilation. All the files in the disc root directory ' +
          'will be deleted !'
        ImageIndex = 8
        Images = iltMainToolbar
        TabOrder = 2
        OnClick = btnCleanDiscRootClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
  end
  object BalloonHint: TJvBalloonHint
    CustomAnimationStyle = atNone
    DefaultBalloonPosition = bpRightUp
    DefaultIcon = ikNone
    Options = []
    UseBalloonAsApplicationHint = True
    Left = 58
    Top = 316
  end
  object iltMainToolbar: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 48
    Width = 48
    Left = 114
    Top = 316
    Bitmap = {
      494C010109000B00040030003000FFFFFFFF2100FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C000000090000000010020000000000000B0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004050504080909090A0B0B0B090A0A0A0808080808080808080909090809
      0909080808080606060604050504030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050505053234353A61646573848787A09DA0A0C5AFB1
      B1DEB1B2B2EDAAABABF49A9B9BF4878888F3767777EB6B6E6EDA686A6ABF6467
      679C545858713133343B191B1B1D1617171910111112090A0A0A030404030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2D2E327C7F7F9AB3B4B4ECDBDBDBFFE6E6E6FFECECECFFEEEEEEFFECEC
      ECFFE0E0E0FFCCCCCCFFB2B2B2FF989898FF7F7F7FFF666666FF535353FF4646
      46FF464646FF5E5E5EFE787A7AD8616465872B2D2D331D1F1F221719191B0D0E
      0E0F040505040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0D0D0D7A7D
      7D9DBABBBBFBD1D1D1FEDEDEDEFEE7E7E7FFECECECFEEFEFEFFEF1F1F1FFEDED
      EDFEE0E0E0FECDCDCDFFB4B4B4FE999999FE7F7F7FFF666666FE535353FE4848
      48FF494949FE636363FE8A8A8AFFAEAEAEFEA1A2A2ED51545469202122251F21
      21241719191B090A0A0A02020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000585C5C6AAFAF
      AFFFCACACAFED5D5D5FEDFDFDFFEE7E7E7FFECECECFEF0F0F0FEF1F1F1FFEEEE
      EEFEE2E2E2FED1D1D1FFBBBBBBFEA2A2A2FE878787FF707070FE5B5B5BFE4D4D
      4DFF4B4B4BFE636363FE8C8C8CFFB5B5B5FEC9C9C9FF8A8C8CCF202122252022
      2226202122251C1D1D200C0C0D0D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000075787891B2B2
      B2FFCCCCCCFFD8D8D8FFE2E2E2FFE9E9E9FFEDEDEDFFEBEBEBFFE7E7E7FFE2E2
      E2FFDDDDDDFFDADADAFFD6D7D6FFD1D2D1FFCACACAFFBEBEBEFFADADADFF9797
      97FF818181FF7E7D7DFF959595FFB7B7B7FFCCCCCCFFADAEAEF42729292E2022
      222620222226202122251B1C1C1F080808080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B8D8CB7B3B3
      B3FFD0D0CFFEDEDEDEFEDEDEDDFEDBDBDAFFD4D4D3FED1D2D1FED2D2D1FFD1D1
      D0FED1D1D0FED2D3D2FFD1D1D0FED1D1D0FED2D3D2FFD1D1D0FED1D1D0FED2D2
      D2FFD2D2D1FECCCCCBFEC2C1C1FFC3C3C3FED3D3D3FFC3C3C3FE424545522022
      2226202122252021222520212225121313140202020100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202019B9B9ADAC6C5
      C4FFDADAD9FED3D3D1FED2D2D0FED3D3D2FFD2D2D0FED2D2D0FED3D3D2FFD2D2
      D0FED2D2D0FED3D3D2FFD2D2D0FED2D2D0FED3D3D2FFD2D2D0FED2D2D0FED3D3
      D2FFD5D5D3FED8D8D7FEDBDBDAFFD6D6D5FECCCCCAFFCBCACAFE5F62627F2022
      22262021222520212225202122251718181A0303030200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0F0F10BBBAB7F59594
      92FF9E9D9BFFC7C7C5FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4
      D1FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4D1FFD4D4
      D1FFD6D6D4FFDADAD8FFDEDEDCFFE1E1DFFFD6D5D4FFB5B3B1FF7D7E7DAD2022
      2226202222262022222620212225161717190303030200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F424148BEBDBAFEA1A0
      9EFF908F8CFE888784FE9C9B98FEB5B3B0FFC7C6C3FED2D1CEFED4D3D0FED4D3
      D0FED3D2CFFED5D4D1FFD3D2CFFED3D2CFFED5D4D1FFD3D3D0FED4D3D0FED3D2
      CFFED0CECBFEC9C7C5FEC3C1BFFFC1C0BEFECECCCAFFD6D4D3FEABAAA6E02729
      292E20212225202122251F2121240E0F0F100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003040403484A4A51D0CFCDFEADAC
      A9FF989693FF93908DFF93908DFF928F8BFF918E8AFF95928EFFA09D99FEA8A5
      A1FDACAAA7FCB1B0ACFBB4B1ADFEB1AEABFCB0AEAAFBAAA9A5FCA6A39FFDA09D
      99FEA39F9BFFAEABA8FFBBB8B5FFC7C4C2FFD3D0CEFFDBD9D8FFC1C0BCE32F31
      313720212225202122251719191B040505040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000080808083E404046C4C6C5D4C6C4
      C1FEAAA7A4FE9D9A97FE9C9995FE9D9A96FFA09D98FEA29E99FEA29E99FFA4A0
      9BFEA4A09CFEA4A09BFFA4A09CFEA5A09CFEA5A09CFFA7A29EFEA9A49FFEA9A5
      A0FFB0ACA8FEBAB6B2FEC2BEBBFFCCC8C5FED7D4D2FFDEDDDBFDB6B6B5CA383A
      3A421F2121241718181A07070707000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D0E5355555D6E7171799D9F
      9DABCECBC7F7BAB6B2FEAFACA8FEA9A6A1FFA9A5A0FEAAA6A1FEABA49DFFADA8
      A3FEAFAAA5FEAFAAA5FFB0ABA6FEB0ABA6FEAFAAA5FFB1ACA6FEB1ACA7FEB1AC
      A7FFB8B3AEFEC0BDB9FECBC7C3FFD4D1CEFED4D1D0F1B4B6B5C6B2B5B4C24244
      444D121313140505050500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000013151516686B69746E7171794A4D
      4D534346464C86878494C1BDB9DDCCC7C3FEC3C0BBFEC0B2A9FEBF957FFFBD9D
      89FEBE896BFEBCAEA4FFBCB6B1FEBCB7B1FEBCB6B1FFBFB9B3FEC0BBB5FEC2BD
      B7FFC7C1BEFECBC7C3FAB7B7B5D99C9D9CB28F91909FA1A3A3B0B9BABAC4484A
      4A52070707070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C1E1E207E7F7D8A7376767E5052
      52593436363B2A2C2C302B2D2D31484B4A526A6B6B76BB8F75DFC55D22FFC55C
      21FFC55D22FFC67445FEC4BDB8EBBFBBB6E5B7B4AFDCAAA8A4CC989793B68181
      80996B6D6C7C5A5D5C676366657075787782898C8C95A0A2A1AAB8B9B9C05E60
      5F690D0D0D0E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A2C2C3090918E9C777A7982585B
      5A6267676473928175A6B87852E0827871924E4F4E58C3612CF9C55D22FFC35B
      22FEC35B22FEC45B22FE78726C8731333338313333383335353A3436363B3436
      363B3B3D3D434D5050575F6161697376757E898C8B94A1A3A2ABB8BABAC1787A
      7885141515170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C3E3E449FA09EAA7B7E7D86B395
      83CBC8642EFEC35B22FEC35B22FE7D766F8C857A7396C35B22FEC55D22FFC35B
      22FEC35B22FEC45C21FFBE6F42EC4244444B3739383E3739383E3739383E3739
      383E3F4141475154535B6366666E777979828E8F8F98A4A6A5AEBABCBBC39292
      8F9F1E1F1F220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505055153525BA9AAA9B3989691A5D17E
      4EFDC9652DFFC55D22FFC55D22FF76726D854345454CB67D5CDAB57E5ED99784
      77AB7D766F8CAF7E62CFAB8166CA877A72983E4040463E4040463E4040463E40
      40464547474E575A5961686B6A737C7E7D879293939CA8A9A8B1BEBEBEC6ABAA
      A6B82A2C2C300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D0E6A6B6A76AAACAAB4C2A897D7D17D
      4DFFC8642EFEC35B22FEC16531F66B6A67784446464D60615F6C6C6A67794446
      464D897F759AC45C21FFC35B22FEB37C5CD7474948504446464D4446464D4547
      474E4C4E4D555E605F686E716F798183828C959796A0AAACAAB4C0C0C0C8C0BF
      BACB3C3E3E440000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001819191B83838090B4B2AFBED79C7BF9C48E
      71E59F8B7DB374726D825455545E4C4E4D554C4E4D554C4E4D554D4F4E565859
      5862C16B3BF1C55D22FFC35B22FEC45D24FD575857614C4E4D554C4E4D554C4E
      4D554D504F575F6160697476757F86888791999B99A4AEB0AFB8C2C3C2CAD0CE
      CCD85254535C0202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002527272A999893A7C5BCB5D2CBA690E49F93
      8AB05C5D5D665355545D5355545D5355545D5355545D5355545D5355545DA187
      78B8C55C21FFC55D22FFC55D22FFB2846AD15254535C5355545D5355545D5355
      545D5355545D5355545D6B6C6B758B8C8B969E9F9DA8B3B3B1BBC5C5C4CDDADA
      D8E06A6B69760707070700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003335353AADAAA5BBDBBEAEEDD99874FEC491
      74E492877DA35B5C5B655B5C5B655B5D5B655B5C5B655B5C5B65716F6C7DC362
      2AFAC35B22FEC55D22FFC35B22FE807A758E5B5D5B655B5C5B655B5C5B655B5D
      5B655B5D5B655B5C5B655B5D5B657273717DA1A29FABB5B5B3BEC8C7C5CFDBDB
      D8E0858480921213131400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004648484FC0BCB6CDE3B9A2FBD99874FED07C
      4DFF918780A06264626D6264626D6264626D6264626D6264626D90857CA1C167
      34F6C35B22FEC55D22FFBA7C58E16465646F6264626D6264626D6264626D6264
      626D676967726A6B6A756264626D6264626D78797683B6B6B3BFCBCBC9D2DCDB
      D9E19C9A94AA1F20202300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005F615F6ACCCAC5D8E0BEA9F5DB9775FFCB88
      62F27272707D6A6B69756A6B69756A6B69756A6B69756A6B69756A6B69757272
      6F7EA38C7DB7C16C3DF293887FA46A6B69756A6B69756A6B69756A6B69756A6B
      69756F706E7A7F807D8A8282808D6E6F6D796A6B69757C7C7A87C5C4C1CDDDDC
      DBE2B3AEA8C02E30303500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030404037C7B7788D8D5D1E1DBC2B2ECCFAA94E6AA9D
      92BA9C8F83AD7E7C778A7272707D7272707D7373707E827F7A8F9B8C81ADA88D
      7BBF7373707E787874847474717F7272707D7272707D7272707D7272707D7272
      707D777774828585829092928F9D9B9B98A680807C8B7272707D82817F8DD2D1
      CED9C6C1BAD44144434A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0D0D0D95928CA3DCDBD8E3C2C1BECAA9A7A4B3B89F
      8DCEC7632CFEB58C72D1797A768584827C91BB8464DCC55E25FDC45C21FFC45C
      23FE938B82A27A7A7685797A7685797A76857A7A7685797A7685797A76857A7A
      76857F7F7B8A8C8B8897999793A3A5A5A1B0B3B3AEBD979692A2797A76858786
      8292C8C3BBD5585A596200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1D1D1FA9A49DB8DEDEDAE4C6C4C1CEC9B1A1DCD17C
      4DFFC7632AFFC55E25FD9B9086AB82817E8EBB8768DCC55D22FFC55D22FFC55D
      22FFB98B6ED782817D8D82817D8D82817D8D82817D8D82817D8D82817D8D8281
      7D8D8685819193918E9E9F9D98A9ABA9A5B5B9B8B4C2C8C5C2CFAFACA8B98382
      7E8E9E9891AD7575728100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E303035BCB5ABCADFDFDBE5CAC7C4D1BFB5ABCBD17F
      4FFDC6612AFEC35B22FEC17448EFA29489B2C55E25FDC35B22FEC55D22FFC362
      2AFBBF8360E3928D879F89878395898783958A88849589878395898783958A88
      84958D8B87989A9893A5A4A29EAFB0AFA9BABEBBB6C6CBC8C5D2D7D5D3DEC2BF
      BACB9F9A92AD928F8A9F04050504000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004346454CCDC5BBDBE3E0DDE7CFCBC6D5B8B5B1C2C89B
      80E5C66029FEC35B22FEC46732F8C2784DEDC35B22FEC35B22FEC55C21FFB893
      7AD293908B9E94918BA0928F8A9D928F8A9D928F8A9D928F8A9D928F8A9D928F
      8A9D95928DA0A19E98ACABA8A2B5B7B4AFC0C3BFBBCBCFCCC8D6DBD8D5E1E6E5
      E3EBD6D0C9E0A8A099B70F101011000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005B5D5C66DAD1C7E8E5E2DEE9D1CDC9D8BEBAB4C7B4AB
      A2C1C66D3CF7C37140F4C17E57E9C45C21FFC35B22FEC46028FCC37F56EB9E98
      90AA9A9690A59A9690A59A9690A59A9690A59A9690A59A9690A59A9690A59A96
      90A59D9993A8A9A59EB3B1ADA8BBBCB7B2C5C8C3BECFD2CFCBD9DEDBD7E3E8E6
      E4ECF2F1EFF5BDB4AACB21232326000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078787684E6DED7F2E6E5E1EBD4D1CCDBC2BEB7CBB3AE
      A7BDA6A098B1AB9F94B9B19F93C0AFA193BEACA195BAA79F96B3A29C96ADA29C
      96ADA29C96ADA39D96ADA29C96ADA29C96ADA39D96ADA29C96ADA29C96ADA39D
      96ADA49F98AFAEA9A3B9B7B2ABC1C2BDB6CACCC7C2D3D5D2CDDCDFDCD9E5EAE8
      E5EEF2F1EFF5CBC1B7DA373A393F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9690A7EEEAE4F7E8E6E2ECD8D4CFDFC8C2BBD0B9B4
      ACC3ABA59DB6A9A39BB4A9A39BB4A9A39BB4A9A39BB4A9A39BB4A9A39BB4A9A3
      9BB4A9A39BB4A9A39BB4A9A39BB4A9A39BB4A9A39BB4A9A39BB4A9A39BB4A9A3
      9BB4ABA59DB6B6B0A8C0BDB8B1C7C7C1B9CFD0CBC4D7D8D4CFDFE4DFDBE8EBE9
      E6EFF3F2F0F6D8CEC4E750515159000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004050504B9AFA4C8F5F2EEF9E9E7E3EEDCD6D1E2CEC7C0D5BFB8
      B0C9B2ABA1BDB1AAA0BCB1AAA0BCB1AAA1BCB1AAA0BCB1AAA0BCB1AAA1BCB1AA
      A0BCB1AAA0BCB1AAA1BCB1AAA0BCB1AAA0BCB1AAA1BCB1AAA0BCB1AAA0BCB1AA
      A1BCB4ACA3BEBCB5ACC6C3BDB4CCCBC6BED4D4CEC7DBDDD8D3E3E5E1DDEAEEEA
      E8F1F5F3F1F7E4DAD0F26B6C6A76000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000016171719CABDB0DAF7F5F3F9EBE9E5F0DFD9D4E5D2CAC2D9C6BE
      B4CFBAB1A6C4B8B0A5C3B8B0A5C3B9B1A6C3B8B0A5C3B8B0A5C3B9B1A6C3B8B0
      A5C3B8B0A5C3B9B1A6C3B8B0A5C3B8B0A5C3B9B1A6C3B8B0A5C3B8B0A5C3B9B1
      A6C3BAB1A7C4C3BBB1CCC9C2B8D2D0C9C1D8D8D2CADFE0DBD4E6E7E4DFECEFEB
      E8F2F6F4F2F8EDE6DEF98A888496000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002F323136D4C8B9E4F8F6F4FAEFEAE7F2E3DCD5E8D7CFC7DECBC3
      B8D4C1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6
      ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6ABCAC1B6
      ABCAC2B7ABCBC9C0B5D2CFC6BBD7D6CEC4DDDCD6CEE3E3DCD6E8E9E6E0EEF1EE
      EBF4F7F5F3F9F4F0EBFCADA79DBA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4C4C53DED1C4EEF8F6F4FAF0ECE9F4E6DFD9EBDBD2C9E2D2C7
      BCDAC7BBAFD1C7BBAFD1C7BBAFD1C7BCAFD1C7BBAFD1C7BBAFD1C7BCAFD1C7BB
      AFD1C7BBAFD1C7BCAFD1C7BBAFD1C7BBAFD1C7BCAFD1C7BBAFD1C7BBAFD1C7BC
      AFD1C8BEB1D2CFC5B8D8D4CBC0DCDAD0C7E1E0D9D0E6E7E0DAECEDE8E2F1F2EE
      EBF5F7F5F2F9FAF8F6FDCBBDAEDA050505050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066676571E6DACEF5F9F8F6FBF1EDEAF5E9E2DBEEE0D6CBE6D7CC
      BFDFCDC0B2D7CDC0B2D7CDC0B2D7CFC1B3D8CDC0B2D7CDC0B2D7CFC1B3D8CDC0
      B2D7CDC0B2D7CFC1B3D8CDC0B2D7CDC0B2D7CFC1B3D8CDC0B2D7CDC0B2D7CFC1
      B3D8CFC1B3D8D5C9BCDDDACFC2E1DED4CAE5E4DBD3EAE8E2DBEEEEE9E3F2F5F0
      ECF7F8F6F3FAFCFBFAFDD8C7B6E8191B1B1D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086848091EBE3D9FBFAF9F7FCF5EFEAF7EBE3DBF0E4DACFEADBCF
      C1E3D5C7B7DED5C7B7DED5C7B7DED5C7B7DED5C7B7DED4C5B5DED3C4B5DED1C2
      B4DED1C2B3DED1C2B3DED1C2B3DED1C2B3DED1C2B4DED2C4B5DED4C5B5DED4C6
      B6DED5C7B7DEDCCFC1E3E0D3C6E6E3D8CCE9E8DFD5EDEDE5DDF1F0EBE5F4F6F1
      ECF8F9F8F5FBFDFBFBFDDFCEBFEF3638383D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A8A29AB4F2EBE3FEFAF9F7FCF3EDE9F8E7DFD8F3DFD6CBF1DAD0
      C6EFDAD0C5F0DCD4CAF2DFD8D2F5E2DCD7F7E4E0DBF9E6E3DFFAE3E3E1FBDEDE
      DCFCD4D4D4FDC7C6C5FDB7B6B5FDA5A4A4FD949392FD868684FC7C7B78FB7470
      6DFA73706CF878726FF8837E79F7948F89F6ACA7A1F6C7C0BBF7DDD8D2F7EDE8
      E6F9F7F6F3FBFCFBFBFDE5D6C7F55254535C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020201C5B8AAD8D8D4D1FED1D0CEFCCFCDCAFCD5D5D4FEDCDCDCFEE3E3
      E3FFE7E7E7FEEBEBEBFEEEEEEEFEF0EFEFFEF0EFEFFEF0EFEEFEECEBEAFEE3E2
      E1FDD9D7D6FDCDCCCAFDBEBCBBFDAEACAAFD9B9A98FD898786FD787776FD6463
      62FE545353FE494949FE454545FF484848FE595959FF727272FE909090FEAEAD
      ACFEC6C5C3FCDAD9D9FED9CEC4FA6F706E7D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000484B4B55A19F9DFAB0B0B0FFC4C4C4FFD0CFCFFEDBD9D7FDE5E3E1FDEBE8
      E6FDEDE9E4FBEFE8E1F9F0E7DDF8F0E6DAF7EFE4D8F6EFE4D7F6EEE2D5F5EEE2
      D5F5EEE1D5F5EDE0D3F4EDDFD2F4EDDFD2F4EDE0D4F5ECE0D4F5EBDFD4F5EADE
      D2F6E5D9CDF6DBD0C7F7CFC7BDF8C1BBB3FAB5B2AFFBB1AEACFDB2B0AEFDB8B6
      B4FDC3C3C2FECECECEFFCFCFCFFFB1B1AFE12D2F2F3400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868888C7AAA9A8FED1CECAFDE6DDD3FAEEE1D4F8EFDFCFF7EDDBC7F5EBD8
      C4F3EBD8C3F3EBD8C3F3EBD8C3F3ECD8C4F3EBD8C3F3EBD8C3F3ECD8C4F3EBD8
      C3F3EBD8C3F3ECD8C4F3EBD8C3F3EBD8C3F3ECD8C4F3EBD8C3F3EBD8C3F3ECD8
      C4F3EBD8C3F3EBD8C3F3ECD8C4F3EBD8C3F3ECD8C3F3EBD8C4F3EDDBC9F5EFE0
      D0F7EDE1D4F8E6E0D7FBDCD9D6FDCFCFCEFE7E81819700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000929494C69A9A9AFEA29E97FCC6B9ABFADCC9B7F9EAD4BFF8EFD8C3F8F1DA
      C5F8F2DBC6F8F2DAC5F8F1DAC5F8F2DBC6F8F1DAC5F8F1DAC5F8F2DBC6F8F1DA
      C5F8F1DAC5F8F2DBC6F8F1DAC5F8F1DAC5F8F2DBC6F8F1DAC5F8F1DAC5F8F2DB
      C6F8F1DAC5F8F1DAC5F8F2DBC6F8F2DBC6F8F2DBC6F8F1DAC5F8EFD8C3F8E8D1
      BDF8DAC8B7F9C9BDB2FAB8B3AEFDC0C0C0FE7E82829600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000676A6A79929292F9858585FE939393FF9B9B9BFFA5A4A3FEB0ACA8FEBBB4
      ADFDC6BCB2FDD0C3B7FDD5C7B9FCDBCBBBFCDECEBCFCE1D0BDFCE4D1BDFCE5D2
      BDFCE6D3BDFCE7D3BDFCE6D3BDFCE5D2BCFCE2CFBAFCDECBB6FCDAC6B2FCD0BE
      ABFCC5B4A3FCB7A99BFCA99D8FFC9B8F83FD908680FD89827FFD8A8683FE9393
      92FEA1A1A1FFA8A8A8FFAAAAAAFEB5B5B5F246494A5100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000020222225696D6D7C969898BFA9AAAAEFAAAAAAFDAAAAAAFEACAC
      ACFEB0B0B0FEB3B3B3FEB6B6B6FEB7B7B7FFB8B8B9FEB8B8B9FEB5B5B5FFB0B1
      B1FEA8A8A8FE9C9D9DFF929292FE858686FE79797AFF6B6C6CFE606060FE5757
      57FF4D4D4EFE484848FE464646FF484848FE555555FF686868FE838383FE9F9F
      9FFCAAABABE9949797B45E61626D131515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000080808082426272A454848506165
      6572797D7D90898C8DA69A9C9CBFA6A8A8D2ADAEAFE2B1B3B3EBB4B4B4F2B2B3
      B3F6ADADADF9A8A9A9FB9FA0A0FC989999FB919191F98C8D8DF5898A8AF08889
      8AEA898B8BDF868787CF858787BA7B7E7EA27074748B5A5E5E6C3F4142491E1F
      1F22050505050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030206060606080909090A0B
      0B0B0C0D0D0D0D0D0D0E0D0D0D0E0D0D0D0E0C0D0D0D0A0B0B0B080808080505
      0505020202010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080808373939426B6E6F95818484BA3D40
      414B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000072767689AEAEAFFFADAEAFFFADADAEFEACACADFFABABACFFABABACFE7276
      7689000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030205050505090A0A0A0E0F
      0F10131415161719191B1B1C1C1F1D1F1F222021222520222226202122251E20
      20231B1C1C1F1719191B131415160E0F0F10090A0A0A05050505030303020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606063033333A6568688B929494CDB1B4B4DAB2B4B5D1A0A2A3D17175
      7592000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D0E5E61626E1E1F1F220000000000000000000000000000
      000072767689C1C2C2FFCCCDCDFFCECECEFED2D3D3FFD4D5D5FFC0C0C1FE7276
      7689000000000000000000000000000000001E1F1F225D61616E0D0D0D0E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030302070707070C0C0D0D131415161C1D1D202526
      272B2B2E2E343234343C37393A433A3D3D483D40404C3E40414D3D40404C3A3D
      3D4837393A433234343C2B2E2E342526272B1C1D1D20131415160C0C0D0D0707
      0707030303020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000202020103030302030303020303030203030302030303020303
      0302030303020303030203030302030303020303030203030302030303020303
      0302030303020303030203030302030303020303030203030302030303020303
      0302030303020303030203030302030303020303030203030302030303020303
      0302030303020303030203030302030303020303030203030302020202010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040505042B2D2D335F63
      6382868888C5A7AAAAD3AAADADC6A7AAAABCA7A9AAB9A9ACACBC9D9FA0C06E72
      728A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004144444BA2A4A4CEC9CACBFE868A8AA50304040300000000000000000000
      000072767789C3C4C4FECFD0D0FED3D3D3FED6D7D7FED9D9D9FEC2C2C3FE7276
      76890000000000000000000000000304040385898AA6ACACADFE9A9C9DCE4144
      444B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020201050505050C0C0D0D151616183A3D3D465E61627C707374A67779
      7AC87C7D7EE979797AF7757576FF757576FF757576FF787879F97C7D7EED7476
      77D0707373B566696B97545858713E41414E363939422B2E2E34202122251516
      16180B0C0C0C0505050502020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02010A0B0B0B1C1E1F212B2D2F332F3234392F3234392F3234392F3234392F32
      34392F3234392F3234392F3234392F3234392F3234392F3234392F3234392F32
      34392F3234392F3234392F3234392F3234392F3234392F3234392F3234392F32
      34392F3234392F3234392F3234392F3234392F3234392F3234392F3234392F32
      34392F3234392F3234392F3234392F3234392F3234392B2D2F331C1E1F210A0B
      0B0B020202010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040505042628282D5A5D5D7A7C7F7FBD9C9E9ECD9DA0
      A0BB9A9D9EB09C9E9EAD9CA0A0AC9DA0A0AB9EA1A1ACA1A4A4B1999C9CB96D71
      7188000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002A2C2C309194
      94B2CBCCCDFECDCDCEFFC0C0C0FEC1C2C3FB3C3E3F4500000000000000000000
      000072777789C9C9CAFFD2D3D3FFD5D6D6FED9D9D9FFDDDDDDFFC4C4C5FE7277
      77890000000000000000000000003C3E3F45ABACADFBE2E2E3FECECECFFFAAAA
      ABFF8D9091B22A2C2C3000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      0302080808081E2020235558596B76797AB77C7D7EE7878889E1ADADB1F7D3D3
      D3FFE6E6E6FFF5F5F5FFFEFEFEFFFEFEFEFFFEFEFEFFF7F7F7FFE6E6E6FFD4D4
      D4FFBCBCBEFF858595F476767EF1737677CB656869954A4D4D60393C3C462B2E
      2E341D1F1F221112121308080808030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202011214
      141551546370444893D81A1E86FB02077CFF02077CFF02077CFF02077CFF0207
      7BFF02077BFF02077BFF02077BFF02077AFF02077AFF02077AFF020779FF0207
      79FF020779FF020778FF020778FF020777FF020777FF020777FF020777FF0207
      77FF020777FF020777FF020777FF020777FF020777FF020777FF020777FF0207
      77FF020777FF020777FF020777FF020777FF020777FF12187FFB3F428ED85053
      626F121414150202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000405
      05042123232755585872757878B5939595CA969999B7919495A88F9292A18E91
      919E8E91919D9295959F939697A0959999A1979A9AA39A9D9DA9959898B56C6F
      7087000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004050504777A7B8FC0C2C2F0D6D7
      D8FFB9BABBFEAFB0B1FFB8B9B9FED0D0D1FF9DA0A1C808090909000000000000
      000073777789CCCCCDFFD5D5D5FFD7D7D7FEDBDBDBFFDFE0E0FFC6C6C7FE7377
      77890000000000000000090A0A0A999B9CC8CFCFD0FFF9F9F9FEFCFCFCFFEBEB
      EBFFC0C0C1FEA4A5A6F0767A7A8F040505040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030404031213
      1314525656677C7E80D1878989DCACAEAFEBF3F3F4FEEDEDEDFFE8E7E7FFEBE7
      E5FFCBC2BFFFB5A7A1FFA49089FFA18881FFA7908AFFB5A39FFFC7BCBAFFDFD9
      D8FFE2E1E0FFEDEDEDFFF2F2F4FEA9AAB6F67F808CEE767779DF656969964649
      495A353838412527272C161717190A0B0B0B0304040300000000000000000000
      00000000000000000000000000000000000000000000000000000A0B0B0B5154
      63703C4099FA4449A2FE3D59ABFF3252ABFE3254ACFE3155ACFF3255ADFE3156
      ACFF3256ADFE3256AEFE3257AFFE3158AEFF3257AFFE3258AFFE3159AFFF3258
      AFFE3259B0FE315AAFFF3259B0FE3259B0FE315AAEFF3259AFFE3259AFFE315A
      AEFF3258AEFE3258AEFE3159ADFF3257ADFE3158ACFF3257ACFE3256ACFE3157
      AAFF3255ABFE3255AAFE3155A8FF3254A9FE3253A8FE395AA9FF303D95FE2327
      88FA515462700A0B0B0B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030404031D1F1F225255566D7174
      75B08D8F8FC7929595B48D9090A48A8D8D9C888B8B98888B8C97888B8C96888C
      8C95898C8D958A8D8E968C8F90988E92929A9194949D969999A5949797B36C6F
      6F86000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303029B9E9EC3DADBDBFEAAAB
      ACFEADAEAFFEB5B6B6FEBCBDBDFEC1C2C2FECCCDCEFC575B5B66000000000000
      000073777789CECFCFFED6D7D7FED8D9D9FEDDDDDDFEE0E0E0FEC7C7C8FE7377
      77890000000000000000575B5B66B4B5B6FCEFEFF0FEFAFAFAFEFCFCFCFEF9F9
      F9FEF3F3F3FEC0C0C0FE929696C3030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040505043335363C797C
      7CB488898BD9D1D1D1F8F7F7F7FED4D3D3FF9A9593FF65534AFF6F4D40FF8153
      42FF8D5744FF995C48FFA15F4BFFA8604CFFA75F4BFFA35C49FF9D5846FF9254
      46FF835347FF7A5C56FFA49D9BFFD7D5D5FFF6F6F8FFC2C2C9F97F808CED7477
      78CD595C5C7A3B3E3F4A2B2D2D33191B1B1D0B0C0C0C03040403000000000000
      00000000000000000000000000000000000000000000000000001C1E1F21454A
      96D84549A4FE5179C2FE14229BFF070D94FE071099FE06139DFF0718A3FE061A
      A7FF071FADFE0722B1FE0726B6FE0628B9FF072DBEFE072FC0FE0631C5FF0735
      C7FE0737CAFE0637CDFF0739CEFE073ACEFE0639CFFF0739CEFE0738CCFE0636
      CBFF0735C7FE0732C4FE062EC1FF072DBEFE0628B9FF0726B6FE0722B1FE061E
      ACFF071BA8FE0718A3FE06139DFF071099FE070C93FE0B1193FF3E5FB9FE3746
      9EFE3F428ED81C1E1F2100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030404031B1C1C1F4E5151666B6E6FA8868989C48D8F90B0888B
      8CA0848787978286869382868691828686908185858F8386878F848787908689
      8991868A8A92888C8C94888C8C94898D8D958D909099929595A1919394B06A6E
      6F85000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000030323237C8C9CAF5BEBF
      C0FFB2B3B3FEB8B9B9FFBEBFBFFEC0C1C1FFD1D2D2FFB1B2B4EA101111120000
      00007579798CD4D5D5FFD8D9D9FFDBDBDBFEE0E1E1FFE3E3E3FFC9C9CAFE7578
      788C0000000010111112A3A5A6EADCDCDDFFFAFAFAFFFCFCFCFEFBFBFBFFF8F8
      F8FFE1E1E1FEA8A9AAF530323237000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003040403494C4C587F8182DCB0B1
      B1E4FAFAFAFEDFDEDEFF8A817EFF66473AFF7D4B37FF8C533BFF97573DFF9F5B
      3FFFA65D41FFAC5E42FFB25E43FFB75E42FFB95D43FFBA5C43FFBC5A41FFBA59
      42FFB65943FFAE5945FF9D5344FF845449FF998884FFD7D5D4FFFAFAFBFFA8A9
      B4F4787A7CEB64676791404343502D2F2F361A1B1B1E0B0C0C0C030404030000
      00000000000000000000000000000000000000000000030303022B2D2F331C1E
      8EFB405AB0FF14219BFF02028DFF020692FF020B97FF020F9DFF0213A2FF0216
      A7FF021AACFF021EB1FF0222B6FF0226BBFF0229C0FF022CC4FF0230C9FF0232
      CCFF0235CFFF0236D1FF0238D3FF0238D4FF0238D4FF0238D3FF0236D1FF0235
      CFFF0232CCFF022FC9FF022CC4FF0229BFFF0226BBFF0222B6FF021EB1FF021A
      ACFF0216A7FF0213A2FF020F9DFF020B97FF020692FF02028DFF04058DFF4167
      B6FF131680FB2B2D2F3303030302000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030404031719
      191B494C4C5E6467679D76797AB87D8080A3777B7B9075797988777B7B88797D
      7D897B7F7F8A7C80808A7D81818A7F82828B8083838B8185858D8286868E8488
      889086898991868A8A92878B8B93878B8B93888C8C958E91919D8F9292AE6A6E
      6E85000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202018185859ADEDE
      DEFFB8B9B9FEBCBDBDFFBFC0C0FEC2C3C3FFC7C9C9FFD8D8D9FE919393B59598
      99BAB2B3B4F1D7D7D8FFDBDBDBFFDDDEDEFEE2E2E2FFE5E5E5FFCECECFFEA8A9
      AAF1929595BA8E9192B5C4C4C5FFF6F6F6FFFCFCFCFFFBFBFBFEF9F9FAFFF4F4
      F4FFC0C0C0FE7F83839A02020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030302575A5A6C88898AD5D9DADAF4EAEA
      EAFF999491FF644132FF79442DFF874A2FFF924F31FF9A5235FFA15537FFA759
      3BFFAC5C3EFFB25D3FFFB65C3EFFBC5D3FFFC05D41FFC05B40FFC2593EFFC557
      3CFFC5563AFFC4543BFFBE553DFFB45542FFA05445FF86544AFFADA4A2FFEAEA
      EAFFD7D8DEFC7E7F85EA686B6C9E404343512D2F2F36181A1A1C090A0A0A0303
      03020000000000000000000000000000000000000000030303022F3234390202
      84FF3150AFFE070A90FE02048EFF040995FE040D9AFE02119FFF0416A5FE0218
      AAFF041DB0FE0422B5FE0426BBFE0228BFFF042DC3FE0431C8FE0233CDFF0437
      D0FE043AD3FE023BD7FF043DD8FE043ED9FE023DDAFF043DD8FE043CD6FE0239
      D4FF0437D0FE0434CCFE0230C9FF042DC3FE0228BFFF0426BBFE0422B5FE021C
      AFFF0419ABFE0416A5FE02119FFF040D9AFE040995FE02048EFF04048CFE3555
      B2FE040578FE2F32343903030302000000000000000000000000000000000000
      00000000000000000000000000000303030214151517454848585E6162956A6C
      6CAE6E7172956568697C60646472606464706366667166696A736A6D6E776F72
      727B74787880787C7D857C8080887D8181898083838B8084848C8286868E8387
      878F84888890868989918689899186898991868A8A938B8E8E9A8C8F8FAB6A6D
      6E84000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000405050403030302000000000000000000000000000000001C1E1E20BCBC
      BDE9D0D0D0FEBEBFBFFEC0C0C0FEC3C4C4FEC7C8C8FED3D3D4FEDEDEDFFEE0E0
      E1FEDDDDDEFEDADADAFEDCDCDCFEDFE0E0FEE2E2E2FEE6E6E6FED2D2D3FEC5C5
      C6FEC1C1C2FEBDBDBEFEE5E5E5FEFAFAFAFEFCFCFCFEF9F9F9FEF6F6F6FEDBDB
      DBFEA3A5A6E91C1E1E2000000000000000000000000000000000030303020405
      0504000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020201565A5A6B8F9191D3F4F5F5FCDAD9D9FF7365
      5FFF6E3E29FF804125FF894324FF924726FF984C2BFF9F5030FFA35434FFA858
      39FFAA5435FFA25033FF9F583FFF9D523BFFA54A2FFFBF593BFFC45B3FFFC658
      3CFFC75539FFC95238FFC95237FFC65138FFBE543DFFB05543FF945548FF917C
      77FFDBDADAFFF3F3F5FE82838DEA686B6C9E3F42424F292B2B31151616180808
      08080202020100000000000000000000000000000000030303022F3234390202
      86FF324FB0FE070990FE020590FF040B97FE040F9CFE0212A1FF0417A8FE021A
      ACFF0420B3FE0424B8FE0428BEFE022BC2FF0430C7FE0434CCFE0236D2FF043B
      D5FE043ED8FE023FDDFF0441DEFE0441DFFE0241E0FF0441DEFE0440DCFE023D
      D9FF043BD5FE0437D0FE0233CDFF0430C7FE022BC2FF0428BEFE0424B8FE021F
      B2FF041BADFE0417A8FE0212A1FF040F9CFE040B97FE020590FF04048DFE3555
      B3FE040578FE2F32343903030302000000000000000000000000000000000000
      00000303030213141516424445535C606091636767AB6568688C565A5A6C4C50
      505C4B4E4E584C4F4F584E52525A5155555D555959615B5E5E666064646C666A
      6A726D717179757878807A7D7E867E81818A8083838C8185858D8386878F8487
      879085888891848888918488889184888891868989938A8D8D9A8B8E8EAC6B6E
      6F870707070708080808080808080809090908090909090A0A0A0A0B0B0B0B0C
      0C0C0B0C0C0C0000000000000000000000000000000000000000000000000000
      0000787B7C8F9DA0A0C330323237020202010000000000000000000000006265
      6572E0E0E1FEC5C6C6FFC2C3C3FEC7C8C8FFCBCBCBFFCDCECEFEDEDEDEFFDBDC
      DCFFD8D9D9FEDCDCDCFFDFE0E0FFE1E1E1FEE6E6E6FFE9EAEAFFEBEBEBFEEBEB
      ECFFE1E1E2FFDADADBFEFAFAFAFFFDFDFDFFFBFBFBFFF7F7F7FEEEEEEFFFBABA
      BBFF616565720000000000000000000000000202020130323237929596C37679
      7A8F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055585869909292D1FEFEFEFFCECDCDFF624B42FF753C
      23FF813C1DFF893D1BFF8F401DFF944522FF994A27FF9E4F2DFFA25332FFA454
      34FFAF7660FFBFA7A0FFCDC4C3FFCCC1BFFFB3938AFFA25944FFBB5439FFC65A
      3EFFC7563BFFC95539FFCB5236FFCB5236FFC95237FFC3533BFFB75742FF9E57
      47FF86635DFFD3D1D0FFFDFDFDFF84848AE8676A6A9B3A3D3D48232525290F10
      10110405050400000000000000000000000000000000030303022F3234390202
      88FF304DAEFF06098FFF020692FF020B97FF020F9DFF0214A3FF0217A9FF172F
      B5FFC5CBECFFEFF1F8FF5973D5FF022DC6FF0231CBFF0236D0FF0239D5FF023D
      DAFF0240DEFF0243E2FF0245E4FF0246E6FF0246E6FF0245E4FF0243E2FF0240
      DEFF023DDAFF0239D5FF0236D0FF0231CBFF022DC6FF5872D5FFEFF1F8FFC5CC
      ECFF172FB5FF0217A9FF0214A3FF020F9DFF020B97FF020692FF02028CFF3354
      B0FF030479FF2F32343903030302000000000000000000000000000000000B0C
      0C0C6D7171A7868787E1787878E06A6C6CC86F7271BC717475B8737676B67679
      78B4787B7BB57C7F7FB6828483B9858887BC8A8C8CC08E918FC3929595C89698
      98CC999B99CA868A8AA58B8E8EA9909292AD939696B1959898B3959898B39699
      99B4969999B4A7A9A8D4ADAFAEE3ADAFADE3ACADACE4ABACAAE7939594EB8788
      87E4646764CB656665CC656764CD666765CE686864CF686966D1686966D26969
      65D46E7171A60000000000000000000000000000000000000000000000002A2C
      2C30CACBCBF0E5E5E5FED1D2D3F58185859A1C1E1E2000000000000000000808
      0808ACAEB0D9DDDDDEFFC4C6C6FEC9CACAFFCDCECEFFCECFCFFED4D4D4FFD7D8
      D8FFD9D9D9FEDEDEDEFFE1E2E2FFE3E4E4FEE8E9E9FFEBEBEBFFEEEEEEFEF2F2
      F2FFF5F6F6FFF8F8F8FEFCFCFCFFFDFDFDFFFAFAFAFFF5F5F5FED3D3D4FF9FA0
      A2D90808080800000000000000001C1E1E207F82829AA8AAAAF5BBBBBCFEA4A5
      A6F02A2C2C300000000000000000000000000000000000000000000000000000
      000000000000454849538A8B8BD0F5F6F6FCCFCFCFFF5E4033FF7A3B20FF8439
      18FF893814FF8C3A14FF903D18FF94431FFF984926FF9D4E2BFF9F4B2AFFAD71
      59FFD6D3D4FFD7D7DAFFD5D1D1FFD7D3D4FFE0E0E1FFD7CECCFFAA5941FFC35A
      3DFFC4593DFFC7583BFFC9553AFFCA5339FFCA5337FFC95337FFC4543BFFBA58
      42FFA15847FF845F56FFD5D3D3FFF4F4F6FE7D7E81E85F6363873235353D1B1C
      1C1F090A0A0A02020201000000000000000000000000030303022F3234390202
      8AFF3048AEFE060A91FE020793FF040D9AFE0411A0FE0214A4FF192EB2FECCD1
      ECFFF1F1F1FEF0F0F0FEF2F2F5FE5B79DBFF0434CDFE0439D2FE023CD9FF0441
      DDFE0443E1FE0247E7FF0448E9FE044AEBFE024BECFF0448E9FE0446E6FE0244
      E2FF0441DDFE043DD8FE0238D3FF0434CDFE5A78DBFFF2F2F5FEF0F0F0FEF2F2
      F2FFCBD0ECFE192EB2FE0214A4FF0411A0FE040D9AFE020793FF04048EFE3450
      AFFE040578FE2F32343903030302000000000000000000000000000000000B0C
      0C0CC8C9C8F4AEAEACFF6C6C69FF484844FF494945FF4A4A47FF4B4B47FF4D4D
      49FF4E4E4AFF51514DFF565652FF5D5D59FF646460FF6B6C67FF72736EFF7979
      75FF7E7E7AFE8A8B86F5949592F59E9F9BF6A4A4A0F7A8A8A4F8A6A5A2F8A09F
      9CF89E9D9BF89C9C99FD9C9B98FF9B9A98FF9A9996FF979694FF80807EFF7170
      6CFF312D26FF332F27FF353227FF383428FF3A3528FF3A3527FF383326FF312D
      22FF636563BC0000000000000000000000000000000000000000000000009396
      97B3E0E0E0FF9B9C9DFEB9BABBFFE6E6E6FFC0C2C2E96265657208080808191B
      1B1DAEAFB0DCF0F0F0FFCFD0D0FECCCCCCFFCECFCFFFD1D1D1FED6D7D7FFD8D9
      D9FFDBDBDBFEE0E1E1FFE3E3E3FFE5E6E6FEEAEAEAFFEDEDEDFFF0F0F0FEF4F4
      F4FFF7F8F8FFF9F9F9FEFDFDFDFFFBFBFBFFF8F8F8FFE8E8E9FEBFBFC0FFA0A2
      A3DC191B1B1D0808080861646472A5A6A7EABBBBBBFFCCCCCDFFD0D0D1FEB9B9
      BAFF8D9090B20000000000000000000000000000000000000000000000000000
      0000282A2B2F808283DADADADAF2DEDEDEFF634B42FF7B3B20FF853916FF8A37
      11FF8C3611FF8D3912FF8F3D17FF93401DFF964623FF9A4B29FF9B4927FFBF9D
      8FFFCECDD0FFC8C2C2FFC7C1C1FFC8C2C2FFCCC7C7FFDCDCDDFFB58070FFB951
      34FFC35B3FFFC45A3EFFC7593CFFC8563BFFC9553AFFC95539FFC85538FFC456
      3DFFB95943FF9F5949FF866A64FFE0DFDEFFCDCDD2F9787979E84F525267282B
      2B301213131405050505000000000000000000000000030303022F3234390202
      8BFF2F46ADFF050990FF020894FF020C9AFF0211A0FF1628ADFFCCD0EBFFF2F2
      F2FFF1F1F1FFF1F1F1FFF1F1F1FFF2F3F6FF5B7CE0FF0239D5FF023EDBFF0242
      E1FF0246E6FF024AEBFF024DEFFF024FF2FF024FF2FF024DEFFF024AEBFF0246
      E6FF0242E1FF023EDBFF023AD6FF597BE0FFF2F3F6FFF1F1F1FFF1F1F1FFF1F1
      F1FFF2F2F2FFCCD0ECFF1729ADFF0211A0FF020C9AFF020894FF02038EFF324D
      ACFF030479FF2F3234390303030200000000000000000000000000000000090A
      0A0AC9CACAF4AEAEADFF6C6C6AFF494946FF4A4B48FF4C4C49FF4E4E4AFF4F4F
      4BFF50504CFF52524EFF545450FF585853FF5E5E5AFF656561FF73736DFF8C8B
      84FFA1A098FFB2B0A7FFB6B6ACFFB8B9B1FFBBBAB5FFBEBEB8FFC2C2BAFFC6C5
      BDFFC1BFBAFFB5B4AFFFA6A5A1FF999895FF989894FF959592FF7E7D7BFF706E
      6AFF322F26FF353127FF383327FF393428FF393327FF373225FF312C22FF2B27
      20FF626563BC00000000000000000000000000000000000000004144444BDCDC
      DCFEAEAFB0FE9B9C9DFEA2A3A4FEACADAEFECDCECEFEE8E8E8FEAEB0B1D9AFB1
      B1DCF6F6F6FEECEDEDFECFCFD0FECDCECEFECFD0D0FED3D4D4FED7D7D7FEDADA
      DAFEDCDDDDFEDCDDDDFEDEDFDFFEE2E2E2FEE7E7E7FEECECECFEF1F1F1FEF5F5
      F5FEF8F8F8FEFBFBFBFEFBFBFBFEF8F8F8FEF4F4F4FEE9E9EAFEC6C6C7FEBEBE
      BFFEA0A2A3DC9FA0A2D9B9B9BAFECCCCCDFED5D5D6FED3D3D3FECFCFD0FEC6C6
      C7FEACACADFE4144444B00000000000000000000000000000000000000000809
      0909797C7CADB4B6B6DFF2F2F2FF77665FFF7B3B20FF883B19FF8C3711FF8E36
      0FFF8F3711FF8E3712FF903B15FF913F1BFF954420FF984826FF9B4A27FFBEA5
      9DFFC4C2C3FFBFB9B9FFBFB9B8FFC0B9B9FFC4BFBFFFD0CDD0FFBB897BFFB651
      33FFC05D40FFC15B40FFC35B3EFFC6593DFFC6593DFFC6583CFFC7583CFFC656
      3CFFC1583FFFB65C46FF98594AFF9A8581FFF0F0F0FF999AA1EF717475B83739
      3A431C1D1D20090A0A0A020202010000000000000000030303022F3234390202
      8CFF2F42ADFE060A92FE020894FF040E9BFE0412A1FEC2C6E7FFF1F1F1FEF1F1
      F1FFEFEFEFFEEFEFEFFEEFEFEFFEEFEFEFFFF0F1F3FE5B80E3FE023FDDFF0443
      E2FE0447E7FE024DEEFF0450F2FE0453F6FE0254F7FF0450F2FE044CEDFE0248
      E8FF0443E2FE0440DCFE5A7FE4FFEEEFF2FEEDEDEDFFEFEFEFFEEFEFEFFEF1F1
      F1FFEFEFEFFEF1F1F1FEC2C6E7FF0412A1FE040E9BFE020894FF04048FFE3249
      ABFE040578FE2F3234390303030200000000000000000000000000000000090A
      0A0ACBCBCAF4B0B0AFFF70706DFF4D4D4AFF4E4E4BFF4F4F4BFF50504CFF5151
      4DFF53534EFF545450FF565651FF575753FF64645EFF888781FFA3A298FFA8A7
      9EFFADABA3FFAFADA4FFB2B2A6FFB4B5ADFFB7B6B0FFB9B9B4FFBDBDB3FFC0BE
      B5FFC2C0BBFFC3C2BBFFC4C3BCFFBFBEB8FFA9A8A4FF92928FFF7C7B78FF6F6D
      69FF343026FF373227FF383427FF393326FF363125FF302C22FF2B271FFF2623
      1DFF636563BC000000000000000000000000000000000D0D0D0EA7AAAACED3D3
      D4FF999A9BFF9FA0A1FEA6A7A8FFABACADFFB4B5B5FEC1C2C2FFE0E1E1FFF6F6
      F6FFEFEFEFFECECFCFFFCBCCCCFECFD0D0FFD3D3D3FFD5D6D6FED5D6D6FFD0D0
      D0FFCDCDCDFED3D3D3FFDBDBDBFFE0E0E0FEE7E7E7FFEEEEEEFFF2F2F2FEF6F6
      F6FFF9F9F9FFFBFBFBFEFAFAFAFFF6F6F7FFF2F2F3FFEEEEEEFEE7E7E7FFC7C7
      C8FFBFBFC0FECBCBCCFFD9D9DAFFD8D8D8FED5D5D5FFD2D2D2FFCCCCCDFECACA
      CAFFBCBCBDFF9B9D9DCE0D0D0D0E000000000000000000000000000000004347
      47518B8D8DD2FCFCFCFD9E9B99FF753C24FF8A3E1CFF903B15FF923712FF9137
      10FF903711FF8F3712FF903A14FF933E18FF95431EFF974723FF984621FFB38A
      7CFFC0C0C1FFBCB5B5FFBBB5B5FFBDB6B6FFC0BBBCFFD5D5D7FFBF816DFFB856
      39FFBD5D41FFBF5D41FFC05C40FFC25C3FFFC35B3FFFC35A3FFFC65A3EFFC459
      3DFFC25A3EFFBC5B42FFAD5E48FF8F5C4EFFBBB4B1FFF3F3F3FE7B7C7EEA585C
      5C772729292E10111112040505040000000000000000030303022F3234390202
      8EFF2D40ABFE060A92FE020994FF040E9BFE0413A1FEC7C8D3FFEDEDEDFEF1F1
      F1FFEFEFEFFEEFEFEFFEEDEDEDFEEDEDEDFFEAEAEAFEEEEFF1FE5A81E9FF0443
      E2FE0448E8FE024EF0FF0451F4FE0456FAFE0257FBFF0451F4FE044DEFFE0249
      E9FF0443E2FE5881E7FEECEDF0FFE6E6E6FEEAEAEAFFECECECFEEEEEEEFEF1F1
      F1FFEFEFEFFEEFEFEFFECBCCD7FF0413A1FE040E9BFE020994FF04058FFE3145
      A9FE040478FE2F3234390303030200000000000000000000000000000000090A
      0A0ACCCCCBF4B0B0AFFF727271FF50504DFF51514EFF52514EFF53524FFF5453
      4FFF555551FF575652FF575652FF7D7C75FF9B9A90FF9F9E94FFA0A095FFA4A3
      99FFA8A79DFFACAAA1FFB0AFA2FFB1B2A9FFB4B3ADFFB6B6B0FFBABAAFFFBDBB
      B2FFBFBDB7FFC0C0B8FFC1C1B9FFC1C0B9FFBEBDB6FFB5B4AEFF807F7CFF6E6C
      66FF363226FF373327FF373326FF353024FF2F2B21FF2B261FFF26221DFF2220
      1AFF606362BC000000000000000000000000000000005E62626EE3E3E3FEB6B7
      B8FE9D9E9FFEA4A5A6FEABACADFEB1B2B2FEB9BABAFEBEBFBFFEC0C0C0FECDCE
      CEFECDCECEFECACBCBFECDCECEFED0D1D1FED4D4D4FECBCBCBFEC3C3C3FEC9C9
      C9FED0D0D0FEDDDDDDFEDFDFDFFEDEDEDEFEE2E2E3FEEBEBEBFEF4F5F5FEF6F6
      F6FEF8F8F8FEFBFBFBFEFAFAFAFEF3F3F3FEEFEFF0FEEBEBECFEE8E8E8FEE0E0
      E0FED9D9DAFEDDDDDDFED9D9DAFED5D5D5FED2D2D2FECECECFFECACACAFEC7C7
      C7FEC0C0C0FEAFAFB0FE5D61616E0000000000000000000000000F1010117E81
      82C5C7C7C7E9E5E5E5FF654537FF893E1EFF923D16FF953A13FF953912FF9339
      11FF913911FF913912FF903A13FF933D16FF95411DFF974621FF984622FFA15A
      3CFFBDAEAAFFBDBCBEFFBDBCBDFFBDBDBEFFCDCCCEFFD1ADA2FFB35B3EFFB75E
      40FFBB5E41FFBC5D41FFBE5D41FFBF5D41FFC05C40FFC15C40FFC15C40FFC15C
      3FFFC15B3FFFBE5C40FFB85E44FFA15C49FF8A665BFFE4E4E3FFA6A7ACF37578
      78C3353838401719191B070707070000000000000000030303022F3234390202
      90FF2C3DABFE060992FE020894FF040E9BFE0413A1FE3542A3FFBABABEFEEEEE
      EEFFEFEFEFFEEDEDEDFEECECECFEEBEBEBFFE8E8E8FEE6E6E6FEECEDF0FF5985
      EBFE0447E8FE024DEEFF0450F3FE0453F7FE0254F8FF0450F3FE044CEDFE0248
      E9FF5783EAFEE7E8EBFEE0E0E0FFE2E2E2FEE6E6E6FFE8E8E8FEECECECFEF0F0
      F0FFEFEFEFFEC9CACDFE3845A6FF0413A1FE040E9BFE020894FF04048FFE3042
      A7FE040479FE2F3234390303030200000000000000000000000000000000090A
      0A0ACCCDCCF4B0B0AFFF737371FF535250FF555451FF545451FF555551FF5656
      52FF575753FF5C5C57FF8D8C83FF9D9C92FF9E9D93FF9F9E93FFA09F95FFA2A1
      96FFA5A499FFA9A69DFFACAB9EFFAEAFA4FFB1B0A8FFB3B4ACFFB8B7ABFFBAB7
      AFFFBCBAB2FFBDBDB4FFBEBEB5FFBEBDB5FFBCBBB3FFB6B5ADFF96958EFF8180
      7AFF363227FF373226FF332F24FF2E2A21FF2A261FFF26221CFF211F1AFF1E1D
      18FF5A5D5BBC000000000000000000000000000000001E1F1F22888C8CA5D4D5
      D6FBD5D5D6FFB3B4B5FEADAEAFFFB5B6B6FFBCBDBDFEBEBFBFFFC2C3C3FFC5C7
      C7FFC8C9C9FECECECEFFCFD0D0FED2D3D3FFC4C5C5FFC0C0C0FECBCBCBFFD8D8
      D8FFDBDBDCFED0D0D1FFC3C3C4FFBBBBBCFEB8B8B9FFB8B8B9FFC0C0C0FED7D7
      D8FFF4F4F4FFFCFCFCFEFBFBFBFFF6F6F6FFEFEFEFFFE9E9E9FEE7E7E7FFE3E3
      E4FFDEDEDEFEDCDCDDFFD8D8D9FFD3D3D3FED1D1D2FFCDCDCDFFC6C6C7FEBEBE
      BFFFABACADFB858888A51E1F1F2200000000000000000000000046494A548C8D
      8ED1FBFBFBFD8C8684FF814126FF933F19FF983E16FF993B13FF973B13FF963A
      12FF953911FF943A12FF943A13FF933B15FF95401BFF97451FFF994825FF9A48
      25FFA35C3EFFAF7E6AFFB48B7DFFB88E80FFBB8069FFAD5A3BFFB15B3DFFB45D
      41FFB65E41FFB85E41FFBB5E41FFBC5E41FFBD5D41FFBE5D41FFBE5D41FFBF5D
      40FFBF5C40FFBE5C40FFBA5D41FFAF5E46FF935A4AFFB1A5A2FFF1F1F1FE7C7D
      7EE95558586F1F2121240B0C0C0C0202020100000000030303022F3234390202
      92FF2A38A9FF050890FF020894FF020D9AFF0211A0FF0215A6FF3242A3FFB4B5
      B8FFECECECFFEDEDEDFFEBEBEBFFE9E9E9FFE7E7E7FFE5E5E5FFE4E4E4FFEBEC
      EFFF5B86EEFF024BECFF024EF0FF0250F3FF0250F3FF024EF0FF024BEBFF5984
      EEFFE5E6E9FFDADADAFFDCDCDCFFDFDFDFFFE3E3E3FFE6E6E6FFEAEAEAFFEDED
      EDFFC7C7CBFF3646A7FF0215A6FF0211A0FF020D9AFF020894FF02038EFF2D3F
      A5FF03037CFF2F3234390303030200000000000000000000000000000000090A
      0A0ACECECDF4AFAFAFFF72726FFF51514EFF555551FF575754FF585854FF5858
      54FF5E5E59FF939289FF9F9D93FF9E9D92FF9F9E93FFA09F94FFA1A095FFA2A1
      96FFA1A092FFA29F91FFA6A391FFA8A898FFABA99EFFADADA1FFB1B09EFFB3AF
      A3FFB5B4A8FFBAB9AFFFBCBAB1FFBCBAB1FFBAB8AFFFB4B2AAFF94928BFFB2B1
      A6FF858277FF343127FF2E2A21FF29251EFF25221CFF211F1AFF1E1C18FF1B1A
      16FF5A5C5BBC0000000000000000000000000000000000000000030404033C3E
      3F45A1A4A5C8DDDEDEFCD2D2D2FFBDBEBEFFBEBFBFFEC0C1C1FFC4C5C5FFC8C9
      C9FFCBCCCCFECFD0D0FFD0D1D1FEC2C3C3FFC0C0C0FFCBCBCBFEE2E2E3FFE5E5
      E6FFCDCECFFEACAEAEE68F9393B16B6E6F7F6B6E6F7F8F9292B1A2A4A5E5AFAF
      B0FEBBBBBCFFDCDCDDFEF7F7F7FFF4F4F4FFEFEFEFFFE7E7E7FEE5E5E5FFE0E0
      E1FFDCDCDCFED9D9DAFFD5D5D6FFD1D1D2FECDCDCEFFC4C4C5FFB2B3B4FC989B
      9CC83C3E3F450304040300000000000000000000000000000000757878A2B4B5
      B5E0E7E7E7FF6E4A3BFF984C2CFF9B4018FF9D3E15FF9B3D14FF993C13FF983B
      13FF963A12FF963B12FF953A13FF943B14FF953E17FF97431CFF984621FF9948
      26FF9B4823FF9E4621FFA14925FFA34B28FFA7502DFFAC5A3BFFAD5C3EFFAF5D
      3FFFB35D3FFFB55E40FFB65E41FFB75E41FFB85E41FFB95E41FFB95E41FFBB5D
      41FFBB5D40FFBB5D40FFBA5C40FFB25E43FF9E5C47FF89675DFFE5E5E5FF9394
      97ED6E7171A42729292E101111120304040300000000030303022F3234390202
      93FF2936A9FE060890FE020793FF040D9AFE0411A0FE0215A5FF041AACFE3043
      A4FFB1B1B5FEE7E7E7FEE9E9E9FEE8E8E8FFE5E5E5FEE3E3E3FEE2E2E2FFDFDF
      DFFEE8E9EBFE5A86EEFF0449EAFE044BECFE024CEDFF0449EAFE5785EDFEE3E4
      E7FFD3D3D3FED5D5D5FED9D9D9FFDBDBDBFEDFDFDFFFE2E2E2FEE5E5E5FEC1C2
      C5FF3545A9FE041AACFE0215A5FF0411A0FE040D9AFE020793FF04048EFE2D3C
      A4FE04047DFE2F3234390303030200000000000000000000000000000000090A
      0A0ACECFCDF4AEAEADFF6E6E6CFF4C4C49FF4F4F4CFF555652FF5A5A56FF5C5C
      58FF929188FF9F9E94FF9E9D93FFA09E94FFA19F94FFA1A095FF9F9E90FF9F9D
      8DFFA3A193FFA5A398FFA7A496FFA8A89AFFABA9A0FFADADA2FFB1B0A1FFB4B2
      A7FFB4B3A7FFB3B2A3FFB5B3A5FFB9B7ACFFB7B5ABFFB1AFA5FF908F87FFB6B4
      A9FFD7D5BFFF726F63FF28251EFF25221CFF211F1AFF1E1C18FF1B1A16FF1918
      15FF555857BC0000000000000000000000000000000000000000000000000000
      0000090A0A0A575B5B66BABBBBEAE6E6E6FED0D1D1FEC2C3C3FEC5C6C6FEC9CA
      CAFECDCECEFED0D0D0FEC6C7C7FEBFBFBFFEC9C9C9FEE7E7E7FEECECECFEB6B8
      B8ED5D61626D0E0E0E0F000000000000000000000000000000000D0D0D0E5D61
      616DA4A5A6EDB5B5B6FED2D2D3FEEFEFEFFEECECEDFEE7E7E8FEE1E1E2FEDDDD
      DEFEDADADBFED6D6D7FED2D2D3FECCCCCDFEC0C0C0FEA4A6A7EA575A5B66090A
      0A0A0000000000000000000000000000000000000000212323267F8181DFF2F3
      F3FBB8B5B3FF8F543AFFA4522FFFA1441DFF9F3F15FF9F3F16FF9D3D15FF9B3C
      14FF993C13FF973B12FF963B13FF963B14FF953D15FF973F1AFF98431EFF9A46
      21FF9A5436FF955A40FF965B43FF995E47FF995D45FF9E5234FFAB5A3BFFAC5B
      3DFFAE5C3EFFB15D3FFFB35D3FFFB45E41FFB55E41FFB65E41FFB65E41FFB75D
      41FFB75D40FFB75D40FFB75C3FFFB35D40FFA75D44FF8D5948FFC3BDBBFFC9C9
      CBFA787A7ADE36383941141515170505050500000000030303022F3234390202
      95FF2832A9FE06078FFE020692FF040C99FE04119EFE0214A3FF0419AAFE021C
      AFFF3042A5FEABACAFFEE4E4E4FEE7E7E7FFE4E4E4FEE2E2E2FEE1E1E1FFDEDE
      DEFEDCDCDCFEE6E7EBFF5985ECFE0446E6FE0247E7FF5784EBFEE0E1E5FED0D0
      D0FFCFCFCFFED1D1D1FED5D5D5FFD8D8D8FEDDDDDDFFDFDFDFFEBBBCBFFE3246
      A8FF041DB0FE0419AAFE0214A3FF04119EFE040C99FE020692FF04048DFE2B38
      A3FE04047EFE2F32343903030302000000000000000000000000000000000A0B
      0B0BCFD0CFF5ACACABFF696967FF464542FF494846FF4F4F4CFF565552FF8786
      80FF9F9E94FF9F9E94FFA09F94FFA1A095FFA1A094FF9E9C8CFFA2A093FFA4A3
      97FFA5A397FFA6A498FFA7A497FFA7A697FFA8A79CFFAAAA9EFFAEAC9DFFB1AF
      A3FFB2B1A4FFB4B3A7FFB5B3A7FFB2AF9FFFB3B1A4FFADABA0FF8D8B83FFB2B1
      A4FFDFDDC8FFCECBB7FF3A372EFF211F1AFF1E1C19FF1B1A16FF181815FF1918
      15FF5A5D5BBC0000000000000000000000000000000000000000000000000000
      0000000000000000000010111112939696B6F1F1F1FEE1E2E2FFC8C9C9FFCDCE
      CEFFCECFCFFECFCFCFFFC0C0C0FEC6C6C6FFE7E7E7FFF4F4F4FEA6A8A8D02123
      2326000000000000000000000000000000000000000000000000000000000000
      0000212323269C9E9FD0B4B4B5FFD6D6D6FFEAEAEBFFE3E3E4FEDFDFE0FFDDDD
      DDFFD7D7D8FED4D4D5FFCECECFFFC3C3C4FE8F9292B610111112000000000000
      000000000000000000000000000000000000000000004E51515E909292D1FAFA
      FAFF81736DFFA65837FFAD5431FFAC5029FFA34118FFA13F16FFA03F16FF9F3E
      15FF9D3D15FF9A3C13FF993C13FF973C15FF973C15FF973D16FF973F18FF9D49
      27FFC3B3AEFFC7C4C6FFC7C3C3FFCDCACBFFC7BFBEFF8A4B33FFA75534FFA959
      3AFFAB5A3BFFAD5B3DFFAE5C3EFFAF5D3FFFB25C3FFFB35D40FFB35D40FFB45D
      40FFB45D40FFB45D3FFFB45C3FFFB25B3EFFAB5C41FF935844FF998580FFEEEE
      EEFF7D7E80EA50545467181A1A1C0707070700000000030303022F3234390202
      97FF242EA7FF04058EFF020590FF020A96FF020E9CFF0213A2FF0216A7FF021A
      ADFF021FB2FF2C42A4FFA4A5A8FFE2E2E2FFE4E4E4FFE2E2E2FFE0E0E0FFDEDE
      DEFFDCDCDCFFDADADAFFE5E6E9FF5A83EAFF5981E9FFE2E3E6FFD0D0D0FFCECE
      CEFFCDCDCDFFCFCFCFFFD3D3D3FFD7D7D7FFDADADAFFB2B3B7FF2F45A7FF021F
      B2FF021AADFF0216A7FF0213A2FF020E9CFF020A96FF020590FF02028CFF2834
      A0FF030381FF2F32343903030302000000000000000000000000000000000A0B
      0B0BD0D0CFF5A9A9A8FF646462FF3F3F3BFF43423FFF4B4B48FF6D6C66FF9998
      8EFF9E9D93FFA09F95FFA2A096FFA2A195FF9F9D8CFFA4A296FFA4A397FFA5A4
      97FFA6A498FFA7A699FFA8A699FFA8A798FFA8A79BFFA8A89AFFABA99BFFADAC
      9FFFB0AEA0FFB2B0A3FFB3B2A4FFB3B1A3FFADAB99FFA8A698FF898780FFB1B0
      A4FFDDDCC5FFDDDBC6FF9F9D8AFF1D1C16FF1D1C17FF191915FF161613FF1918
      15FF555858BC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000989B9BBAF5F5F5FEDBDBDBFFCBCCCCFFCECF
      CFFFD1D1D1FEC8C8C8FFC1C1C1FED7D7D7FFF8F8F8FFBDBEBEED212323260000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021232326A3A4A6EDBABABBFFE0E0E1FFDEDEDFFEDBDBDCFFDADA
      DBFFD4D4D5FED3D3D3FFCFCFCFFFCACACBFE929596BA00000000000000000000
      00000000000000000000000000000000000000000000686B6C87A5A7A8DAE8E8
      E8FF886556FFAD5B39FFB25631FFB25630FFAC5028FFA44118FFA24017FFA140
      16FF9F3F16FF9E3D15FF9B3D14FF9A3D14FF993D16FF983D15FF983C15FF9E4B
      28FFCDC2C1FFD2CED0FFD1CCCCFFD4D1D1FFD1CBCBFF864E35FFA1502FFFA756
      36FFA75837FFA9593AFFAA5A3CFFAC5B3CFFAD5B3DFFAE5C3DFFAE5C3EFFAF5C
      3EFFAF5C3DFFAF5B3DFFAF5B3DFFAE5A3CFFAB5B3EFF9A5A42FF88665AFFF0EF
      EFFF99999AF1686B6B911C1D1D200809090900000000030303022F3234390202
      98FF232BA7FE05068EFE02048FFF040995FE040E9BFE02119FFF0416A6FE0219
      AAFF041EB1FE0422B6FE2A41A4FE9FA0A3FFDEDEDEFEE0E0E0FEDFDFDFFFDCDC
      DCFEDADADAFED9D9D9FFD7D7D7FEE3E4E6FEE2E3E6FFD1D1D1FECFCFCFFECECE
      CEFFCCCCCCFECECECEFED2D2D2FFD4D4D4FEADAEB1FF2D42A7FE0422B6FE021D
      B0FF041AABFE0416A6FE02119FFF040E9BFE040995FE02048FFF04048CFE2731
      A0FE040482FE2F32343903030302000000000000000000000000000000000B0C
      0C0CD0D1CFF5A7A7A5FF5F5F5DFF393935FF3B3C38FF4D4D49FF88877EFF9796
      8CFF9A998EFF9E9D92FFA2A096FF9F9D8DFFA4A397FFA5A497FFA6A498FFA7A5
      99FFA8A699FFA8A79AFFA9A89BFFA9A899FFA8A79BFFA9A89AFFAAA799FFABA9
      9BFFAEAC9DFFB0AE9FFFB1AE9FFFB0AE9FFFADAB9CFFA19E8CFF84827AFFB0AE
      A2FFDFDDC7FFDEDCC6FFDDDAC5FF4A493DFF1A1914FF191814FF161512FF1918
      15FF555858BC0000000000000000000000007277778973777789737777897477
      77897477778974777789777A7A8CBEBFBFF0F3F3F3FECFCFCFFECDCDCDFECFD0
      D0FED2D2D2FEC3C3C3FEC9C9C9FEE9E9E9FEE3E3E4FE5F62636E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005D61626EB1B1B2FECBCBCCFED9D9DAFED4D4D5FED6D6
      D7FED3D3D3FED0D0D0FECCCCCDFECFCFD0FEACADAEF07578788C727676897276
      76897276768972767689727676897175758900000000797B7DAFC1C2C2E9D0CF
      CEFF9B6149FFB35D39FFB65A32FFB55831FFB35831FFAD512AFFA7441AFFA440
      17FFA24018FFA03F16FF9E3E15FF9D3E15FF9B3E16FF9B3E16FF993C14FF9B43
      1EFFCAB7B2FFD4D1D2FFD1CACAFFD1CBCBFFD6D4D5FF9B7C70FF8F401FFFA554
      33FFA35433FFA45535FFA55637FFA85839FFA95939FFAA593AFFAB593AFFAB59
      3BFFAB593AFFAB593AFFAB593AFFAB5839FFA95739FF9E573EFF845748FFCFCC
      CBFFB2B3B3F67B7E7EBE1C1E1E21090A0A0A00000000030303022F3234390202
      9AFF2128A7FE05068EFE02038DFF040893FE040C98FE020F9DFF0414A3FE0217
      A8FF041CAEFE0420B3FE0423B8FE2840A2FF9B9C9FFEDCDCDCFEDFDFDFFFDCDC
      DCFEDADADAFED9D9D9FFD6D6D6FED4D4D4FED4D4D4FFD1D1D1FECFCFCFFECFCF
      CFFFCECECEFECFCFCFFED2D2D2FFA9AAADFE2A42A4FF0423B8FE0420B3FE021B
      ADFF0418A9FE0414A3FE020F9DFF040C98FE040893FE02038DFF04048CFE252D
      9EFE040483FE2F32343903030302000000000000000000000000000000000B0C
      0C0CD1D2D0F6A4A4A3FF5A5A58FF32322FFF3A3A37FF616059FF8E8D82FF9291
      85FF96958AFF9A998EFF9A9989FFA2A094FFA5A498FFA6A598FFA8A699FFA9A7
      9AFFA9A89BFFA9A89BFFAAA89BFFABA89BFFAAA99DFFAAA99BFFABA899FFABA9
      99FFABA999FFAEAB9BFFAEAC9BFFADAA9AFFA8A696FF9E9C8EFF7F7D70FFAFAD
      A1FFE0DEC8FFDDDCC6FFDEDCC7FFA5A390FF1A1913FF191813FF161411FF1A19
      15FF565958BC000000000000000000000000C8C8C8FFD3D4D4FFD5D5D5FEDADB
      DBFFDEDFDFFFDFE0E0FEE4E4E4FFE6E6E6FFE5E5E5FECDCDCDFFCFD0D0FFD2D3
      D3FFD1D1D1FEC8C8C8FFD2D2D2FEF1F1F1FFB7B8B8E60E0E0E0F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E0E0E0FA3A4A5E6C0C0C1FFD7D7D8FECDCECFFFD2D2
      D3FFD1D1D1FECECECEFFCACACAFFCECED0FECCCCCDFFC8C8C9FFC3C3C4FEC0C0
      C1FFBCBCBDFFB8B8B9FEB7B7B8FFA7A7A8FE000000007E8081D2DDDEDEF6B5AF
      ACFFAB6548FFB85D38FFBA5B35FFB75A33FFB65933FFB45A33FFAE5129FFA845
      1BFFA44117FFA34117FFA14017FF9F3F16FF9E3E15FF9E3E16FF9B3E16FF993A
      11FFBE988BFFD0CED1FFCBC4C4FFC9C3C3FFCCC8C8FFC9C2C1FF88523AFF9544
      21FFA35231FFA25231FFA25333FFA35434FFA45535FFA55535FFA75536FFA755
      36FFA75536FFA85536FFA85536FFA85435FFA55434FF9E5539FF865340FFC8C1
      BEFFD6D6D6FF848686DD1D1F1F22090A0A0A00000000030303022F3234390202
      9CFF1D23A5FF04048DFF02028CFF020590FF020995FF020D9AFF0211A0FF0215
      A5FF0218AAFF021CAEFF021FB3FF0223B8FF253D9FFF959699FFDBDBDBFFDDDD
      DDFFDBDBDBFFD9D9D9FFD7D7D7FFD6D6D6FFD4D4D4FFD3D3D3FFD2D2D2FFD1D1
      D1FFD1D1D1FFD1D1D1FFA4A5A8FF2840A2FF0223B8FF021FB3FF021CAEFF0218
      AAFF0215A5FF0211A0FF020D9AFF020995FF020590FF02028CFF02028CFF2228
      9CFF020384FF2F32343903030302000000000000000000000000000000000B0C
      0C0CD2D2D1F6A2A2A1FF555653FF2C2C28FF393936FF77766CFF8C8B81FF8E8D
      81FF939185FF959487FF979686FF9F9D92FFA3A296FFA7A599FFA9A89BFFAAA9
      9CFFAAA99CFFACAA9EFFADAB9FFFADAB9FFFADAB9FFFADAB9DFFADAA9EFFADAA
      9CFFACA999FFABA997FFABA997FFA9A796FFA4A292FF9B998BFF7D7B70FFABAA
      9CFFE1DEC8FFDEDCC7FFDEDCC6FFDAD8C3FF333228FF171611FF161511FF1D1C
      17FF5A5C5BBC000000000000000000000000C4C5C5FFB0B1B2FFB0B1B2FEB7B8
      B8FFBCBDBDFFC0C0C0FEC3C4C4FFC6C8C8FFCACACAFECECFCFFFD1D2D2FFD5D6
      D6FFD1D1D1FECCCCCCFFDADADAFEEFEFEFFF919495B000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D9091B0BDBDBEFFD1D1D2FEC7C8C9FFCDCD
      CDFFCECECFFECBCBCCFFC8C8C9FFC2C2C4FEC0C0C1FFBCBCBDFFB6B6B7FEB0B0
      B1FFAAAAABFFA5A5A6FEA3A3A4FFA7A7A8FE000000007A7B7CEEF5F5F5FD9D90
      8AFFB86A49FFBC5E38FFBC5C36FFBB5B34FFB85A34FFB75933FFB55A34FFB154
      2DFFA9451CFFA54117FFA44118FFA24117FFA13F16FF9F3F16FF9E3F17FF9A36
      0CFFAC7058FFC6C7C9FFC2BCBCFFC0B9B9FFBFB8B8FFC7C2C3FFBFB4B2FF824B
      34FF95401DFFA2502DFFA1502FFFA15130FFA15231FFA15231FFA25332FFA253
      32FFA35332FFA35332FFA35232FFA35231FFA25132FF9C5335FF87513BFFC3B7
      B2FFE4E4E4FF7C7D7EE01C1E1E21090A0A0A00000000030303022F3234390202
      9DFF1C20A6FE05058EFE02028CFF04048EFE040893FE020B97FF04109DFE0212
      A1FF0416A7FE041AACFE041DB0FE0220B3FF0424B8FE243C9EFE919295FFD8D8
      D8FEDADADAFEDADADAFFD7D7D7FED5D5D5FED5D5D5FFD3D3D3FED2D2D2FED3D3
      D3FFD1D1D1FEA4A4A8FE263EA0FF0424B8FE0220B3FF041DB0FE041AACFE0215
      A6FF0413A2FE04109DFE020B97FF040893FE04048EFE02028CFF04048CFE2026
      9BFE040487FE2F32343903030302000000000000000000000000000000000B0C
      0C0CD2D2D2F6A1A1A0FF525250FF272724FF3D3D38FF838278FF86857BFF8A89
      7FFF8F8E81FF8E8C7DFF979589FF9B998DFFA09E91FFA4A396FFA8A79AFFABAA
      9CFFADABA0FFAEACA0FFA8A69CFF9D9B93FF9A9890FF9B9890FFA4A196FFAEAB
      9CFFAEAB9CFFACA998FFA9A795FFA7A493FFA2A08FFF979687FF7B796FFFA6A4
      91FFE1DFC9FFDFDDC7FFDCDBC4FFDBD9C3FF737264FF181813FF161610FF1F1E
      19FF585B5ABC000000000000000000000000C0C1C1FEB3B4B4FEB5B6B6FEBCBD
      BDFEBFC0C0FEC0C1C1FEC4C5C5FEC8C9C9FECCCDCDFECECFCFFED2D3D3FED6D7
      D7FED2D2D2FED1D1D1FEDDDEDEFEE0E1E1FE6C6F707F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006A6E6E7FC0C0C0FECCCDCDFEC1C1C2FEC7C7
      C8FECCCCCCFEC8C8C9FEC4C4C6FEC0C0C0FEBFBFC0FEB9B9BAFEB2B2B3FEAEAE
      AFFEA7A7A8FEA2A2A3FEA1A1A3FEAAAAABFE00000000747475FEFEFEFEFF8E7B
      73FFC26D4AFFBE5F38FFBE5F37FFBE5E36FFBD5D35FFBB5C35FFB85B35FFB75B
      34FFB35630FFAC4A21FFA8431AFFA44118FFA44118FFA14017FFA04017FF9E3D
      15FFA24A25FFBCA9A4FFBCB9BCFFB9B3B3FFB8B2B2FFB8B2B2FFC6C1C3FFC8BF
      BDFF936551FF8D3C1AFFA14E2AFF9F4E2BFF9F4E2BFF9F4F2CFF9F4F2DFF9F4F
      2DFF9F4F2DFFA04F2DFFA04F2DFFA04E2CFFA04E2CFF9B4F30FF894D37FFAA9A
      94FFE7E7E7FF7B7D7EE41C1D1D200809090900000000030303022F3234390202
      9FFF191CA5FE04058EFE02028CFF04048DFE060891FE0B1298FF131CA0FE1B28
      A8FF2333AFFE2A3BB5FE2F42BBFE3349BFFF384EC2FE3C54C6FE4F60A8FFBEBE
      C0FEDBDBDBFEDADADAFFD8D8D8FED6D6D6FED6D6D6FFD4D4D4FED4D4D4FED4D4
      D4FFC7C7C8FE4153A8FE0525B7FF0420B4FE021CAFFF041AACFE0417A8FE0213
      A2FF04119FFE040D9AFE020894FF040590FE04048DFE02028CFF04048CFE1D22
      9AFE040489FE2F32343903030302000000000000000000000000000000000B0C
      0C0CD2D2D2F6A1A1A0FF51514FFF2B2B29FF4A4A43FF7F7E71FF828176FF8685
      7BFF8B897FFF8A8878FF929184FF979588FF9C9B8DFFA19F92FFA5A496FFAAA8
      9DFFADABA0FFACAAA3FFADABA7FFAEACA8FFAFADA9FFAFADA8FFAEABA6FFAEAB
      A3FFACA99BFFACA99AFFA8A594FFA5A292FF9F9D8DFF959383FF78776CFFA5A3
      8EFFDCD9BEFFE0DDC7FFDDDBC6FFDFDDC8FFA09E8BFF1C1B15FF161610FF2220
      19FF575A58BC000000000000000000000000BEBFBFFFB6B7B7FFBABBBBFEBDBE
      BEFFC0C1C1FFC3C4C4FEC7C9C9FFCCCCCCFFCDCECEFED2D3D3FFD6D7D7FFD8D9
      D9FFD7D7D7FED9D9D9FFDEDEDEFED7D8D8FF6C6F707F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006A6E6F7FCBCBCCFFCBCBCCFEBDBEBFFFC3C3
      C4FFC9C9CAFEC7C7C8FFC2C2C3FFC0C0C0FEBABABBFFB3B3B4FFB0B0B1FEA8A8
      A9FFA3A3A4FF9E9E9FFE9D9D9FFFADADAEFE00000000747475FEFEFEFEFF8971
      67FFC8724EFFC2603AFFC36239FFC16039FFBF5F37FFBE5E36FFBC5D36FFB95C
      35FFB85C35FFB65A34FFB2522AFFAB481EFFA74118FFA44118FFA34117FFA141
      17FFA03C13FFA4522FFFB7A9A5FFB7B6B9FFB5AEAEFFB5AFAFFFB8B2B2FFC8C3
      C4FFDCDBDBFF9F7967FF8C3914FFA04A27FF9B4927FF9B4A27FF9B4A27FF9B4A
      27FF9B4A28FF9B4A28FF9B4A28FF9D4A27FF9B4927FF994A2BFF874C33FF9D8B
      83FFE7E7E7FF7B7D7EE3181A1A1C0808080800000000030303022F3133380202
      A1FF181AA5FF141494FF24249BFF3232A1FF3C3CA7FF4144ACFF464CB2FF474F
      B5FF4751B8FF4754BCFF4756BFFF4758C1FF475AC4FF475CC7FF8493DAFFE5E6
      E8FFDDDDDDFFDBDBDBFFDADADAFFD9D9D9FFD8D8D8FFD7D7D7FFD6D6D6FFD6D6
      D6FFE2E3E4FF9EAAE1FF6E7FD3FF6A79CFFF6170CBFF5866C5FF4653BCFF222F
      ABFF07129CFF020995FF020590FF02028CFF02028CFF02028CFF02028CFF191D
      98FF020289FF2F31333803030302000000000000000000000000000000000C0C
      0D0DD2D2D2F6A1A1A0FF525250FF31312EFF57564DFF7F7D71FF807F72FF8381
      75FF858376FF888577FF8F8D81FF949185FF99978AFF9D9B8EFFA2A093FFA6A5
      9AFF98968DFFA9A7A3FFB1AFAAFFA8A59FFF97948CFFA19E97FFB2AFA8FFB1AF
      A8FF98958BFFABA899FFA8A596FFA4A191FF9E9C8CFF939182FF757369FFA9A6
      96FFD8D3AFFFE0DEC7FFDEDCC5FFDFDDC8FFC2C0ABFF202018FF15150FFF2422
      1BFF5E605FBC000000000000000000000000BBBCBDFFBABBBBFFBDBEBEFEBFC0
      C0FFC3C3C3FFC5C6C6FECACBCBFFCECFCFFFCFD0D0FED5D5D5FFD8D9D9FFDBDB
      DBFFDCDCDCFEDEDEDEFFE1E1E1FED2D2D2FF8F9393B000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F9293B0D8D8D9FFC9C9CAFEB8B9BAFFC2C2
      C3FFC8C8C8FEC4C4C6FFC0C0C1FFBEBEBFFEB6B6B7FFB1B1B2FFACACADFEA5A5
      A6FFA0A0A1FF9A9A9CFE9B9B9DFFAFAFB0FE00000000747475FEFEFEFEFF937C
      73FFCB7552FFC7633BFFC6623BFFC3603AFFC16039FFC05F37FFBF5F36FFBD5E
      36FFBB5D36FFB95C35FFB75B36FFB45832FFAD4D25FFA9461CFFA54117FFA441
      17FFA24118FF9F3B10FFAA6043FFB7A49FFFB7B5B7FFB6AFAFFFBBB4B4FFC2BC
      BCFFD2CDCEFFE4E0E1FF8E5840FF913B15FF9B4722FF9A4722FF9A4723FF9946
      23FF994723FF994623FF984623FF994623FF994724FF95492AFF844B33FFA091
      8AFFE7E7E7FF7D7F7FE5151616180606060600000000030303022D2F31360202
      A2FF3435B2FE4C4CAFFE4C4CADFF4B4BAEFE4B4BAEFE4C4DAEFF4B4EB2FE4C52
      B4FF4B53B8FE4B55BBFE4B57BEFE4C5AC0FF4B5BC1FE8894D6FEEBEBEDFFDEDE
      DEFEDCDCDCFEDCDCDCFFDADADAFED9D9D9FED9D9D9FFD7D7D7FED7D7D7FED8D8
      D8FFD8D8D8FEE6E7E8FE8893D7FF4B5BC1FE4C5AC0FF4B57BEFE5861C0FE737A
      C7FF8387CAFE797BC4FE6061B7FF2F2FA1FE06068EFE02028CFF04048CFE181A
      97FE04048CFE2D2F313603030302000000000000000000000000000000000C0C
      0D0DD5D5D4F7A2A2A2FF545553FF353633FF626257FF818074FF7D7D70FF7F80
      71FF7E7F6CFF848574FF8A8A7AFF908E7FFF959383FF9A9788FF9F9D90FFA3A0
      95FF9F9D99FFACAAA6FFA19E99FF777266FF817C6DFF7F796AFF918D84FFB2AF
      A8FFACA9A3FFA8A599FFA8A597FFA3A090FF9E9C8AFF929181FF727165FFA8A8
      99FFD2D2A8FFDFDFC7FFDDDCC6FFDCDBC6FFD5D2BDFF2B2A20FF15150EFF2625
      1CFF5E605FBC000000000000000000000000B9BABAFEC7C8C8FECACBCBFECDCE
      CEFED0D1D1FED3D4D4FED8D8D8FEDADBDBFEDDDDDDFED6D6D6FED8D9D9FEDCDC
      DCFEDFE0E0FEE2E2E2FEE8E8E8FECCCDCDFEAAABACE60E0E0E0F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E0E0E0FB1B2B3E6E0E0E1FEC1C1C2FEB4B5B6FEC2C2
      C3FEC5C5C6FEC0C0C1FEC0C0C0FED9D9DAFED7D7D8FED3D3D4FECFCFD0FECCCC
      CDFEC7C7C8FEC3C3C4FEC2C2C3FEB2B2B3FE0000000079797AF2F7F7F7FDA693
      8BFFC97755FFC9663EFFC9643DFFC7643CFFC6623BFFC3623BFFC1603AFFC05F
      39FFBE5E37FFBD5D36FFB95C36FFB85C35FFB75B35FFB45831FFAD4D25FFA844
      1BFFA44117FFA34118FFA13A10FFA7502AFFB8A9A4FFB9B6B8FFBEB7B7FFC7C0
      C1FFD2CBCCFFE6E4E6FFD2C4BFFF803718FF9A431DFF9A4520FF984520FF9945
      20FF994520FF984521FF984521FF984522FF974623FF934829FF814932FFBFB3
      AEFFDCDCDCFE7C7E7FD4111212130304040300000000030303022C2F30350202
      A4FF3435B2FE5050B1FE5050AFFF4F4FB0FE4F4FB0FE5050AFFF4F50B1FE5053
      B3FF4F55B7FE4F57BAFE4F59BCFE505CBEFF8B93D4FEEBEBEDFEE1E1E1FFDFDF
      DFFEDDDDDDFEDDDDDDFFDBDBDBFEDADADAFEDBDBDBFFD9D9D9FED9D9D9FEDADA
      DAFFD9D9D9FEDADADAFEE9E9EBFF8B94D4FE505CBEFF4F59BCFE4F57BAFE5056
      B6FF4F52B4FE4F50B2FE5858B3FF7878C1FE8C8CCAFE7C7CC3FF3B3BA6FE1618
      97FE04048EFE2C2F303503030302000000000000000000000000000000000D0D
      0D0ED7D6D5F7A5A5A4FF595957FF3B3B39FF6B6A60FF818177FF807F73FF807E
      72FF7B7A69FF818175FF84857AFF888A7FFF8D8F81FF929385FF99998CFF9998
      8CFF9C9B97FFA9A7A2FF7F7B73FF6B6659FF777162FF756F60FF746F62FFAFAC
      A5FFB1AFA9FF9F9D92FFA7A597FFA1A190FF9C9B8CFF909081FF6F6F64FFA6A5
      99FFD3D1ACFFE0DEC9FFDEDCC7FFDDDBC5FFDCD9C4FF323126FF16160FFF2928
      1EFF5F6260BC0000000000000000000000007276768972777789727777897377
      778973777789737777897579798CB5B6B6F1DFDFDFFED9DADAFFDCDCDCFFDFE0
      E0FFE2E2E2FEE8E8E8FFEEEEEEFED7D7D7FFBABBBBFE5E62626E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005E62626EDBDBDCFEDEDEDFFFB6B7B8FEB0B0B1FFC6C6
      C7FFC2C2C3FEC0C0C1FFC3C3C4FFEAEAEBFEB9BBBCF07579798C737777897377
      778972777789727677897276768971767689000000007D7F80D7E2E2E2F7BCB2
      AEFFC97553FFCC6B43FFCC673FFFCB663EFFC9653DFFC6643CFFC4623BFFC262
      3AFFC1603AFFBF5F39FFBE5E37FFBB5D36FFB95D35FFB85C35FFB65B34FFB356
      30FFAE5028FFA9471FFFA4431AFFA13B0EFFA95A39FFBEB7B6FFC4C0C1FFCDC8
      C8FFD8D3D3FFE1DCDDFFFBFBFDFFB89688FF8F3612FF9B441EFF99451FFF9945
      1FFF994520FF984520FF984520FF974521FF964522FF904828FF7E4832FFCCC5
      C2FFCBCCCCFB797B7CBF0C0C0D0D0202020100000000030303022B2D2F330202
      A6FF3334B3FF5656B2FF5656B2FF5656B2FF5656B2FF5656B2FF5656B2FF5657
      B3FF5659B5FF565BB8FF565CBAFF8E94D3FFEEEEF0FFE4E4E4FFE2E2E2FFE1E1
      E1FFE0E0E0FFDFDFDFFFDEDEDEFFDDDDDDFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
      DCFFDCDCDCFFDDDDDDFFDEDEDEFFEBEBEDFF8F94D3FF565CBAFF565BB8FF5659
      B5FF5657B3FF5656B2FF5656B2FF5656B2FF5656B2FF5858B3FF8282C7FF8182
      C8FF02028FFF2B2D2F3303030302000000000000000000000000000000000D0D
      0D0ED8D8D7F8A9A9A8FF60605FFF434341FF707066FF84847BFF818176FF8181
      75FF7A7B6AFF7F8073FF818176FF84867AFF898B7FFF8E8F81FF949587FF9392
      86FF96948FFFA6A49EFF817E73FF706A5CFF696356FF736C5EFF817C6DFFB1AE
      A7FFB0AEA7FF9C9A8FFFA6A497FFA1A090FF9B9B8CFF908F81FF6D6D63FFA4A3
      97FFD2D1ADFFDFDEC9FFDEDCC7FFDCDBC6FFDCDAC5FF353428FF181810FF2B29
      1FFF5E615FBC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000959898BADBDBDBFEDCDDDDFFDEDFDFFFE1E2
      E2FFE3E4E4FEECECECFFF2F2F2FEECEDEDFFC3C4C4FFA7A9A9ED212323260000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021232326B9BBBBEDEFEFF0FFC8C8C9FFAEAFB0FEB6B6B7FFC5C5
      C6FFC0C0C0FEBEBEBFFFCECECFFFEBEBECFE969899B900000000000000000000
      00000000000000000000000000000000000000000000797D7DB2C3C4C4E9D6D3
      D2FFC47A5CFFD06D46FFCD683FFFCD673FFFCB673EFFCA653EFFC8653DFFC664
      3BFFC3633BFFC1603AFFC05F39FFBE5E39FFBD5E36FFBB5D36FFB85D36FFB85C
      35FFB65B35FFB45833FFAE512BFFAA4B23FFA43E14FFB88270FFCECDCEFFD4D0
      D0FFDED8DAFFE7E1E1FFF2F1F2FFDACAC4FF8A3A17FF9B431CFF9A431EFF9944
      1EFF99441EFF99441FFF98441FFF97441FFF954421FF8C4728FF794934FFC5C2
      C1FFADAEAEEC737676A508080808000000000000000003030302292B2D310202
      A7FF3434B5FE5A5AB5FE5B5BB4FF5A5AB5FE5A5AB5FE5B5BB4FF5A5AB5FE5B5B
      B4FF5A5BB6FE5A5CB8FE9295CFFEEFEFF1FFE5E5E5FEE4E4E4FEE3E3E3FFE1E1
      E1FEE0E0E0FEE0E0E0FFDDDDDDFEC8C9CBFEC9C9CCFFDCDCDCFEDDDDDDFEDEDE
      DEFFDDDDDDFEDEDEDEFEE0E0E0FFE0E0E0FEEDEDEEFF9396CFFE5A5CB8FE5B5C
      B5FF5A5AB5FE5A5AB5FE5B5BB4FF5A5AB5FE5A5AB5FE5B5BB4FF5D5DB6FE8686
      C9FE040491FE292B2D3103030302000000000000000000000000000000000D0D
      0D0EDAD9D9F8ADAEADFF696968FF4E4E4DFF74746BFF8A8981FF85857CFF8383
      78FF7F7F6BFF81816FFF818170FF838272FF888677FF8D8B7CFF929082FF9694
      87FF908E89FFA2A09AFF939189FF656052FF605A4DFF696255FF8D8880FFB1AD
      A7FFACA9A3FFA7A499FFA7A497FFA3A090FF9D9B8AFF928F81FF6D6B5FFFA3A3
      93FFD2D2A6FFDFDEC6FFDCDCC5FFDCDBC6FFD6D4BEFF363529FF18170FFF2D2C
      20FF5D605DBC0000000000000000000000000000000000000000000000000000
      0000000000000000000010111112909393B6D3D3D4FEDBDCDCFEDFE0E0FEE2E2
      E2FEE6E6E6FEEAEAEAFEF3F3F3FEF5F5F5FEDDDDDDFEBBBCBDFE9EA0A0D02123
      2326000000000000000000000000000000000000000000000000000000000000
      000021232326A6A8A8D0F6F6F6FEDCDCDCFEB3B3B5FEABACADFEC0C0C2FEC1C1
      C2FEC0C0C0FEBBBBBCFED4D4D5FEE9E9EAFE919495B610111112000000000000
      00000000000000000000000000000000000000000000696C6C88A5A8A8DAECEC
      ECFFB88574FFD87A55FFD1673FFFD0693FFFCE683FFFCC673FFFCB673EFFCA66
      3EFFC8643DFFC4643BFFC3633BFFC2603AFFC15F39FFC05E36FFBE5E37FFBB5E
      36FFB85C35FFB75B35FFB55A35FFB45933FFAF522CFFB5603EFFE4DCDAFFE9E6
      E6FFEBE7E7FFEFEAEAFFF3F0F1FFECE7E6FF8A472AFF9B3F17FF9D431DFF9A43
      1DFF9A411DFF99431DFF98431DFF98431EFF944421FF89482BFF765141FFE3E2
      E2FF979898E16064647C04050504000000000000000003030302282A2B2F0202
      A9FF3434B6FE6060B7FE6060B6FF5F5FB7FE5F5FB7FE6060B6FF5F5FB7FE6060
      B6FF5F5FB7FE9696CEFEEFEFF1FEE8E8E8FFE6E6E6FEE5E5E5FEE4E4E4FFE2E2
      E2FEE1E1E1FEE0E0E0FFC5C5C7FE7C82BFFE7D81BDFFC4C4C6FEDDDDDDFEE0E0
      E0FFDFDFDFFEE0E0E0FEE2E2E2FFE2E2E2FEE5E5E5FFEDEDEFFE9697CEFE6060
      B6FF5F5FB7FE5F5FB7FE6060B6FF5F5FB7FE5F5FB7FE6060B6FF6262B9FE8384
      C8FE040493FE282A2B2F03030302000000000000000000000000000000000D0E
      0E0FDCDCDBF9B3B3B2FF727271FF5A5A58FF76756EFF908F85FF8C8B81FF8A89
      7FFF858377FF838172FF848276FF838175FF858376FF888678FF8D8B7DFF9291
      82FF7E7B70FF908E88FFA29F99FF96938CFF818077FF918D86FFAAA7A0FFACA9
      A3FF918E84FFA8A597FFA7A495FFA2A090FF9D9A8AFF918E81FF6B695FFFA19E
      8FFFD6D1AEFFE0DDC7FFDDDBC5FFDFDDC7FFC5C3ADFF343328FF19190FFF302E
      22FF5C5F5BBC0000000000000000000000000000000000000000000000000000
      0000090A0A0A585C5C67A9AAACEACECFCFFFD9D9D9FEDFE0E0FFE2E2E2FFE6E6
      E6FFE8E8E8FEECECECFFF2F2F2FEF9F9F9FFFAFAFAFFD9D9D9FEB9BABBFFA7A8
      A9ED5D61616D0E0E0E0F000000000000000000000000000000000E0E0E0F5E61
      626DBABBBCEDF5F5F5FEE5E6E6FFB8B8B9FFA9AAABFFB9B9BAFEC4C4C5FFC0C0
      C1FFBDBDBEFEB6B6B7FFB0B0B1FFC0C0C1FEDDDDDDFFB6B8BAEA575A5B66090A
      0A0A00000000000000000000000000000000000000004D50505D8F9192D1FBFB
      FBFFA9948CFFE3987DFFD46940FFD36A41FFD26940FFCE683FFFCD683FFFCC67
      3FFFCA663EFFC9653DFFC7643CFFC4633CFFC16039FFAE5431FFB6542DFFC05F
      36FFBD5F36FFB95D35FFB85C35FFB75B35FFB3552DFFB55D3AFFEEE5E2FFF7F5
      F6FFF7F5F5FFF9F6F6FFFAF6F7FFFBF9FBFF9E6A53FFA04822FFA4502BFFA34F
      2AFFA14E29FFA04E29FF9F4E2AFF9E4E2BFF984F2FFF884F36FF84736BFFF4F4
      F4FF858787DF3D404049020202010000000000000000030303022628292D0202
      ABFF3434B6FF6666B9FF6666B9FF6666B9FF6666B9FF6666B9FF6666B9FF6666
      B9FF9999D0FFF2F2F3FFEBEBEBFFE9E9E9FFE8E8E8FFE7E7E7FFE6E6E6FFE5E5
      E5FFE2E2E2FFC2C2C4FF7E81B9FF666CC0FF666CC0FF7D81B9FFC1C1C3FFE0E0
      E0FFE2E2E2FFE3E3E3FFE4E4E4FFE5E5E5FFE6E6E6FFE8E8E8FFF1F1F2FF9A9A
      D1FF6666B9FF6666B9FF6666B9FF6666B9FF6666B9FF6666B9FF6969BAFF8181
      C8FF020294FF2628292D03030302000000000000000000000000000000000D0E
      0E0FDEDDDDF9B8B8B7FF7C7C7BFF656564FF757470FF95948BFF929188FF908E
      84FF8C8B81FF858373FF87867AFF858477FF868476FF878577FF888678FF8D8C
      7FFF908E81FF8E8C84FF8F8C87FF9D9B95FFA3A09BFFA5A29DFF9F9D97FF9E9B
      95FFA29F91FFA7A496FFA5A292FFA19F8EFF9B9888FF8E8C7EFF69675CFF9A97
      82FFDAD7BAFFDFDDC7FFDDDBC5FFDEDCC7FFA6A490FF343429FF1C1B10FF3230
      23FF5C5F5BBC0000000000000000000000000000000000000000030404033C3E
      3F45999C9DC8BBBCBCFCD1D2D2FFD9D9D9FFDCDDDDFEE1E2E2FFE4E4E4FFE8E8
      E8FFEAEAEAFEEEEEEEFFF1F1F1FEF9F9F9FFFDFDFDFFFAFAFAFEE1E1E1FFC0C1
      C1FFB6B7B7FEA7A8A8E68F9393B16C7070806C707080909494B1B3B5B5E6DEDE
      DEFEF1F1F1FFDDDDDEFEB9BABBFFABABACFFB1B2B3FFC4C4C5FEC1C1C2FFBFBF
      C0FFB9B9BAFEB2B2B3FFAEAEAFFFA8A8A9FEA7A7A8FFC2C2C3FFD4D5D6FCA0A2
      A4C83B3E3E45030404030000000000000000000000002426262A808283DCF6F7
      F7FCC7C2C0FFE1A48CFFDC7F5DFFD5693FFFD46C41FFD36A41FFD16840FFCE68
      3FFFCD683FFFCB673FFFC9663DFFC65D33FFD38C72FFDCD1CCFFAF816FFF9B47
      25FFB35028FFBC5A30FFBB5A32FFB8562FFFAE4D25FFD1A391FFFBFBFCFFFAF7
      F7FFFBF9F9FFFBF7F7FFFBF7F9FFFAFAFAFFA36D54FFA44D26FFA95431FFA754
      31FFA45330FFA4532FFFA3532DFFA0522FFF975334FF814E37FFB9B6B4FFDCDC
      DCF87D7F7FDE1718181A000000000000000000000000020202012527282C0202
      ACFF3737B9FE6A6ABCFE6B6BBBFF6A6ABCFE6A6ABCFE6B6BBBFF6A6ABCFE9C9C
      D2FFF2F2F4FEECECECFEEBEBEBFEEAEAEAFFE8E8E8FEE7E7E7FEE7E7E7FFE3E3
      E3FEC0C0C0FE7F80B6FF6A6DC0FE6A6DC0FE6B6EBFFF6A6DC0FE7D7EB6FEBEBE
      BFFFE1E1E1FEE3E3E3FEE5E5E5FFE5E5E5FEE8E8E8FFE8E8E8FEEAEAEAFEF3F3
      F4FF9E9ED1FE6A6ABCFE6B6BBBFF6A6ABCFE6A6ABCFE6B6BBBFF6D6DBDFE7E7E
      C7FE040497FE2527282C02020201000000000000000000000000000000000D0E
      0E0FDFDFDFF9BCBCBBFF828382FF6A6A69FF737370FF9D9D95FF999990FF9695
      8CFF939187FF8A897AFF8C8A80FF89887BFF888679FF888678FF888777FF8A87
      78FF8D8B7EFF8F8D7FFF88857BFF78756CFF78756DFF7C796FFF8C8980FF9C9A
      8CFFA09D8FFFA19E8DFFA09D8CFF9F9B8AFF989585FF8C897BFF666459FF9794
      81FFE0DEC7FFDEDCC6FFDBDAC4FFDAD8C1FF7D7C6BFF36362CFF1D1C10FF3432
      24FF5C5F5BBC000000000000000000000000000000001E1F1F22858888A5ADAF
      AFFBC5C6C6FFD3D3D3FED8D9D9FFDCDCDCFFDEDFDFFEE3E3E3FFE6E7E7FFEAEA
      EAFFECECECFEF1F1F1FFF2F2F2FEF8F8F8FFFCFCFCFFF8F8F8FEF5F5F6FFEEEE
      EEFFD4D5D5FEC6C7C7FFC3C4C4FFC7C8C8FED0D0D0FFDCDCDCFFE2E2E2FEE3E3
      E4FFCCCDCEFFB8B9BAFEACACADFFB2B3B4FFC5C5C6FFC2C2C3FEBFBFC0FFBBBB
      BCFFB5B5B6FEAFAFB0FFA9A9AAFFA5A5A6FE9E9E9FFF979799FF9F9FA1FEC8C8
      C9FFCDCECFFB878A8AA51E1F1F22000000000000000000000000777B7BAAB9BA
      BAE0EDEDEDFFC9917DFFE59275FFD5693FFFD76E44FFD66D44FFD46C43FFD26A
      41FFD06940FFCE6940FFCD683FFFC85B31FFDC9D83FFFEFFFFFFF7FAFBFFCDB9
      B3FFB2816DFFB47258FFB36C4EFFB56F52FFCA9E8CFFFCFCFDFFFDFCFDFFFCFA
      FAFFFCFAFAFFFCF9F9FFFAF7F9FFF2EEEEFFA05A3DFFAA512AFFAA532FFFA853
      2FFFA5522DFFA4512DFFA2512DFF9E5330FF945539FF815A4AFFE5E5E4FFA3A4
      A4E16A6E6E8D03030302000000000000000000000000020202012426272A0202
      AEFF3939BAFF7070BEFF7070BEFF7070BEFF7070BEFF7070BEFF9F9FD4FFF4F4
      F6FFF0F0F0FFEEEEEEFFEDEDEDFFECECECFFEAEAEAFFE9E9E9FFE7E7E7FFBBBB
      BDFF8080B2FF7071BEFF7071BEFF7071BEFF7071BEFF7071BEFF7071BEFF7F7F
      B1FFBABABCFFE5E5E5FFE7E7E7FFE8E8E8FFEAEAEAFFEBEBEBFFEDEDEDFFEFEF
      EFFFF4F4F5FFA0A0D4FF7070BEFF7070BEFF7070BEFF7070BEFF7373BFFF7E7E
      C8FF020298FF2426272A02020201000000000000000000000000000000000E0F
      0F10E2E2E1FAC0C0C0FF8A8A89FF6D6D6CFF777776FF9B9B94FFA1A099FF9C9B
      93FF99988EFF939286FF8E8C7FFF8E8C81FF8B897DFF8A887AFF8A887AFF8A88
      78FF898777FF8A887AFF8D8A7DFF8F8D7EFF908F81FF949282FF969485FF9896
      86FF999686FF9A9786FF9B9887FF9A9684FF949181FF8A8778FF636053FF9A97
      87FFDFDDC7FFDDDBC5FFDCDBC5FFDBD9C3FF4D4B3CFF29281DFF1D1D10FF3533
      24FF5C5F5BBC000000000000000000000000000000005D61616EB1B2B2FEC9C9
      C9FED3D3D3FED6D7D7FEDADADAFEDDDEDEFEE0E1E1FEE4E4E4FEE7E8E8FEE5E6
      E6FEEAEBEBFEF1F1F1FEF5F5F5FEF8F8F8FEFBFBFBFEF8F8F8FEF1F1F2FEEDED
      EEFEEAEAEBFEE7E7E7FEDFDFDFFED9D9DAFED7D7D7FED2D3D4FECACACBFEBFBF
      C0FEB6B7B8FEB1B1B2FEBCBCBDFEC7C7C7FEC3C3C5FEC0C0C0FEBEBEBFFEC0C0
      C1FEC0C0C0FEADADAEFEA7A7A8FEA1A1A2FE9B9B9DFE959597FE8F8F91FE8989
      8BFEA6A6A8FEDBDBDCFE5E61626E0000000000000000000000004B4E4F5B8D8F
      8FCEFAFBFBFCBDB4B2FFE7A68EFFDE7C57FFDA6E44FFDA7046FFD76E45FFD56E
      45FFD46D43FFD26A41FFD16A41FFCB5D33FFE09E85FFFFFFFFFFFEFDFEFFFFFF
      FFFFFFFFFFFFFBFBFBFFFAF9F9FFFCFBFCFFFFFFFFFFFFFFFFFFFEFCFCFFFDFB
      FBFFFCFAFAFFFBF7F6FFFAFBFCFFE6D4CEFFA7502BFFAD542FFFAC5430FFAB53
      2DFFA9522DFFA7522DFFA2522EFF9D5534FF8D543AFF9E928FFFFAFAFAFE8688
      89D93D4041490000000000000000000000000000000002020201222425280202
      AFFF3D3DBDFE7575C0FE7676C0FF7575C0FE7575C0FEA1A1D4FFF4F4F5FEF1F1
      F1FFEFEFEFFEEEEEEEFEEDEDEDFEEDEDEDFFEBEBEBFEE8E8E8FEB7B7B9FF7F7F
      B2FE7575C0FE7676C0FF7575C0FE7575C0FE7676C0FF7575C0FE7575C0FE7676
      C0FF7E7EB1FEB7B7B9FEE7E7E7FFE9E9E9FEEBEBEBFFECECECFEEDEDEDFEF0F0
      F0FFF0F0F0FEF3F3F5FEA1A1D4FF7575C0FE7575C0FE7676C0FF7777C0FE7D7D
      C7FE04049AFE2224252802020201000000000000000000000000000000000E0F
      0F10E3E3E3FAC3C3C3FF8F8F8FFF737372FF7C7D7CFF8B8A86FFA6A69EFFA2A2
      9AFF9E9E95FF9B9A90FF929081FF929084FF8F8E81FF8C8A7DFF8B887BFF8A88
      7AFF898778FF878576FF878575FF898775FF8A897CFF8D8C7CFF8F8C7DFF918E
      7FFF939080FF959281FF959281FF949080FF908C7CFF868274FF5D5A4AFF9B99
      8CFFDFDCC6FFDCDAC4FFDEDCC6FFAFAC97FF3E3B31FF1E1C10FF1D1C10FF3533
      24FF5C5F5BBC000000000000000000000000000000000D0D0D0E9B9D9DCEC3C3
      C3FFD6D7D7FFD8D8D8FEDDDDDDFFE0E1E1FFE2E2E2FEE4E4E4FFD7D7D7FFCDCE
      CEFFD6D7D7FEF1F1F1FFF7F7F7FEFBFBFBFFFDFDFDFFF9F9F9FEF6F6F6FFEFEF
      F0FFE6E6E7FEDFDFE0FFD8D9DAFFD2D2D3FECACBCCFFC3C4C5FFBFBFC0FEBABB
      BCFFBFBFC0FFC7C7C8FECACACAFFC6C6C7FFC1C1C2FFC0C0C0FEC1C1C2FFF0F0
      F0FFF6F6F6FED7D7D7FFACACADFF9D9D9FFE969698FF919193FF8B8B8DFE8686
      88FFC7C7C8FFA5A8A8CE0D0D0D0E000000000000000000000000121313147F81
      83C8CBCCCDEAEDEDEDFFC7A294FFEB987CFFDA6B41FFDB7047FFDA7046FFD86F
      46FFD66E45FFD56D43FFD36C43FFCD5E34FFE4A188FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFDFDFFFDFB
      FBFFFBF9F9FFF5F3F3FFFFFFFFFFD1A28EFFAC4D25FFAF5530FFAE552FFFAC54
      2FFFAB522DFFA9522EFFA25331FF97563AFF815643FFE5E4E4FFBFC0C0E87C7F
      7FBD0D0D0D0E0000000000000000000000000000000002020201202223260202
      B1FF3F3FBFFE7A7AC1FE7B7BC2FF7A7AC1FE7A7AC1FEE0E0E6FFF0F0F0FEF1F1
      F1FFEFEFEFFEEFEFEFFEEEEEEEFEEEEEEEFFE9E9E9FEB5B5B6FE8181AFFF7A7A
      C1FE7A7AC1FE7B7BC2FF7A7AC1FE7A7AC1FE7B7BC2FF7A7AC1FE7A7AC1FE7B7B
      C2FF7A7AC1FE7F7FAFFEB3B3B5FFE9E9E9FEEDEDEDFFEEEEEEFEEFEFEFFEF1F1
      F1FFEFEFEFFEF0F0F0FEDEDEE4FF7A7AC1FE7A7AC1FE7B7BC2FF7C7CC2FE7C7C
      C8FE04049CFE2022232602020201000000000000000000000000000000000F10
      1011E4E4E4FAC7C7C7FF959595FF797979FF787777FF818181FFA7A69FFFA9A8
      A1FFA5A49CFFA09F97FF9C9A90FF939181FF939285FF8F8E81FF8B8A7CFF8A88
      7AFF898779FF888677FF878476FF85836FFF848276FF868575FF8A8676FF8C89
      7AFF8E8B7BFF8F8C7DFF908C7CFF8E8A7AFF8B8778FF7F7B64FF5D5A4CFF9A98
      8BFFDDDBC5FFDCDAC5FFDBD9C3FF625E4DFF343228FF1F1C10FF1D1B10FF3532
      24FF5C5F5BBC00000000000000000000000000000000000000004144444BADAE
      AEFFD1D2D2FFDBDBDBFEDFE0E0FFE1E2E2FFD4D5D5FEC0C1C1FFA2A4A5D9A3A5
      A5DCCBCBCBFED8D8D8FFF3F4F4FEFDFDFDFFFCFCFCFFF8F8F8FEF4F4F4FFF1F1
      F1FFECECECFEE5E6E6FFDFE0E0FFD7D7D8FED2D3D4FFD0D0D1FFCFCFD0FED1D2
      D2FFD0D0D0FFCACACBFEC8C8C8FFC3C3C5FFC0C0C1FFC4C4C5FEEFEFEFFFFCFC
      FCFFB0B2B2DCAFB0B2D9E6E6E7FFC0C0C1FE969698FF8D8D8FFF88888AFE9D9D
      9FFFD7D7D8FF4144444B00000000000000000000000000000000000000004D50
      505D8E9090CEFCFCFCFDCAC7C6FFE5AB95FFE78E6FFFDB6C41FFDC7148FFDA70
      47FFD86F46FFD76E45FFD66E45FFD06235FFE7A58BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFCFCFFFBF7
      F7FFF6F5F6FFFCFFFFFFDDB6A7FFB15530FFB45631FFB25631FFAF5630FFAE55
      2FFFAB532EFFA85530FF9F5737FF8C543CFFB1A9A7FFFCFCFCFE898B8BD44143
      444D0000000000000000000000000000000000000000020202011F2121240202
      B3FF4040C0FF7F7FC4FF7F7FC4FF7F7FC4FF7F7FC4FF9393A4FFE0E0E0FFF1F1
      F1FFF1F1F1FFF1F1F1FFF0F0F0FFEDEDEDFFB0B0B1FF8080ADFF7F7FC4FF7F7F
      C4FF7F7FC4FF7F7FC4FF7F7FC4FF7F7FC4FF7F7FC4FF7F7FC4FF7F7FC4FF7F7F
      C4FF7F7FC4FF7F7FC4FF8080ACFFB0B0B2FFEDEDEDFFF0F0F0FFF1F1F1FFF1F1
      F1FFF0F0F0FFDFDFDFFF9292A3FF7F7FC4FF7F7FC4FF7F7FC4FF8181C5FF7D7D
      C9FF02029DFF1F21212402020201000000000000000000000000000000000F10
      1011E5E6E5FBCACACAFF9C9C9CFF818181FF7C7D7CFF828282FF90908CFFAAAA
      A3FFA8A8A1FFA5A59DFFA1A097FF9B9A8FFF929181FF929084FF8E8C81FF8A88
      7CFF898779FF878678FF878376FF858472FF828176FF818273FF85816FFF8683
      75FF888576FF8A8777FF8A8778FF898677FF817F68FF7B7763FF5C594DFF9996
      89FFDBDAC4FFDCDAC4FFABA892FF423F35FF201C11FF1F1B10FF1D1A0FFF3430
      22FF5C5F5BBC0000000000000000000000000000000000000000000000008D90
      91B2BFBFBFFEDBDCDCFED4D5D5FEBFC0C0FEA5A7A7E96165657208080808191B
      1B1DA3A5A5DCCBCCCCFEF2F2F2FEFBFBFBFEF9F9F9FEF5F5F5FEF1F1F1FEEEEE
      EEFEE9E9EAFEE6E6E6FEE2E2E3FEDEDEDFFEDBDBDCFED7D7D8FED3D3D4FED0D0
      D1FECCCCCCFEC8C8C9FEC4C4C6FEC0C0C1FEBFBFC0FEC4C4C5FEF4F4F4FEAFB1
      B2DC191B1B1D0808080861656572BFC1C1E9DFDFE0FEABABADFE89898BFED6D6
      D8FE919595B20000000000000000000000000000000000000000000000000B0C
      0C0C7A7D7EB0B5B7B7DDF6F6F6FFC4AEA7FFEBA990FFE27F57FFDD6E45FFDD71
      48FFDB7147FFDA7047FFD86F46FFD5683EFFDE8565FFFDE7DFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFF
      FFFFFAF7F6FFE7C2B4FFBB5F3AFFB85830FFB75B35FFB55933FFB35831FFB056
      31FFAC5632FFA55738FF955438FF8E7A71FFF4F4F4FFB0B2B2DD767A7AA60808
      08080000000000000000000000000000000000000000020202011E2020230202
      B5FF4242C1FE8484C7FE8383C8FF8484C7FE8484C7FE8282C1FF898996FEDEDE
      DEFFEFEFEFFEEFEFEFFEEDEDEDFEABABACFF7F7FADFE8484C7FE8383C8FF8484
      C7FE8484C7FE8383C8FF8484C7FE8484C7FE8383C8FF8484C7FE8484C7FE8383
      C8FF8484C7FE8484C7FE8383C8FF7F7FACFEACACADFFEDEDEDFEEFEFEFFEF0F0
      F0FFDCDCDCFE898996FE8282C2FF8484C7FE8484C7FE8383C8FF8686C7FE7C7C
      C9FE0404A0FE1E20202302020201000000000000000000000000000000000F10
      1011E6E7E7FBCECECEFFA2A3A2FF878887FF818282FF7F807FFF868786FFA2A1
      9BFFAAAAA3FFA7A79FFFA5A49CFFA09F96FF9A998EFF908E7FFF8E8D81FF8B8A
      7FFF88877BFF878679FF878275FF848572FF828177FF818173FF828069FF817F
      70FF828171FF848173FF848172FF7F7B63FF7D7965FF777464FF565348FF9593
      87FFDEDCC6FFD1CFB9FF565242FF2C281DFF211D11FF1F1B10FF1D1A0FFF332F
      21FF5C5F5BBC0000000000000000000000000000000000000000000000002A2C
      2C30A6A8A8F0BFC0C0FEA9ABABF57F83839A1C1E1E2000000000000000000808
      0808A1A4A5D9DDDEDEFFFCFCFCFEFBFBFBFFF7F7F8FFF2F2F3FEF0F0F0FFECEC
      ECFFE7E7E7FEE5E5E5FFE1E1E1FFDCDCDDFEDADADAFFD5D5D6FFD1D1D2FECECE
      CFFFCACACBFFC6C6C7FEC2C2C3FFBFBFC0FFBBBBBCFFB5B5B6FED9D9D9FFAEB0
      B1D90808080800000000000000001C1E1E208185859ACED0D0F5DDDDDEFEC6C8
      C8F02A2C2C300000000000000000000000000000000000000000000000000000
      000030323238828585D3DDDDDDF1E9E9E9FFC8AEA5FFEFAD93FFE37E56FFDE6E
      44FFDE7248FFDD7148FFDB7047FFDB7046FFD76C41FFD66A41FFE5997DFFF5C9
      B7FFFBE1D8FFFFEEE7FFFFF7F4FFFFF9F5FFFEF3F0FFF9E6DFFFF3D8CEFFE9BE
      ADFFCD7E5EFFBE5931FFBE5C34FFBD5E36FFBB5C36FFB95B36FFB65A34FFB15A
      35FFAA5C3AFF9B593CFF86675BFFE6E6E5FFDCDCDCF2818384D82A2C2C310000
      00000000000000000000000000000000000000000000020202011C1E1F210202
      B7FF4545C4FE8989C9FE8888CAFF8989C9FE8989C9FE8888CAFF8787C1FE8282
      8FFFD9D9D9FEE9E9E9FEA6A6A7FE8181AAFF8989C9FE8989C9FE8888CAFF8989
      C9FE8989C9FE8888CAFF8989C9FE8989C9FE8888CAFF8989C9FE8989C9FE8888
      CAFF8989C9FE8989C9FE8888CAFF8989C9FE8080A9FFA7A7A8FEE9E9E9FED9D9
      D9FF838390FE8787C1FE8888CAFF8989C9FE8989C9FE8888CAFF8B8BCAFE7C7C
      CAFE0404A2FE1C1E1F2102020201000000000000000000000000000000001011
      1112E8E9E9FBD2D3D2FFAAAAAAFF8F908FFF898989FF838484FF818181FF8A8A
      88FFA8A7A1FFA9A8A1FFA5A49DFFA2A199FF9E9D94FF98978EFF8E8C7FFF8886
      76FF88877AFF88867DFF888374FF838675FF818179FF808175FF818168FF807A
      6EFF7D7A6AFF797560FF75725BFF726F60FF828177FF9F9E97FFACABA6FFB3B1
      A5FFD8D5BFFF76715FFF393428FF242012FF221E11FF201C10FF1E1A0FFF312D
      20FF5C5E5ABC0000000000000000000000000000000000000000000000000000
      0000767A7A8F929696C330323237020202010000000000000000000000006165
      6572C0C0C0FEF6F7F7FFFBFBFBFEF9F9F9FFF5F5F5FFF0F0F0FEE0E0E0FFE2E2
      E2FFE4E4E4FEE2E2E3FFDEDEDFFFDBDBDBFED7D7D8FFD4D4D4FFCFCFD0FED1D1
      D1FFDADADAFFDDDDDEFEC0C0C1FFBDBDBEFFB6B6B7FFB1B1B2FEB4B4B5FFE4E4
      E4FF6165657200000000000000000000000002020201303232379C9F9FC3777A
      7B8F000000000000000000000000000000000000000000000000000000000000
      0000000000004C4F4F5C8C8E8ECBF6F7F7FCE7E7E7FFD1AA9BFFF0AE94FFE582
      5EFFDF6E44FFE07248FFDE7248FFDC7047FFDB7046FFD86E44FFD5663BFFD365
      3BFFD46A40FFD36D44FFD3734DFFD3734EFFD1714AFFCC673FFFC9643BFFC35C
      32FFC25D34FFC3603AFFC1623AFFBF5F37FFBE5E36FFBB5D37FFB55C38FFAE5D
      3CFFA05B3EFF885F4DFFD8D8D8FFF5F6F6FC8A8C8CCF45484953000000000000
      00000000000000000000000000000000000000000000020202011B1C1D1F0202
      B8FF4848C6FF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8A8A
      C4FF6E6E7CFF6D6D70FF8080A7FF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8D
      CCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8D
      CCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF7F7FA6FF6D6D71FF6E6E
      7DFF8A8AC4FF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8D8DCCFF8F8FCDFF7D7D
      CBFF0202A3FF1B1C1D1F02020201000000000000000000000000000000001011
      1112E9EAEAFBD6D6D6FFB1B1B1FF989898FF919191FF8A8A8AFF838383FF8181
      81FF8B8A88FFA6A59EFFA5A49DFFA1A099FF9E9D95FF9B9A91FF96958CFF908E
      83FF868576FF827F71FF838065FF7E816DFF7C7B71FF787B6DFF767557FF7069
      5AFF818072FFA09F97FFC1C1BCFFE2E1DAFFE9E7DCFFE1DFCEFFDEDCC7FFD8D6
      BFFF848170FF3E392BFF272112FF252011FF231E10FF201C0FFF1F1A0FFF302C
      1FFF5C5D5ABC0000000000000000000000000000000000000000000000000000
      00000405050403030302000000000000000000000000000000001C1E1E20A5A7
      A7E9E1E1E1FEFCFCFCFEF9F9F9FEF5F5F5FEF1F1F2FEE4E4E4FECCCCCCFED1D2
      D2FED5D5D5FEDADADAFEDCDCDCFED8D8D8FED3D3D4FED1D1D1FEE1E1E1FEEBEC
      ECFEEEEEEEFEECECECFECECECFFEBABABBFEB3B3B4FEAFAFB0FEA8A8A9FEC5C5
      C6FEBEBFBFE91C1E1E2000000000000000000000000000000000030303020405
      0504000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5F6073949798CCFEFEFEFFE8E8E8FFCAB1AAFFECAC
      93FFE9906FFFDF6F42FFE07146FFDF7248FFDD7148FFDB7047FFDB7046FFD86F
      45FFD76D43FFD46A40FFD1673EFFD0673DFFCE673DFFCC663DFFCB653DFFCA65
      3EFFC9653DFFC6643CFFC3633BFFC1623AFFBE6039FFBA613BFFB16140FFA15B
      3EFF8F6A5BFFD9D9D8FFFEFEFEFF939596CC5B5F5F7200000000000000000000
      0000000000000000000000000000000000000000000002020201191B1B1D0202
      B9FF4A4AC7FE9494CEFE9393CFFF9494CEFE9494CEFE9393CFFF9494CEFE9393
      CFFF9494CEFE9494CEFE9494CEFE9393CFFF9494CEFE9494CEFE9393CFFF9494
      CEFE9494CEFE9393CFFF9494CEFE9494CEFE9393CFFF9494CEFE9494CEFE9393
      CFFF9494CEFE9494CEFE9393CFFF9494CEFE9393CFFF9494CEFE9494CEFE9393
      CFFF9494CEFE9494CEFE9393CFFF9494CEFE9494CEFE9393CFFF9595CFFE7C7C
      CBFE0404A6FE191B1B1D02020201000000000000000000000000000000001011
      1112ECEDEDFCDBDBDBFFB8B8B8FFA0A0A0FF989898FF909090FF888888FF8181
      81FF7C7C7CFF858583FF9F9F98FFA09F97FF9C9C94FF98988FFF95948BFF918F
      86FF8B8A81FF85817BFF7D7B6AFF797C71FF888782FF9E9F9BFFC0C0B5FFDED8
      D0FFE3E0D5FFE1DFCCFFDFDCC7FFDDDAC4FFDBD9C3FFDDDAC4FFD6D4BEFF817E
      6DFF373327FF272112FF282212FF262111FF241F10FF211D0FFF1F1B0FFF302C
      1EFF5C5D5ABC0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202017F83839AC2C3
      C3FFFAFAFAFEFBFBFBFFF7F7F7FEF4F4F4FFEEEEEEFFCACBCBFE8F9293B59497
      97BAAEB0B0F0D7D8D8FFDBDBDBFFD5D5D6FED3D3D3FFCFCFD0FFDEDFDFFEBABB
      BCF096999AB9919495B5E2E2E2FFB9B9BAFFB0B0B1FFABABACFEA4A4A5FFA1A1
      A2FFDEDEDFFE8185859A02020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005C5F6073949697CCF6F7F7FCEFEFEFFFC2B5
      B0FFE7B29DFFEE997CFFE57D56FFDF6F45FFE07046FFDE7148FFDC7048FFDB70
      47FFDA7046FFD86F45FFD66E44FFD46D44FFD26C41FFD16940FFCE683FFFCD67
      3FFFCB673EFFC9653EFFC5653DFFC2653FFFBB6440FFB06141FFA05F45FF9F88
      81FFE7E7E7FFF6F7F7FC949797CC5C5F60730000000000000000000000000000
      00000000000000000000000000000000000000000000020202011719191B0505
      BEFF4E4ECAFE9999D0FE9898D1FF9999D0FE9999D0FE9898D1FF9999D0FE9898
      D1FF9999D0FE9999D0FE9999D0FE9898D1FF9999D0FE9999D0FE9898D1FF9999
      D0FE9999D0FE9898D1FF9999D0FE9999D0FE9898D1FF9999D0FE9999D0FE9898
      D1FF9999D0FE9999D0FE9898D1FF9999D0FE9898D1FF9999D0FE9999D0FE9898
      D1FF9999D0FE9999D0FE9898D1FF9999D0FE9999D0FE9898D1FF9B9BD1FE7A7A
      CBFE0606AAFE1719191B02020201000000000000000000000000000000001112
      1213EEEFEFFCE0E0E0FFC0C0C0FFA8A8A8FF9E9F9FFF969695FF8C8C8CFF8282
      82FF7A7A7AFF727272FF787876FF908F89FF97968EFF909088FF82817CFF8585
      80FF91908BFFA29F9CFFC2C2B5FFD2D7CDFFD7D5D1FFD5DCD2FFDCE1B8FFE1D4
      B7FFDFD6C9FFDCDAC4FFDBD9C3FFDEDCC6FFD9D7C0FFC4C2ADFF636051FF2C28
      1DFF231E12FF252012FF262011FF272111FF252010FF231E0FFF201C0FFF2F2A
      1CFF5C5D5ABC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000030323237A9ABABF5E9E9
      E9FFFBFBFBFEFAFAFAFFF5F5F5FEF2F2F2FFDBDBDBFFA7A8A8E9101111120000
      00007579798CD4D5D5FFD8D8D9FFD3D3D4FED1D1D2FFCDCDCDFFDADADAFE7578
      788B0000000010111112B7B8BAEACECECEFFADADAEFFA7A7A8FEA1A1A2FF9B9B
      9DFFB3B3B4FECCCECEF530323237000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B5F5F728C8E8ECCDFDFDFF2F9F9
      F9FFCECBCBFFCCACA1FFEBAC95FFEC9273FFE47F57FFDF7147FFDF7046FFDE71
      48FFDC7048FFDB7047FFDA7046FFD76F45FFD66D44FFD46C43FFD16941FFCF69
      40FFCB6942FFC86943FFC26843FFBA6746FFAC6245FF9B705EFFBDB8B7FFF6F6
      F6FFDDDDDDF18C8E8ECB5C5F6073000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020201141516173D3E
      D1FB7F7FDCFFA0A0D5FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9D
      D4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9D
      D4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9D
      D4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9D
      D4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FF9D9DD4FFA5A5D7FF9494
      D8FF4040C2FA1415161700000000000000000000000000000000000000001112
      1213EFF0F0FCE4E4E4FFC8C8C8FFB1B2B2FFA6A6A6FF9A9A9AFF8F8F8FFF8484
      84FF7B7B7AFF6F6F6FFF656565FF6D6D6CFF858582FF9E9E99FFC2C1BAFFCDCC
      BFFFD9D2CAFFDED2B9FFDADDB2FFD1DDCAFFD3D1CCFFCFD8CFFFD6DEB6FFDFD5
      B1FFDFD2CAFFDDDBC5FFDAD7C1FFCFCDB6FF898777FF343126FF1F1C12FF201C
      11FF211D11FF221D11FF231E11FF251F10FF251F10FF241E0FFF221C0EFF2E29
      1AFF5C5E5ABC0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030302929696C3C2C3C3FEF9F9
      FAFEF9F9FAFEF6F6F6FEF2F2F2FEE8E8E8FEB5B7B7FC575B5B66000000000000
      000073777789CFCFCFFED4D4D5FED1D1D2FECDCDCEFEC9C9CAFED7D7D7FE7477
      77890000000000000000575B5B66D6D7D7FCB2B2B3FEA4A4A5FE9E9E9FFE9797
      99FE969698FEDDDDDEFE9B9E9FC3030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B4E4F5B828586D4B6B8
      B9DEFCFCFCFDEEEEEEFFC0BCBAFFCFA799FFE9A68EFFEB9576FFE57E56FFE073
      4AFFDD7149FFDB7049FFDA6F47FFD87046FFD86F47FFD46E47FFD06E45FFCC6B
      46FFC76B47FFBD6745FFB46C4FFFA6705CFFB2A5A1FFE9E9E9FFFCFCFCFDB5B7
      B7DD828586D44C4F4F5C00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0D0D0E6E70
      BCCEACACEDFECFCFECFEADADDAFFA7A7D6FEA6A6D6FEA5A5D7FFA6A6D6FEA5A5
      D7FFA6A6D6FEA6A6D6FEA6A6D6FEA5A5D7FFA6A6D6FEA6A6D6FEA5A5D7FFA6A6
      D6FEA6A6D6FEA5A5D7FFA6A6D6FEA6A6D6FEA5A5D7FFA6A6D6FEA6A6D6FEA5A5
      D7FFA6A6D6FEA6A6D6FEA5A5D7FFA6A6D6FEA5A5D7FFA6A6D6FEA6A6D6FEA5A5
      D7FFA6A6D6FEA6A6D6FEA5A5D7FFA6A6D6FEA6A6D6FEAAAAD9FFD2D2EBFEA9A9
      E7FE6C6FB8CD0D0D0D0E00000000000000000000000000000000000000001213
      1314F3F3F3FDE7E8E8FFCECECEFFB8B9B9FFACACACFF9D9D9DFF8C8C8CFF8282
      82FF838383FF7F7F7FFF6D6D6DFF515151FF313130FF20201DFF555449FF9A98
      86FFCBC6B3FFDBD5BAFFD6D8B5FFCFD7C4FFD1CEC4FFCED3C8FFD4D9B9FFDEDA
      BAFFD7D0BEFFB0AE98FF757463FF302F22FF1E1C12FF1D1A11FF1D1A10FF1E1A
      10FF1F1B10FF201B10FF211D10FF221E10FF241E10FF251F10FF241E0FFF2F29
      1AFF5E5F5BBC0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004050504767A7A8FA5A7A8F0C5C5
      C5FFE8E8E9FEF4F4F4FFF0F0F0FECDCECEFF999B9CC808090909000000000000
      000073777789CCCDCDFFD3D3D4FFCFCFCFFECBCBCCFFC8C8C9FFD3D4D4FE7377
      7789000000000000000008090909A0A3A4C8D0D0D1FFA0A0A1FE9A9A9CFFABAB
      ACFFD8D8D9FEC5C6C6F0777A7B8F040505040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F3131377A7D
      7EB08E9090CECDCECFEAFCFCFCFDEEEEEEFFCCC8C7FFB9A7A1FFC69887FFD78C
      72FFDD8160FFDD7D58FFDB7954FFD97752FFD47752FFCF7552FFC57452FFBC74
      57FFB17C66FFA78F86FFC5C1BFFFECECECFFF9FAFAFCCCCDCDE98E9090CE7A7D
      7EB02F3131370000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040505044447
      4E559C9CEEF99A9AEFFE8181E7FF7575E1FE7676E1FE7777E2FF7676E1FE7777
      E2FF7676E0FE7676E1FE7676E0FE7777E1FF7676E0FE7676E0FE7777E1FF7676
      DFFE7676DFFE7777E0FF7676DFFE7676DFFE7777E0FF7676DFFE7676DEFE7777
      DFFF7676DEFE7676DDFE7777DEFF7676DDFE7777DEFF7676DCFE7676DCFE7777
      DDFF7676DCFE7676DBFE7777DCFF7676DBFE7575DBFE8585E2FF9A9AEBFE9898
      EAF944474E550405050400000000000000000000000000000000000000001214
      1415F4F4F4FDE9E9E9FFC4C4C4FFA4A4A4FF999A9AFF7F7F7FFF626363FF4445
      45FF222323FF101010FF0D0D0DFF0D0D0DFF0D0D0DFF0D0D0CFF0D0D0CFF0E0E
      0DFF161612FF36352BFF5A594DFF706F62FF777567FF757365FF656456FF4644
      37FF252319FF1A1910FF19180FFF1A190FFF1B1910FF1B190FFF1B190FFF1C19
      10FF1E1A10FF201B10FF221E12FF252113FF282215FF2B2517FF2E2818FF2A24
      14FF60615DBD0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002A2C2C308D91
      91B2ADADAEFECDCECEFFDDDDDEFEACAEAEFB3C3E3F4500000000000000000000
      000072777789C9CACAFFD2D2D2FFCCCCCDFECACACAFFC6C6C7FFD0D0D0FE7377
      77890000000000000000000000003C3E3F45CCCDCDFBB6B6B7FECDCDCEFFD7D7
      D7FF929596B2292B2B2F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0C
      0C0C4D50505D7F8182CB8E8F8FCFBABABAE1F6F7F7FCFBFBFBFFEDEDEDFFD8D6
      D5FFC5BCB9FFB8A39BFFAB9087FFA68880FFA78C83FFB39F97FFC3BAB6FFD7D3
      D3FFECECECFFFBFBFBFFF5F6F6FCB9BABAE18E8F8FCF7F8182CB4D50505D0B0C
      0C0C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      080844474D546F71BCCD4748DEFB2929D8FE2929D7FE2828D8FF2929D7FE2828
      D8FF2929D6FE2929D6FE2929D6FE2828D7FF2929D6FE2929D6FE2828D6FF2929
      D5FE2929D5FE2828D6FF2929D5FE2929D4FE2828D5FF2929D3FE2929D3FE2828
      D4FF2929D2FE2929D2FE2828D3FF2929D1FE2828D2FF2929D0FE2929D0FE2828
      D1FF2929CFFE2929CFFE2828D0FF2929CEFE2929CEFE4546D5FB6E70BACD4346
      4D54080808080000000000000000000000000000000000000000000000001214
      1415BDBDBDF8A3A4A4F9838484F8626263F8434545F73A3B3BF7393A3AF73A3C
      3CF63A3C3CF53A3C3BF53B3C3CF43B3C3CF33C3D3CF23C3C3BF23C3C3CF13D3E
      3DF03E3F3EEF4346465537393A4336393942353738403336363E3234343C3133
      333B3033333A5357577445443EF247463FF1464640F0484840EF494842EE4A49
      42ED4B4A42EC4B4A42EC4A4B43EB4C4A44EA4D4B43E94F4D45E84F4D44E8514F
      46E75A5D5C800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004144444B9B9D9DCEAFAFB0FE858889A50304040300000000000000000000
      000072767789C4C5C5FECECECEFECACACAFEC6C6C7FEC1C1C3FECCCCCDFE7377
      778900000000000000000000000003040403888B8CA6D7D8D8FEA5A8A8CE4144
      444B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000131414154A4E4E5A777A7AA9808283DC8F9192D1A6A9AADAC6C8
      C8EBE5E5E5F8F7F7F7FDFEFEFEFFFEFEFEFFFEFEFEFFF7F7F7FDE5E5E5F8C6C8
      C8EBA6A9AADA8F9192D1808283DC777A7AA94A4E4E5A13141415000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040505040A0B0B0B11121213141516171415161714151617141516171415
      1617141516171415161714151617141516171415161714151617141516171415
      1617141516171415161714151617141516171415161714151617141516171415
      1617141516171415161714151617141516171415161714151617141516171415
      16171415161714151617141516171415161714151617111212130A0B0B0B0405
      0504000000000000000000000000000000000000000000000000000000000000
      0000141515171415151713141516121414151214141512131314111212131011
      11120F1010110E0F0F100D0D0D0E0C0C0D0D0B0C0C0C0A0B0B0B090A0A0A0809
      0909080808080000000000000000000000000000000000000000000000000000
      00000000000002020201090A0A0A080909090808080807070707060606060505
      0505040505040304040303040403030303020202020102020201020202010202
      0201000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D0E5D61616E1E1F1F220000000000000000000000000000
      000072767689C0C1C1FFCACBCBFFC7C7C7FEC5C5C6FFC1C1C2FFC9CACAFE7377
      7789000000000000000000000000000000001E1F1F225E61626E0D0D0D0E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002426262A4D50505D6A6E6E8B7B7D
      7DB57E8080D879797AF2747475FE747475FE747475FE79797AF27E8080D87B7D
      7DB56A6E6E8B4D50505D2426262A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202010202020102020201020202010202
      0201020202010202020102020201020202010202020102020201020202010202
      0201020202010202020102020201020202010202020102020201020202010202
      0201020202010202020102020201020202010202020102020201020202010202
      0201020202010202020102020201020202010202020100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000072767689ADAEAEFEAEAFAFFEB0B1B2FEB4B5B5FEB6B7B7FEB8B9B9FE7276
      7689000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0201030303020304040304050504050505050505050505050505040505040D0E
      0E0F191B1B1D1718181A08080808000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030302090A0A0A121414151B1C1C1F212323272628282D282A2A2F282A
      2A2F282A2A2F282A2A2F282A2A2F282A2A2F282A2A2F282A2A2F282A2A2F282A
      2A2F282A2A2F282A2A2F282A2A2F282A2A2F282A2A2F2729292E222424281314
      1516050505050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202010202020102020201030404030505
      0505050505050505050505050505050505050505050505050505050505050505
      0505050505050505050503040403020202010202020102020201000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0D0D585B7E8E494CA6C5484A
      A6C6484AA6C6484AA6C6484AA6C6484AA6C6484AA6C6484AA6C6484AA6C6484A
      A6C651549BB63E40464D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003336383E5457
      97AF484AA6C6484AA6C6484AA6C6484AA6C6484AA6C6484AA6C6484AA6C6484A
      A6C6484AA6C6484AA6C6535798B135383B410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202020103040403070707070A0B
      0B0B0D0E0E0F12131314151616181718181A1719191B1718181A16171719393C
      3C465B666D965B666A902527272C0C0C0D0D0304040300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040505041112
      12132426262A37393A4346494A5B4F52536D5458587D575B5B8A585B5C8F585B
      5C8F585B5C8F585B5C8F585B5C8F585B5C8F585B5C8F585B5C8F585B5C8F585B
      5C8F585B5C8F585B5C8F585B5C8F585B5C8F585B5C8F585B5C8E5559597F4043
      4350131415160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000202020103040403060606060B0C0C0C0F1010111516
      16181A1B1B1E1E202023222424282A2C2C323133333B35373840373A3A443A3D
      3D483B3E3E493B3E3E493B3E3E493B3E3F4A3B3E3F4A3B3E3F4A3B3E3E493B3E
      3E493B3E3E493A3C3C4737393A433436363F3033333A292B2B31212323271D1F
      1F22181A1A1C141515170F1010110B0C0C0C0606060603030302020202010000
      00000000000000000000000000000000000054586F7C0404C8FF2828D0FF2F2F
      D1FF302FD1FF3031D1FF3232D1FF3232D2FF3333D2FF3434D2FF3635D2FF3737
      D2FF1111CAFF4446ABCC03040403000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000050539DB70D0D
      C9FF3838D2FF3838D2FF3838D2FF3838D2FF3838D2FF3837D2FF3737D2FF3738
      D2FF3737D2FF3939D3FF1313CAFF4C4EA3C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030302060606060C0C0D0D121414151C1D1D202729
      292E3436363F40434351494D4D604F5252695154546E5053546C4B4E4F63575D
      5F8464A6C8EE7BC4E4FB5C6C75A73033333A1718181A08090909030404030202
      0201000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030404030E0F0F102628282D4245
      465558675D9649794EC7348737E1229328EF0BA912FF0BA912FF0BA812FF0BA7
      12FF0BA712FF0BA612FF0BA512FF0BA412FF0BA412FF0BA211FF0BA211FF0AA0
      11FF0AA011FF0A9F11FF0A9E11FF0A9D11FF0A9B11FF109417FB3A6D3FD8565A
      5A80222424280000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020201060606060D0E0E0F1718181A1E2020232628282D2C2F2F353235
      353D373A3A443C3F3F4B4044445246494A5B4B4E4F644E51516A4F53536E5154
      5471525556745256567553565676535656765356567653565676535656765256
      567552555674515555724F53536E4E5151694A4D4E6245484859404343503A3D
      3D48363939423234343C2C2F2F352628282D1E202023161717190D0E0E0F0505
      050502020201000000000000000000000000575A78870303C6FF7979E4FFBAB9
      F5FF9D9CF0FF9F9FEFFFA7A6F1FFAFAEF3FFB6B6F4FFBEBDF4FFC7C6F6FFE3E2
      FBFF5E5EDBFF0B0BC1FA2B2E3034000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181A1A1C1E1FBCEE5454
      D8FFF2F2FDFFE4E3FAFFE1E1F9FFE1E0F9FFDEDFF9FFDEDEF8FFDFDFF9FFE0E0
      F9FFE9E9FBFFECECFBFF2C2CD0FF4A4DA5C30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030302070707070E0F0F10181A1A1C2B2D2D3342454655595D5D7E6B6F
      6FA1828484BD9A9C9CD2B9BAB9E3C5C6C4EBC3C4C3ECC0C2C1EBB4B6B6E59395
      94D96A8FA2E9A8EDFAFF80C8E2FC547082CD4D5151682527272C121414150809
      0909030404030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005050505191B1B1D3B3E3F4A55775AB01E9E
      25F20BAE13FF0BAD13FF0BAD13FF0BAC12FF0BAB12FF0BAB12FF0BAA12FF0BA9
      12FF0BA912FF0BA812FF0BA712FF0BA612FF0BA512FF0BA412FF0BA412FF0BA2
      11FF0BA111FF0AA011FF0A9F11FF0A9E11FF0A9D11FF0A9C11FF0A9B11FF5154
      54701E2020230000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030404030809090910111112181A1A1C202122252729292E2D2F
      2F363235353D383B3B453E40414D424545544649495A4F525269626666956B6E
      6EBD6A6C6CDA6C6C6CED7A7878FF7A7878FF7A7878FF7A7878FF6C6C6CED6A6C
      6CDB6A6C6CBF626566985054546E484C4C5F45484859424445533C3F3F4B3639
      39423133333B2C2F2F352729292E202122251719191B10111112080909090304
      0403000000000000000000000000000000001A1B1C1E2B2DB9E42828D0FF8987
      ECFF5553E4FF4E4CE2FF5B59E4FF6765E7FF7472E8FF807EEAFF8A89ECFFB2B0
      F4FF9B9BEBFF0606C8FF585B8C9F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000565A75830202C6FF9898
      E9FFD9D9F9FFB7B7F2FFA9A9EFFF9C9CEDFF8E8EEAFF8A8AE9FF9897ECFFB1B0
      F0FFDEDEF9FFA3A3EBFF0505C7FF54586F7C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202010405
      05040C0C0D0D181A1A1C3234343C54575773757877ACA8A9A8D7F2F2F2F7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFF3F3F3FFEDEEEEFFE8E8E8FFE4E3
      E3FF899FACFF94D6EDFFB0F4FEFF91DAF3FF587C93EC5D6466A7434647562022
      22260F1010110606060602020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000060606061E20202357675C8720A227F10BB113FF0BB1
      13FF0BB013FF0BB013FF0BAF13FF0BAE13FF0BAD13FF0BAD13FF0BAC12FF0BAB
      12FF0BAB12FF0BA912FF0BA912FF0BA812FF0BA712FF0BA612FF0BA512FF0BA4
      12FF0BA312FF0BA211FF0AA111FF0AA011FF0A9F11FF0A9E11FF1B9A22F42B2E
      2E340D0D0D0E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202020103040403060606060A0B
      0B0B0D0E0E0F1214141516171719595C5D73727575BA747373FF908C8CFF9B97
      97FFA49F9FFFA6A1A1FF999595FF999595FF999595FF999595FFA39E9EFFA09C
      9CFF9B9797FF908C8CFF747373FF727575BB5A5E5E76191B1B1D151616181112
      12130D0D0D0E090A0A0A06060606030404030202020100000000000000000000
      00000000000000000000000000000000000000000000585B7C8C0505C8FF7372
      E5FF5350E5FF2D2BDDFF3937DFFF4644E1FF5352E4FF605FE5FF6D6BE7FF8583
      EBFFC1C1F5FF3D3DD6FF1E1FBEEE181A1A1C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D0E3234B5DE2A2AD1FFC9C9
      F6FF9999EDFF706FE4FF504FDEFF3837D9FF2B2AD7FF2625D6FF3534D9FF7877
      E5FFBFBFF3FF3535D3FF2929B9E61C1E1F210000000000000000000000000000
      0000000000000000000000000000000000000000000003030302070707071214
      14152B2D2D335255566F828485B9D4D5D5EAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFFF6F6F6FFF0F0F0FFEBEBEBFFE6E6E6FFE2E2E2FFDCDCDCFFD6D6
      D6FFB7BABCFF74A7C4FFB0F2FEFFAAF0FEFF94DAF2FF6299B7FC71777BDA5F62
      638F3538384116171719090A0A0A030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040505041C1D1D20577E5CA90CB413FF0CB413FF0CB313FF0CB3
      13FF0BB213FF0BB113FF3E9F44D858875DA958705D86576F5C83576F5C83576F
      5C83576F5C83576F5C83576F5C83576F5C83576F5C83576E5C83576E5C83576E
      5C83576E5C83576D5C83576D5C83576D5C83576D5C83576D5C832A2D2C320808
      0808020202010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004E515160757676DF848181FFA7A3A3FFA7A2A2FF999595FF9693
      93FF969393FF969393FF969393FF969393FF969393FF969393FF969393FF9693
      93FF969393FF969393FFA49F9FFFA5A0A0FF848181FF757676DF4E5151600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036393C420202C6FF5A5A
      DDFF7674EAFF2623DDFF2A27DDFF3633DFFF4240E0FF4F4DE3FF5B59E4FF6A69
      E6FFACABF3FF8181E5FF0202C6FF42444C530000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037393D430202C5FF7070E0FFA8A8
      F0FF4747DDFF1715D4FF0807D0FF0706D0FF0706D0FF0706D0FF0706D0FF5757
      E0FF8A8AE7FF0404C7FF575A7786000000000000000000000000000000000000
      00000000000000000000000000000000000003030302090A0A0A1719191B3E40
      414D6E7272A1CFCECDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFF7F7F7FFF1F1F1FFECECECFFE7E7E7FFE0E0E0FFDBDBDBFFD7D7
      D7FFCECECEFF688DAAFFB0EEFCFFA6EFFEFFAAF1FFFFA4E4F5FF5D94B6FF709C
      93F7767877BD4C5050651F2121240D0D0D0E0304040300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001112121358845CAD0CB714FF0CB614FF0CB614FF0CB513FF28A7
      2FEB586E5C872023222606060606020202010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000292B
      2B30747575CF848181FFAFAAAAFFA5A1A1FFA19E9EFFA19E9EFFA19E9EFFA29E
      9EFFA29E9EFFA29F9FFFA29F9FFFA39F9FFFA39F9FFFA3A0A0FFA3A0A0FFA39F
      9FFFA39F9FFFA29F9FFFA29F9FFFA29E9EFFA4A0A0FFACA7A7FF848181FF7475
      75CF292B2B300000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0D0D3B3CB1D61D1D
      CFFF7A79E9FF312FDFFF1B19DBFF2522DCFF312DDEFF3C3AE0FF4846E1FF5452
      E3FF8180EBFF9797ECFF0A09C9FF575A8CA00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000585B7C8C0606C8FF8181E6FF5B5A
      E1FF0F0ED3FF0706D2FF0A09D2FF0B0AD1FF0B0AD1FF0A09D1FF1212D2FF7171
      E4FF5656DBFF0404C6FE3336383E000000000000000000000000000000000000
      0000000000000000000000000000030303020A0B0B0B1F2121244F5252699798
      98CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFF8F8F8FFF3F3F3FFEDEDEDFFE7E7E7FFE0E0E0FFDBDBDBFFD5D5
      D5FFD1D1D1FFA3ADB4FF81C2E5FFB0F3FEFFA1EDFFFFA7F0FFFFAEECFAFF6EAF
      CFFF717C85FF8E8D8DE55F626287292B2B310D0E0E0F04050504000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004050504526257740CB914FF0CB914FF0CB814FF0CB814FF4D8C53C32E31
      3037080808080202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000595C5C707473
      73FFAAA5A5FFB2ADADFFACA9A9FFADA9A9FFADAAAAFFAEAAAAFFAEABABFFAFAC
      ACFFAFACACFFAFADADFFB0ADADFFB1AEAEFFB2AFAFFFB0ADADFFB0ADADFFB0AD
      ADFFB0ADADFFB0ADADFFAFADADFFAFACACFFAFACACFFAEABABFFB1ADADFFABA6
      A6FF747373FF595C5C7000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000054576E7B0202
      C7FF5B5ADFFF4B49E3FF1512DAFF1916DBFF2320DCFF2D2ADDFF3836DEFF4341
      E0FF5E5DE5FF9B9BEFFF2D2DD2FF1919C0F12123242700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000101111123234B7DE1B1BCEFF7D7CE7FF2B2A
      D8FF0807D2FF0B0AD2FF0B0AD2FF0B0AD2FF0B0AD1FF0A09D1FF2827D7FF7C7B
      E6FF1C1CCEFF2F30B9E10D0D0D0E000000000000000000000000000000000000
      00000000000000000000030303020A0B0B0B20212225595C5C7AB7B8B7DBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFF8F8F8FFF3F3F3FFEDEDEDFFE7E7E7FFE2E2E2FFDBDBDBFFD4D4
      D4FFCECECEFFC4C4C4FF65A0CBFFB3EFFCFFA4EEFEFFA1ECFEFFA9F0FEFFABEA
      F9FF77B6DBFF667480FF999896F1676A6B982D2F2F360D0E0E0F030404030000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0F0F101EB527F30CBC14FF0CBB14FF0CBA14FF468C4BCD2B2E2E340707
      0707000000000000000000000000000000000000000000000000000000000000
      0000000000000505050513141516222424282729292E282A2A2F282A2A2F282A
      2A2F282A2A2F2628282D222424281C1E1E21161717190D0E0E0F050505050202
      0201000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E71729F848181FFB7B2
      B2FFB8B4B4FFB8B4B4FFB9B5B5FFB9B6B6FFBAB7B7FFBAB8B8FFBBB8B8FFB3B0
      B0FF939191FF7D7B7BFF6C6B6BFF626262FF626262FF626262FF6D6C6CFF7F7E
      7EFF969494FFB7B4B4FFBCBABAFFBCB9B9FFBCB9B9FFBBB8B8FFBAB8B8FFBAB7
      B7FFB9B4B4FF858383FF6E71729F000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0B0B0B2C2E
      B9E33736D4FF7A78EBFF211DDDFF0E0BDAFF1613DBFF1F1CDDFF2926DEFF3331
      DFFF4341E3FF8181EEFF908FEBFF0909CCFF585B8A9D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000565974810404D2FF7271EAFF6160EBFF1210
      DDFF0A08DBFF0B0ADAFF0B0ADAFF0B0ADAFF0A08DAFF1110DBFF5857E8FF5656
      E4FF0404D0FE494D586100000000000000000000000000000000000000000000
      00000000000002020201080909091C1E1E21595D5D7BD1D1CFE6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FFF4F4F4FFEDEDEDFFE7E7E7FFDFDFDFFFDADADAFFD3D3
      D3FFCDCDCDFFC6C6C6FF8499A8FF99D5EFFFACF1FFFFA1EDFFFFA1EDFFFFA8EF
      FFFFB5F1FDFF7DB4D3FF5D7181FF919391F66B6E6E9F2B2E2E340C0C0D0D0303
      0302000000000000000000000000000000000000000000000000000000000000
      0000546758770CBE14FF0CBE14FF0CBD14FF1DA925F3494D4D61151616180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202011718181A404444525559597F585B5C8E585B5C8F585B5C8F585B
      5C8F585B5C8F575B5B8A5559597F515555734A4D4E623E41414E2D2F2F361B1C
      1C1F0C0C0D0D0304040300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E71729F848181FFBFB8B8FFC0BA
      BAFFC2BCBCFFC3BEBEFFC4BFBFFFC5C1C1FFC5C1C1FFACA9A9FF7E7D7DFF3E3E
      76FF1F1F86FF060693FF060693FF060693FF060693FF060693FF060693FF1717
      89FF3E3E76FF3E3E76FF868585FFBCB9B9FFC8C5C5FFC8C4C4FFC7C3C3FFC6C2
      C2FFC6C1C1FFC6C0C0FF868484FF6E71729F0000000000000000000000000000
      000000000000000000000000000000000000151616185054646D565A747F3334
      BEE11515D3FF4848E0FF1B1AD8FF0B09D3FF0C0AD1FF0F0ED0FF1312CFFF1817
      CEFF1C1BCEFF3230CFFF5958D3FF1111C0FF1B1BB5F1585B7487575A6E80575A
      6F82575A6E82575A6D82575A6C82575A6A82575A6982575A6882575A6682575A
      6682575A6582575A6580575B668328298EE80C0C93FF4C4CA1FF22219AFF0A09
      95FF0A0995FF0A0A95FF0A0A95FF0A0A95FF090895FF111096FF39399EFF2020
      96FF0D0D93FA595C72915558607A3133353B0000000000000000000000000000
      000000000000060606061719191B5356566FC8C8C6E3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFFF5F5F5FFEEEEEEFFE7E7E7FFE0E0E0FFD5D5D5FFC5C5
      C5FFBBBBBBFFB5B5B5FF8F9498FF79B3D8FFAEEEFDFF9DEBFEFF9DEBFEFF9DEB
      FEFF9FEDFEFFB3EFFCFF89C3DFFF5B7484FF8C8D8DF5686B6B992426262A090A
      0A0A020202010000000000000000000000000000000000000000000000000000
      0000598A5FA60CC015FF0CC015FF0CBF14FF477F4CCB3E41414E0D0E0E0F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000405050459775F9218AC1EF70BB213FF0BB113FF0BB013FF0BAF13FF0BAE
      13FF0BAD13FF1E9323F2268B2CEC3A793EDA4A6C4EC6575F5BA4585B5B8B4E52
      526B393C3C461C1E1E2108080808020202010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006E71729F848181FFC0B9B9FFC2BCBCFFC4BE
      BEFFC6C0C0FFC8C2C2FFC7C1C1FFB7B4B3FF918F8FFF626262FF686767FF7979
      78FF8C8B8BFF90908FFF8A8A89FF939392FF9C9B9AFF868585FF848383FF8281
      81FF818181FF757575FF727171FF979594FFC3BFBFFFCEC9C9FFCEC9C9FFCDC7
      C7FFCBC6C6FFCAC4C4FFC8C2C2FF878484FF6E71729F00000000000000000000
      000000000000000000000000000000000000595D76811818E0FF1515DEFF1313
      DDFF0E0EDAFF0808D7FF0505D3FF0202CFFF0606CFFF0909CDFF0303C8FF0202
      C2FF0202BEFF0202BAFF0202B6FF0202B4FF0202B1FF0202AFFF0202ABFF0202
      A7FF0707A6FF0909A3FF09099FFF090998FF08088EFF020381FF020273FF0202
      69FF020261FF02025DFF06075EFF090958FF090957FF020255FF050556FF0202
      52FF020254FF090957FF090956FF090956FF090957FF040455FF020251FF0202
      55FF090957FF090958FF09095DFF505375BD0000000000000000000000000000
      0000030404031011111245494959A9A8A7D5FFFFFFFFFAFAFCFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFF7F7F7FFEFEFEFFFE7E7E7FFE0E0E0FFC4C4C4FF7F87
      8FFF747F86FF717C83FF687781FF6390B2FFA5DEF4FF9BEBFDFF97E9FDFF97E9
      FDFF97E9FDFF98EAFDFFAEF0FEFF91D0EEFF5E829DFF8A8D8DF35D616185191B
      1B1D050505050000000000000000000000000000000000000000000000000000
      00004E9F54C40CC315FF0CC215FF0CC115FF516D56B93F42424F0E0F0F100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000202222250CB613FF0CB513FF0CB313FF0CB313FF0BB213FF0BB013FF0BB0
      13FF0BAE13FF0BAD13FF0BAC12FF0BAB12FF0BAA12FF0BA812FF307D35E34C67
      50C2585C5C934C5050672B2E2E340E0F0F100303030200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000595C5C70848181FFC1BABAFFC3BDBDFFC6C0C0FFC8C2
      C2FFCAC4C4FFC2BDBDFFAFADACFFB0AFAEFFC6C5C4FFBEBDBDFFC5C4C3FFC5C4
      C3FFB8B7B6FFB9B8B7FFB9B8B7FFB9B8B7FFB8B7B6FFB7B6B5FFB5B4B2FFB2B1
      B0FFAFAEADFFABAAA9FFA7A6A4FFA2A19FFF9E9D9CFFAAA8A7FFC7C3C3FFD1CC
      CCFFCFCACAFFCDC8C8FFCCC6C6FFCAC4C4FF878585FF595C5C70000000000000
      0000000000000000000000000000000000005E61818C2525E6FF1313D1FF0E0E
      C9FF0D0DC9FF0C0CC5FF302EC0FF403FBEFF1B1ABBFF0607BAFF2523B8FF3F3D
      B6FF3E3CB5FF3E3CB4FF3E3CB3FF3E3BB1FF3E3BB0FF3E3BAEFF3E3CACFF3D3C
      ACFF1413A3FF0505A1FF0707A0FF02029CFF020290FF252398FF5C59AEFF7775
      B9FF6B69B1FF3C3999FF060481FF020283FF030389FF040489FF090986FF4443
      9BFF2B2990FF020283FF05058AFF05058AFF020282FF161487FF44429AFF1413
      86FF020283FF05058AFF080866FF505375BE0000000000000000000000000202
      02010A0B0B0B2E303037868787BCFDF9F9FEEEEDEEFFF1F1F3FFF9F9F9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFF7F7F7FFEFEFEFFFE7E7E7FFDFDFDFFFB5B6B7FF54A0
      D8FF7CC1E7FF6ABCE7FF69BCE6FF6CBCE7FF96DDF6FF95E8FCFF92E7FCFF92E7
      FCFF92E7FCFF91E7FCFF94E8FDFFABEFFEFF9FD9F0FF62859EFF7D8083E74C4F
      5064101111120303030200000000000000000000000000000000000000000000
      00004FA055C20DC415FF0DC415FF0DC315FF4E6C52C04B4E4F64181A1A1C0202
      0201000000000000000000000000000000000000000000000000000000000000
      00001E2020230CB714FF0CB614FF0CB513FF0CB413FF0CB313FF0BB213FF0BB1
      13FF0BB013FF0BAF13FF0BAE13FF0BAC13FF0BAB12FF0BAA12FF0BA912FF0BA7
      12FF307C35E3555C58AD5458587D37393A431213131403030302000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292B2B30747373FFBCB6B6FFC5BEBEFFC7C1C1FFC9C3C3FFCBC6
      C6FFC0BCBCFFB0AFADFFB4B3B2FFB8B7B6FFBCBBBBFFC0BFBEFFC1C0BFFFBDBB
      BAFF030327FF060693FFCDCBCBFFC5C4C3FF6F6E6EFF05057CFF0606A3FF7878
      CCFFBBBAB9FFBCBBBAFFC3C1C0FFC0BEBDFFBCBAB9FFA6A5A3FFA6A5A3FFC7C3
      C3FFD2CDCDFFD1CCCCFFD0CBCBFFCEC8C8FFC5C0C0FF767575FF292B2B300000
      00000000000000000000000000000000000060637F893434E9FF1414D2FF0D0D
      CAFF0C0CCAFF0807BEFFB1AFE0FFFCFCFBFF5854BFFF0202ACFF8784CEFFFCFC
      FBFFFBFBFBFFFFFFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFEFFFFFF
      FCFF4240B1FF0202A2FF0203A0FF1E1D9EFF8181C2FFE9E8F2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB2B0D7FF4140A3FF02028EFF020292FF1E1E95FFD1D1
      E7FFD8D7EAFF232295FF02028DFF02028FFF3E3CA2FFC6C4E0FFD1CFE5FFC3C2
      DFFF3C3BA2FF020290FF080868FF515474BC0000000000000000000000000405
      05041719191B6467668BE9E3E1FBE3E3E4FFE4E5E5FFECECEBFFF1F1F1FFF8F8
      F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6F6F6FFEFEFEFFFE6E6E6FFDDDDDDFFB8B9BAFF67AD
      DDFFB6F1FDFF93EAFDFF8FE9FCFF8EE8FCFF8CE6FBFF8CE5FBFF8CE5FBFF8CE5
      FBFF8BE5FBFF8BE5FBFF8BE5FBFF8CE6FBFF9FECFCFFA2D6ECFF6D95B2FF6E73
      75CB2E3030370808080800000000000000000000000000000000000000000000
      0000597C5F8F0DC615FF0DC615FF0DC515FF38823DDD575A5B862F3131380808
      0808000000000000000000000000000000000000000000000000000000000000
      000000000000393F3C4657905DAF4F9B54C24E9954C44E9953C44E9953C44E99
      53C44E9853C44E9853C40BAF13FF0BAE13FF0BAC13FF0BAB12FF0BAA12FF0BA9
      12FF0BA712FF17961EF64D6151C0575A5B8637393A430E0F0F10020202010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000747575CFB1ABABFFC5BFBFFFC8C2C2FFCAC5C5FFCDC7C7FFCAC7
      C7FFB7B6B5FFBCBBBAFFBCBBBAFFB0AEADFF030330FF4141CEFFBBBABAFF9C9A
      9AFF030327FF060693FFDAD8D8FFCCCCCBFF6F6E6EFF05057CFF0707CDFF7878
      CCFFC4C3C3FFCCCACAFF3E3DBEFF040467FF706E6EFFBBB9B9FF706EA4FF3837
      3FFFC5C1C1FFD5D1D1FFD3CFCFFFD1CCCCFFCFCACAFFB3B1B1FF747575CF0000
      00000000000000000000000000000000000062667F894444EBFF1818D7FF0D0D
      D1FF0D0ED0FF0907C2FFB4B3E2FFFFFFFFFF5854C0FF0202B1FF8A87D0FFFFFF
      FFFFCDCBE6FF6A65B5FF6966BCFF716EC2FF7572C4FF7673C2FF7774C1FF7673
      C2FF211FACFF0202A8FF08069BFFC3C1E0FFFFFFFFFFFFFFFFFFBCBADBFF9794
      C9FFA7A5D1FFE9E7F2FFFFFFFFFFFDFCFCFF6C6AB5FF02028EFF02028EFF3A38
      9EFFFEFEFDFFD0CEE4FF18168DFF020286FFC1BFDFFFBBB9DAFF020278FFBFBE
      DCFFC1C0DFFF02028BFF070768FF515474BC0000000000000000020202010A0B
      0B0B3F42424FA8AAA8DEDEDFDFFFD6D5D5FFDDDCDCFFE3E3E3FFE9E9E9FFF0F0
      F0FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF9F9F9FFEFEFEFFFE5E5E5FFDDDDDDFFBFC0C0FF6CA6
      D0FFABE4F8FF8FE6FBFF86E2FAFF86E2F9FF86E2FAFF86E2FAFF86E3FAFF8CE5
      FAFF8FE6FAFF8FE6FAFF8FE7FBFF8FE6FAFF8FE7FBFFA1ECFDFFAFE5F5FF73A4
      C8FD5E61618A1011111203030302000000000000000000000000000000000000
      0000454F48580DC915FF0DC815FF0DC715FF19B021F6555E58AD4F52536D2729
      292E0A0B0B0B0202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E202023556A597B36A43CE00BAB12FF0BAA
      12FF0BA912FF0BA712FF119F18FB4D6151C05458587C292B2B31070707070000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E5151608C8989FFC6C0C0FFC9C3C3FFCBC6C6FFCEC8C8FFD7D4D4FFB1B0
      B0FF9D9A9AFF373636FFB3B1B1FF979595FF030330FF4141CEFFBDBCBCFF9F9E
      9EFF030332FF0707C0FFE0DEDEFFD8D8D8FF727171FF05057CFF0707CDFF7878
      CCFFD0D0CFFFD3D2D2FF3E3DBEFF050586FF727070FFC0BFBEFF7371C0FF0303
      2BFF9C9999FFCECACAFFD7D3D3FFD5D0D0FFD2CECEFFC7C4C4FF828181FF4E51
      51600000000000000000000000000000000065687F895555EBFF1C1CDBFF0D0D
      D5FF0E0FD5FF0A09C6FFB2B1E3FFFFFFFFFF5854C2FF0202BEFF4744C4FFE2E1
      F0FFFBFAFAFF9B98CFFF4C4AB3FF1815A9FF0202A3FF0202A8FF0202ABFF0202
      A9FF0606B0FF0404A8FF7773C0FFFFFFFFFFDFDEEFFF5351B1FF060497FF0202
      95FF020293FF2A279CFFA5A3D2FFFFFFFFFFDAD9EBFF161393FF020295FF0202
      8DFF5B59ACFFFAFAFBFFB2B1D6FF090983FF9594CAFFD7D6E9FF5352A2FFD9D8
      E9FF9B99CDFF02028BFF070768FF515474BC0000000000000000040505041719
      191B6B70709AD3FFFFFFC9E4E6FFCDD7D7FFD3D5D4FFDAD8D8FFDFDFDFFFE7E7
      E7FFEFEFEFFFF6F6F6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCFFF1F1F1FFE5E5E5FFDCDCDCFFC7C7C7FF79A1
      C1FFA3D9F2FF90E5FBFF81E0F9FF81E0F9FF81E0F9FF81E0F9FF8BE4FAFFA5DF
      F5FF98D0EDFF99D1EDFF9AD2EEFF9AD1EDFF99D1EDFF99D2EDFFA1D3EEFF71B1
      E0FF858686CC282B2B3007070707000000000000000000000000000000000000
      00000000000038B740DF0DCA16FF0DC916FF0DC815FF318C37E3585B5BA35256
      567537393A431C1E1E210D0E0E0F040505040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000556A597A0BAB
      12FF0BAA12FF0BA912FF0BA712FF17961EF6565E59A9474A4A5C131415160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000757777DFC0BABAFFC9C3C3FFCCC6C6FFCFC9C9FFD8D4D4FF6C6C73FF9997
      97FF8C898AFF020202FFAAA8A8FF9B9999FF030330FF4141CEFFBEBDBDFFA1A0
      A0FF030332FF0808ECFFE3E2E2FFDCDCDCFF757474FF05057CFF0707CDFF7878
      CCFFDAD9D9FFDBDBDAFF403FE0FF05058AFF747373FFC1C0BFFF7270D9FF0303
      2AFF9E9C9CFFB6B4B4FFDAD7D7FFD8D4D4FFD6D2D2FFC9C7C7FFB2AFAFFF7476
      76DF00000000000000000000000000000000686B7F896969EBFF2020DEFF0D0D
      D9FF0F0FD9FF0A09CAFFB3B1E4FFFFFFFFFF5854C3FF0303CBFF0707C9FF221E
      B8FF9693D4FFEFEEF6FFFFFFFFFFF4F3F8FFB0AEDDFF3E3CB6FF0505B0FF0606
      BAFF0707B9FF1B19AFFFE1E0EFFFFFFFFFFF5E5CB9FF0202A2FF0606ACFF0707
      AAFF0607A7FF0202A1FF100F99FFDBD9EBFFFFFFFFFF635FB2FF020294FF0404
      9AFF02028CFF6966B3FFFFFFFFFFAEACD4FF110F85FF8D8BC4FFD5D3E7FF8C8A
      C3FF100F8DFF030391FF080868FF515474BC0000000000000000080808083A3D
      3D479DBDBCDEBEFFFFFFBEFFFFFFC5EBF1FFCBDDE2FFD1D5D7FFD5D6D7FFDCDB
      DBFFE4E4E3FFECECECFFF4F4F4FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFE9E9E9FFDDDDDEFFCDCECEFF8198
      ABFF97CEECFF98E7FAFF7ADEF8FF7CDEF8FF7CDEF8FF7BDEF8FF8FE5FAFF9FD4
      EFFF548EBCFF647783FF73818AFF78848EFF7B8691FF7E8995FF7F8B96FF7D8B
      93FFBBBFB8F85457576F0D0D0D0E020202010000000000000000000000000000
      00000000000039403C460DCC16FF0DCB16FF0DCA16FF0DCA16FF269D2CED5060
      54B9585C5C914F52536D3E41414E2E3030372526272B202122251D1F1F221D1F
      1F221D1F1F221D1F1F221D1F1F221C1D1D201314151607070707020202010000
      0000000000000000000000000000000000000000000000000000000000004D5C
      51680BAB12FF0BAA12FF0BA912FF0BA712FF3B703FD9565959822729292E0304
      0403000000000000000000000000000000000000000000000000000000004E51
      5160878585FFC9C3C3FFCCC7C7FFCFCACAFFD2CDCDFF8A8A94FF656673FF9897
      97FF969494FF9C9A9AFFAAA8A8FFB5B3B3FF1F1E1EFF8281AFFFB7B7B7FFC2C1
      C1FF1F1F1FFF30307DFFDEDDDDFFD7D7D7FFD6D5D5FF12123DFF222277FFD8D7
      E5FFDEDEDEFFDDDCDCFF4C4BA5FF030321FFBDBCBCFFBDBCBCFFBAB9B9FF4A49
      49FFC0BEBDFFAFAEADFFC5C2C2FFDCD8D8FFD9D5D5FFD0CCCCFFB8B6B6FF7E7E
      7EFF4E5151600000000000000000000000006B6F7F897B7BEBFF2323E0FF0D0D
      DCFF1010DEFF0B0ACEFFB3B1E4FFFFFFFFFF5855C6FF0503CEFF0F0FD5FF0909
      CFFF0605C4FF2321C2FF5552C7FF9996D5FFF1EFF4FFFFFEFBFFB0AEDDFF1E1C
      B3FF0202BAFF3231BAFFFCFCFCFFE6E5F0FF221FA9FF0304B2FF0A0AB1FF0909
      AFFF0909ACFF0707ABFF02029DFF9A96CDFFFFFFFFFF9491CAFF020298FF0404
      9FFF02029AFF02028BFF5E5BB1FFFFFFFFFF9F9DCCFF050484FF0C0B90FF0202
      8CFF020290FF040492FF080867FF515474BC00000000020202010D0E0E0F5F64
      6383BFF5F5F8B5FFFFFFBDFFFFFFC3FFFFFFC9F1FFFFCCE3F0FFCFDAE0FFD3D6
      D8FFD8D8DAFFDFDFDEFFE8E8E8FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3F3F1FEDDDDDCEFDDDDDCEFDDDDDCEFD0D1D1FF818B
      94FD86C3E8FFA7EAFAFF74DBF7FF76DCF7FF76DCF7FF75DCF7FF7BDDF7FFB0EB
      FAFF81B8DDFF818991FFB0B0B0FFBFBFBFFFC0C2C0FFBCBEBBFFBABDB8FFC2BB
      C6FFEDCEECFF7F7F83AE1C1E1E21030404030000000000000000000000000000
      000000000000000000004D5E52680DCD16FF0DCC16FF0DCB16FF0DCB16FF0DCA
      16FF318D37E348724EC8585B5C9E585C5C91565A5A855457577A535656765356
      567653565676535656765356567651545470444747572426262A080808080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000556A597B0BAB12FF0BAA12FF0BA812FF119F18FB585B5C97363939420809
      0909000000000000000000000000000000000000000000000000000000007275
      76AFBCB7B7FFCCC7C7FFCFCACAFFD2CDCDFFCBC8C8FF5C5D6EFF606396FFE1E1
      E1FFC7C6C6FFA1A0A0FF909090FFAAA8A8FFB6B5B5FFAFAEAEFFAFAFAFFFB8B7
      B7FFCBCACAFFD1CFD0FFCACACAFFCECDCDFFD6D5D5FFE2E1E1FFE1E0E0FFD9D8
      D8FFD6D6D6FFD3D3D3FFD6D5D5FFD9D7D8FFCBCACAFFBAB9B9FFBCBCBBFFC5C3
      C3FFABAAA9FFACABAAFF9D9C9CFFBEBCBCFFDDD9D9FFD8D4D4FFBAB8B8FFA09E
      9EFF727576AF0000000000000000000000006D717F898B8BEBFF2727E0FF0B0B
      DDFF0808DCFF0705D0FFB3B1E6FFFFFFFFFF5955C8FF0505D2FF0D0DD7FF0A09
      D5FF0C0CD5FF0A0BD3FF0202CBFF0202BDFF2623B9FFB0AEE0FFFFFFFFFFACAA
      DBFF0A0AB9FF2A28BDFFF5F5F9FFEEEDF5FF3330B2FF0303B8FF0B0BB8FF0A0A
      B5FF0A0AB2FF0707B1FF0503A3FFAFACD7FFFFFFFFFF8582C5FF02029DFF0706
      9FFF3C3BAAFF504FB1FF1A1894FF7472B9FFFFFFFFFF9897CCFF02028BFF0202
      94FF050595FF040493FF080870FF515477BC00000000030404031D1F1F22818C
      8DB9C1FFFFFFB8FFFFFFC0FFFFFFC6FFFFFFCCFEFFFFD1F3FFFFD2E6FFFFD3DC
      EFFFD4D6E0FFD5D6DAFFDCDCDCFFE5E4E4FFF0F1F0FFFEFEFEFFFFFFFFFFFFFF
      FFFFE0E1E1E5A3A6A6B2848788957A7D7D8E7679788B777A798C7D807F92888D
      90C07EB3D8FBB5EAF9FF6DD8F6FF6FD9F6FF70D9F6FF70D9F6FF6ED9F6FF80DE
      F8FFC3F2FDFF679BC2FF8F9493FFB4B8B3FFBEBEC1FFCCBDD4FFDABEEFFFDABC
      F0FFDCC0DEFFA8A4A8E0383B3B45070707070000000000000000000000000000
      00000000000000000000000000004D5E52680DCE16FF0DCD16FF0DCD16FF0DCB
      16FF0DCB16FF0DCA16FF0DC815FF12BD1AFB269C2CED289D2EEB2A9C30EA2A9B
      30EA299B30EA299A30EA299A30EA3A823FDA585F5C9E44474758131415160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101111120BAC13FF0BAB12FF0BA912FF0BA812FF526A56B63B3E3E490C0C
      0D0D0000000000000000000000000000000000000000000000000E0F0F107675
      75FFCCC6C6FFCFCACAFFD2CDCDFFD5D0D0FF85858DFF293187FF6E6F95FFA9A8
      A7FFD8D7D7FFF6F6F6FFF0F0F0FFD4D4D4FFCDCDCDFFBBBBBBFFBEBEBEFFB5B5
      B5FFB4B4B4FFB9B9B9FFBEBDBEFFC2C2C2FFC6C6C6FFC9C8C9FFCBCACAFFCBCB
      CBFFCBCBCBFFC9C9C9FFC7C7C7FFC4C4C4FFC2C1C1FFC0C0BFFFB8B7B7FFB8B7
      B7FFB8B7B7FFB9B8B7FFAFADADFF7D7C7FFFE0DDDDFFDEDADAFFC0BEBEFFA9A7
      A7FF6E6D6DFF0E0F0F10000000000000000070747F899C9CEBFF2929E0FF0E0D
      D3FF3B38CCFF1A16BCFFAEACE1FFFFFFFFFF5955C9FF0504D4FF2221CEFF2A26
      C3FF1310C8FF0404D2FF0D0DD7FF0C0CD7FF0202CCFF3D39BDFFFFFFFDFFF1EF
      F6FF1F1EC2FF0907BDFFBBB9E0FFFFFFFFFF918FD2FF0202AFFF0303BCFF0808
      BCFF0606B8FF0202ACFF3634AFFFF7F7FAFFFCFCFCFF3D39ACFF02029DFF6865
      BCFFF5F5F8FFE3E2EFFFD4D3E9FF141190FF7B79BEFFFFFFFFFF9492C8FF0302
      8FFF020297FF050598FF080883FF51547FBC0000000006060606393C3C469FB4
      B3DCB8FFFFFFBBFFFFFFC3FFFFFFC9FFFFFFCFFDFFFFD6F8FFFFDBEFFFFFDCE5
      FFFFDCDCFFFFDAD5EEFFD8D4E0FFDAD8DDFFE2E2E2FFEFEFEEFFFFFFFFFFC0C2
      C0D47A7D7C91737776887D807F917E8180947F8281957F8282957E8180927C80
      809F769EBBE4C1E9F7FF6AD8F5FF69D7F5FF6BD8F5FF6BD8F5FF6AD8F5FF67D7
      F5FF8EE3F8FFB3DDF1FF6D8BACFFB2A2C0FFD9BAE6FFD3B9DFFFBCB1C4FFACAA
      ACFFA2A7A2FFADB0ACF6575A5B740A0B0B0B0000000000000000000000000000
      000000000000000000000000000003030302363B394249A74FCC0DCF16FF0DCD
      16FF0DCC16FF0DCB16FF0DCA16FF0DC916FF0DC815FF0DC715FF0DC615FF0DC5
      15FF0DC415FF0CC315FF0CC115FF0CC015FF3A8B3FDB494D4D61161717190000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C9653C50BAC12FF0BAB12FF0BA912FF526A56B63B3E3E490C0C
      0D0D000000000000000000000000000000000000000000000000424545509794
      94FFCFC9C9FFD2CDCDFFD5D0D0FFDAD7D7FF61626CFF171DB5FF7C7C89FFAAA9
      A8FF9B9A9AFF908F8FFFC4C3C3FFF4F3F3FFF4F3F3FFF6F5F5FFECECECFFF6F6
      F6FFFCFCFCFFFDFDFDFFFEFEFEFFF6F6F6FFF1F1F1FFEFEFEFFFEFEFEFFFECEC
      ECFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFDBDADAFFDBDADAFFA2A1D4FF0404
      59FF787777FFBFBEBDFFB4B2B2FF626262FFD1CECEFFE1DEDEFFCBC9C9FFABA9
      A9FF818181FF42454550000000000000000072767F89AAAAEBFF2727E0FF2F2D
      CCFFDBD9EBFFDBDAEEFFE1E0F2FFFFFFFEFF5955CAFF0202CFFF6765D4FFF7F5
      F6FFC0BEE7FF514EC9FF1512C1FF1512C0FF3330C0FFB4B3E2FFFFFFFFFFAFAD
      DEFF0D0CC4FF0707CBFF312EBCFFE5E4F2FFFAFAFCFF9491D4FF2F2DB5FF0E0C
      AEFF1A17ADFF6865C2FFD5D4EBFFFFFFFFFF9E9CD4FF0403A9FF0A09A6FFCDCB
      E5FF8683C4FF0F0D8CFFD4D2E6FF8180C5FF020290FF7977C0FFFFFFFFFF8987
      C5FF030290FF04049BFF08089AFF51548CBC00000000080909095457576EAEB9
      B9F7A5C0C4FFAFCCD4FFB8DAE7FFC2E2F6FFCBE8FFFFD3EBFFFFDDEBFFFFE3E6
      FFFFE7DFFFFFE9D8FFFFE5D2FFFFDFCFEFFFDDD4E4FFE5E2E7FFB6B7B6D57477
      768A7B7D7D8F7F8282957A7C7B917679798F777A79907679798F797C7B917D81
      819B7394ACD9C1E5F5FF74DAF5FF62D4F4FF65D5F4FF65D5F4FF65D5F4FF64D5
      F4FF63D5F4FFABE9F9FF99C2E3FF798097FF9E9C9FFFA0A39FFFA0A29EFFA0A1
      9FFF9C9C9EFFAEADADFE6F72729E101111120000000000000000000000000000
      00000000000000000000040505041415151740444351538558B916C51DF90DCF
      16FF0DCE16FF0DCD16FF0DCC16FF0DCB16FF0DCA16FF0DC916FF0DC815FF0DC6
      15FF0DC515FF0DC415FF0DC315FF0CC215FF44974AD03033333A0C0C0D0D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030404034A9651C80BAD13FF0BAC12FF0BAA12FF546B58B3363939420809
      0909000000000000000000000000000000000000000000000000686C6C8FB3AF
      AFFFD1CCCCFFD4D0D0FFD7D3D3FFB8B6B6FF3F4579FF2224C5FF818182FFA6A5
      A5FF9B9A9AFF020202FFC3C2C2FFA4A4A4FF030333FF4141CEFFD6D5D5FFC0C0
      C0FF030334FF0707C8FFDCDCDCFFDCDCDCFF767676FF050585FF0606B2FF7D7D
      F6FFD0D0D0FFDFDEDEFF2525B9FF050587FF404040FFD1D0D0FFACABE1FF0505
      71FF5C5B5BFFC5C4C3FFC9C8C7FF626262FFA2A0A0FFE4E1E1FFD7D4D4FFACAA
      AAFF908F8FFF686C6C8F000000000000000074777F89B4B4EBFF2E2FE0FF0404
      D0FF4E4AC8FFEDECF4FFFFFFFFFFFFFFFFFF5D59C9FF0303D6FF1B19CCFFB4B2
      E1FFFFFFFFFFFFFFFEFFD9D8ECFFD8D7EBFFFDFCF9FFFFFFFFFFDFDEEFFF2D29
      BFFF0808CFFF0F10D3FF0202C6FF5C59C5FFECEBF4FFFFFFFFFFF6F5F6FFD4D2
      E8FFE4E3EFFFFFFFFFFFFFFFFFFFA19ED4FF1513ACFF0506B9FF0403AAFF9F9C
      D3FFD7D5E8FF8381C0FFEDECF2FF5552B4FF0202A2FF05049AFFA4A2D2FFFFFF
      FFFF7F7EC2FF020297FF0707A4FF515492BC000000000A0B0B0B6669698CA3A4
      A4FF929496FF999C9EFF9EA7A9FFA5B1B8FFB1BAC7FFBDC5DBFFC9CCECFFD6D3
      FAFFE2D6FFFFECD4FFFFF1D2FFFFF1CFFFFFF0D5FFFFD4C9DAF17D808097797C
      7B8D7E8180947679798F777A7990797C7B907A7D7C917B7D7C91777A798F7779
      78916D7F8CCEB0D7F0FE90E3F7FF5AD2F2FF5ED3F3FF5ED3F3FF5ED3F3FF5ED3
      F3FF5CD3F3FF69D7F4FFB7E8F8FF7BA9CDFF70787BFF959595FF9A9A9AFF9696
      97FF949493FFA0A09FFF818383C11A1B1B1E0000000000000000000000000000
      0000000000000303030214151517515C557124BD2CEF0ED317FF0ED216FF0DD1
      16FF0DD016FF0DCF16FF0DCE16FF0DCD16FF0DCB16FF0DCB16FF0DC916FF0DC8
      15FF0DC715FF0DC615FF0DC415FF34B33BE33F45424E0D0E0E0F030303020000
      0000000000000000000000000000000000000000000000000000000000000202
      0201101111121DAB26F30BAF13FF0BAD13FF0BAB12FF586D5CA32729292E0304
      0403000000000000000000000000000000000000000000000000757777BFC9C5
      C5FFD4CFCFFFD7D3D3FFDAD6D6FF8B8A93FF242C8AFF4E5197FFABABAAFFA1A1
      A0FFB3B2B2FF020202FFC0C0C0FFA9A9A8FF030333FF4141CEFFD4D4D4FFB3B3
      B3FF030334FF0707C8FFDCDCDCFFE9E9E9FF767676FF0606A0FF0707D6FF7D7D
      F6FFD5D5D5FFDEDEDEFF4444E1FF0606A5FF414141FFCCCCCBFFA1A1DFFF0505
      70FF4E4E4EFFB8B7B6FFBFBEBDFF62636BFF7B7A80FFE7E4E4FFDFDCDCFFADAC
      ACFFA09E9EFF757777BF000000000000000074777F89B7B7EBFF2828DFFF0202
      DCFF0202D5FF1F1DCAFF7B79D5FF918ED9FF302ECCFF0202DAFF0303DBFF0605
      CDFF4B48CFFF8886D8FFB9B7E5FFB7B5E4FF9B99DBFF6966D1FF2523CBFF0302
      D3FF0A0AD8FF0B0BD5FF0B0BD5FF0202C8FF2A28C4FF6E6BCCFFA4A1DAFFC1BF
      E3FFB4B2DEFF8281CEFF4846C0FF0807B6FF0606BDFF0C0CBEFF0708B9FF201E
      B3FF8180CAFF9896D0FF5C59BCFF0807A8FF0809AEFF0405A9FF0B099EFF9A98
      CFFF8482C6FF04049DFF0808ADFF515495BC0202020111121213757878A4A09F
      9FFF8F8F8FFF919090FF919090FF919192FF949496FF999B9EFFA1A1A8FFADA9
      B8FFBBB2C9FFCAB9DBFFDAC0EDFFE8CAFCFFF7D7FFFFA9A4ACC7737675878083
      82957679788E7679798F797C7B9060646474585B5B69595C5C6A7779788E797B
      7A91737E87C095C2E0F9ADEAF9FF4ECEF2FF53CFF2FF53CFF2FF53CFF2FF53CF
      F2FF53CFF2FF50CFF2FF79DCF5FFBAE4F5FF6792B6FF7F8081FF8F8F8FFF9393
      93FF919191FF9A9A9AFF909190D3282A2A2F0000000000000000000000000000
      0000000000000C0C0D0D576B5B801ACB22F70ED617FF0ED517FF0ED417FF0ED3
      17FF2CBC33E9597B5F90444C4756191B1B1D0405050402020201000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303020E0F
      0F10515D55700BB113FF0BB013FF0BAE13FF14A41AF9474A4A5C131415160000
      0000000000000000000000000000000000000000000000000000757777DFD4CF
      CFFFD6D2D2FFD9D5D5FFDDD9D9FF707079FF121DA2FF65657EFFF9F9F9FFA9A9
      A8FFB3B2B2FFBDBCBCFFBBBABAFFADADADFF030333FF4141CEFFD2D2D2FFB2B2
      B2FF030334FF0808EFFFDCDCDCFFF2F2F2FF767676FF0707B9FF0808F6FF7D7D
      F6FFE1E1E1FFE0E0E0FF4444F9FF0707BCFF404040FFD3D3D3FFD3D3D2FF8685
      85FFB6B5B5FFA1A0A0FF9D9C9BFF6D6D75FF6B6B72FFEAE7E7FFE6E4E4FFAFAD
      ADFF9D9B9BFF757676DF0000000000000000767A838DB6B6EBFF6161E4FF4949
      E1FF4B4BE3FF4545E2FF403FD5FF4040D1FF4646DDFF4A4AE3FF4747E2FF4243
      E3FF3737DDFF3434D3FF3B39CDFF3836CDFF2F2FD0FF2A2AD9FF2F2FE2FF3333
      E2FF3030E1FF2D2DE0FF2A2ADFFF2727DFFF1E1EDCFF1413D1FF1614C9FF1A17
      C6FF1413C5FF0A09C8FF0B0BCFFF1313D3FF1313D0FF1111CEFF1010CCFF0909
      C8FF0202BCFF0202B8FF0202BBFF0A0AC1FF0A0ABEFF0A0ABBFF0606B8FF0503
      ADFF0302AAFF0808B0FF0909B7FF4F519CC0020202011718181A7C7F7EB49E9E
      9CFF919192FF929292FF929292FF919191FF919190FF909090FF909190FF9292
      92FF979397FF9C989FFFA79EAAFFB3AABAFFC3B8CBFC8A8B8CA7797C7B8C7B7E
      7D917679798F7C7F7E93626565760D0D0D0E0000000003040403373A3A427D80
      7F92798084B37CACD2F3DBF7FCFFA7E8F8FFAAE9F8FFAAE9F8FFAAE9F8FFAAE9
      F8FFAAE9F8FFA9E9F8FFAEEBF9FFDEF8FDFFB0D6EEFF617686FF949494FF9A9A
      9AFF9A9A9AFFA09FA0FF9E9F9DDD3437373F0000000000000000000000000000
      000003030302404743501DCE25F50ED917FF0ED817FF0ED717FF1ACA22F75976
      5E8F141515170405050400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303020A0B0B0B1C1E1E214246
      455424A52BEE0CB313FF0BB113FF0BB013FF527D57B9292B2B31070707070000
      00000000000000000000000000000000000000000000000000007D7B7BFFD8D4
      D4FFD8D4D4FFDCD8D8FFDFDCDCFF67687AFF141BAFFF6D6E82FFCECECDFFF8F8
      F8FFC6C6C5FFA4A4A3FFB1B1B0FFBCBCBBFF504F4FFF504F4FFFCFCFCFFFB0B0
      B0FF030334FF0808FCFFDCDCDCFFEDEDEDFF767676FF0707BDFF0808FCFF7D7D
      F6FFE9E9E9FFE3E3E3FF6D6CD6FF050570FF212140FFD2D2D2FFC7C7C7FFC4C4
      C3FFB8B8B8FFABAAAAFFA09F9EFF7E7E87FF626262FFECEBEBFFE9E7E7FFB3B2
      B2FF9E9D9DFF7A7878FF00000000000000005B5E626AB7B7EAFEBBBBEBFFBDBD
      ECFFBDBDEBFFBDBDECFFBCBCEDFFBBBBEDFFBBBBECFFBCBCECFFB8B8ECFFB0B0
      ECFFADADECFFA8A8EDFFA0A0EEFF9A9AEEFF9595EDFF8F8FEDFF8888ECFF8181
      ECFF7878ECFF7272ECFF6E6EECFE6363ECFF5C5BEDFF5555EDFE4B4BEEFF4040
      EDFF3D3DEDFF3738ECFF3131EAFF2B2BE8FF2626E7FF2020E5FF1C1CE3FF1717
      E1FF1111E0FF1212DFFF0F0FDBFF0E0ED8FF0C0CD6FF0B0BD3FF0A0AD1FF0808
      CEFF0808CAFF0909C7FF0909C2FF565A92AC02020201191B1B1D7D807FBA9B9B
      9BFF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9191
      91FF919191FF909090FF919191FF939293FF9A9999F17F82819A7C7F7F8F787A
      7A8E7C7E7D947275758B21232327030303020000000000000000080808086165
      6578828687A8689CC5EB6FACE0FF6FABE0FF6FABE0FF6FABE0FF6FABE0FF6FAB
      E0FF6FABE0FF6FABE0FF6EABE0FF6EABE0FF6BABE0FF5881A2FFA0A0A0FFA3A3
      A3FFA4A4A4FFA9A9A9FFA3A2A2E33B3D3D480000000000000000000000000000
      0000090A0A0A49AD50CC0EDC18FF0EDB17FF0EDA17FF23C029F14A514E621011
      1112020202010000000000000000000000000000000000000000000000000000
      0000000000000202020108080808101111121314151613141516131415161314
      15161314151613141516161717191C1E1E212729292E393C3C4658665C892A9D
      31EA0CB513FF0CB413FF0CB213FF22A229EF404443500E0F0F10020202010000
      00000000000000000000000000000000000000000000000000007F7E7EFFDCD9
      D9FFDAD6D6FFDEDBDBFFE2DFDFFF65667DFF141BAFFF737374FFBEBDBCFFCECD
      CCFFF8F8F8FFF8F8F8FFCDCDCCFFB5B4B4FFBFBEBEFFC3C2C2FFC8C8C8FFDFDE
      DEFF4D4D4DFF4D4D4DFFD7D6E6FFDFDFDFFFCDCCCCFF121240FF050580FFE3EA
      EAFFE3EAEAFFDBE8E8FFD2D6D6FFB0AFAFFFC4C4C4FFCECECEFFCACACAFFC5C4
      C4FFC0C4C4FFD7DCDCFF8B91C6FF848397FF646476FFEFEDEDFFECEAEAFFBEBC
      BCFF9F9E9EFF7E7D7DFF000000000000000006060606383B3C4146494B514649
      4B5146494B5146494B5146494B5145484A50474A4C525D5EBDD94F4FDCFF9493
      EEFF5451E4FF3D3AE0FF3E3AE1FF3C39E1FF3B37E1FF3734E0FF3936E0FF6562
      E7FF5F5FE3FF2525D5FF6164818E4144484E3F42464C5D60A7BB1B1BD7FF6160
      E7FF4341E4FF1E1CDEFF1A19DEFF1917DDFF1816DDFF1614DCFF1311DBFF1E1C
      DDFF5C5BE7FF2929DAFF2426C6EB4649535A4043495040434A5140434A514043
      4A5140434A5140434A51404349501A1B1C1E02020201191B1B1D808282BC9B9B
      9BFF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
      92FF929292FF929292FF919291FF909191FF949493EE7D807F977C7E7E8E787A
      7A8E7E8080956C6F6F86202122250606060603030302040505040D0D0D0E5659
      5A6D838584997577768B7C7F7F8F777A798B9B9D9DD1B0B1B1FFB0B1B0FFB0B0
      B0FFB0B0AFFFAFAFAFFFADADAFFFADADADFFADADADFFADADADFFADADADFFACAC
      ACFFADADADFFB2B2B2FFA5A7A7E43B3E3F490000000000000000000000000000
      0000383E3B450EDF18FF0EDE18FF0EDD18FF0EDC18FF58685C8B1D1F1F220303
      0302000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D0E2B2E2E3442444553474A4A5C474A4A5C474A4A5C474A
      4A5C474A4A5C474A4A5C4A4D4E625155557359695C9D3F8A44D50CBA14FF0CB8
      14FF0CB714FF0CB513FF18AC1EF74E58536B1213131403030302000000000000
      0000000000000000000000000000000000000000000000000000807F7FFFDEDB
      DBFFDCD9D9FFE1DDDDFFE5E3E3FF646578FF363A9BFF939292FFCAC9C8FFCECE
      CDFFD2D1D0FFD7D6D5FFF8F8F8FFF8F8F8FFF8F8F8FFDCDCDCFFCFCFCEFFC5C5
      C5FFCFCECEFFD3D2D2FFD0D0D0FFD2D2D2FFD9D9D9FFE6E5E5FFE1F6F7FFCFF7
      F9FFA6DAF0FF7CADDCFF9EEAF5FFC0DADBFFCCD1D1FFC2D6D7FFB7E2E4FFB9EE
      F2FF8DAFDDFF8D9DCAFF5C61B3FF1C23A9FF646587FFF1F0F0FFEEEDEDFFBFBE
      BEFFA09F9FFF6F6F6FFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000585C82920202CFFF7775
      EAFF423DE5FF0803DCFF0702DBFF0803DBFF0903DBFF0803DBFF0904DAFF3632
      E1FF6E6DE7FF0A0ACFFF555896AC00000000050505053739B6DA2525D5FF7D7B
      EAFF2724DCFF0B08D7FF0C08D7FF0C09D7FF0C09D7FF0D0AD7FF0C09D7FF3734
      DEFF8785EBFF1818D2FF53559CB4000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161717197D7F7FB89C9B
      9BFF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
      92FF929292FF929292FF929292FF909190FF8E928DF47E817F9A7A7D7C8C787A
      7A8D7A7C7B916C6E6F87383A3B44111212130D0D0D0E0F101011212323276C6E
      6F867D807F947577778A7C7E7E8E797C7C8FACA8A0DDC5BEB3FFC0BEB9FFBEBD
      BBFFBDBCBCFFBCBBBDFFBBBABAFFBABABBFFB9B9B9FFB9B9B9FFB8B8B8FFB8B8
      B8FFB6B6B6FFBCBABAFFACA9A9E1363939420000000000000000000000000000
      000059795E880EE218FF0EE018FF0EDF18FF3B9943D942454554101111120000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030302383D3B4555845AB446824CCC438148D0438048D0437F48D0437F
      48D0437E48D0437E48D02C9B32E81CAC24F40CBE14FF0CBC14FF0CBB14FF0CB9
      14FF0CB814FF19AE21F64C545065111212130303030200000000000000000000
      00000000000000000000000000000000000000000000000000007C7A7AFFE3E1
      E1FFDEDBDBFFE3E0E0FFE9E6E6FF696A7EFF5A5C88FFA9A8A8FFD2D1D1FFA1A1
      A0FFA4A4A4FFDEDEDDFFDFDFDEFFDEDEDDFFDDDCDCFFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFCBD5D5FF85AEDCFF4C77
      CFFF2459CDFF2E76E6FF2C60BCFF6FE3F2FF5FBFE4FF4D92D1FF3E69BCFF2D50
      B3FF2F6FCEFF215EDEFF1C3CDDFF1620AEFF67677BFFF4F3F3FFF1EFEFFFBDBC
      BCFFA1A0A0FF7A7878FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F3234390708CDFC3A39
      DAFF706DEBFF1F1BDFFF0F0ADCFF100BDCFF100BDCFF100BDCFF0F0ADCFF1B17
      DDFF7D7BECFF4645DDFF0B0BCAFA1719191B35373B400202CFFF605FE3FF6967
      E8FF120FD9FF0D0AD9FF0E0BD9FF0E0BD8FF0E0BD8FF0D0AD8FF1411D9FF5E5C
      E5FF5757E0FF0202CEFF4D505E67000000000000000000000000000000000000
      00000000000000000000000000000000000000000000101111127B7E7DAD9E9E
      9CFF919191FF929292FF929292FF929292FF929292FF929292FF929292FF9292
      92FF90918FFF8D8F8BFF8B8F8BFF939293FFAB9FB3FD8C8C8FAD787B7A8B7B7E
      7E8F7577768B7E8080956C6F6F873D40404B2729292E3335353D5E6161777E81
      81967578778B7679788A7C7E7F8E7F817F99C1A26FF0CAB176FFBEB88FFFBBBC
      A3FFBBBEB0FFBCC0B8FFC0C0BDFFC1C0C0FFC1C0C1FFC2C0C1FFC1C1C1FFC2C0
      C1FFC0BEBEFFCEC4C6FFAEA7AAD82B2D2D330000000000000000000000000000
      00004FAE55C40FE318FF0FE218FF0EE118FF4F7853BE3E41414E0D0E0E0F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000405050421C528F20DCE16FF0DCD16FF0DCB16FF0DCA16FF0DC815FF0DC7
      15FF0DC515FF0DC415FF0CC215FF0CC115FF0CBF15FF0CBE14FF0CBC14FF0CBA
      14FF2F9734E6555D587B23252529070707070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000757777DFE7E4
      E4FFE0DDDDFFE4E1E1FFEDEBEBFF706F79FF5B5E80FFB9B8B8FFD8D7D7FF8A8A
      8AFF9C9C9CFFE5E5E5FFE7E7E7FFBBBBBBFFE6E5E5FFE3E2E2FFDEDEDEFFDBDA
      D9FFD6D5D5FFCFCECDFFC8C7C6FFBEBEBCFFB2B2B0FFB9DCDEFF6487CCFF54A3
      F8FF6DC7FBFF81D6FAFF6FC4F3FF3F8ADDFF2E78D8FF307EE0FF3A96EDFF46AD
      F3FF43BCF7FF1DA3F4FF0768F4FF0E1DACFF6F6E77FFF6F6F6FFF3F2F2FFB4B4
      B4FFA2A1A1FF757676DF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000405050451549EB61111
      D2FF7D7CEBFF423EE4FF1611DEFF110CDCFF100BDCFF100BDCFF0F0ADCFF110D
      DCFF5C59E8FF6866E4FF0303CFFF3D40454C525569740707D0FF6E6DE7FF4441
      E2FF0E0BD9FF0D0BD9FF0E0BD9FF0E0BD9FF0E0BD8FF0C09D8FF2522DCFF6E6C
      E7FF2020D5FF3638B9DB14151517000000000000000000000000000000000000
      00000000000000000000000000000000000000000000080909096F727298A1A2
      A1FF919191FF929292FF929292FF929292FF939293FF929291FF8D908BFF8A8F
      89FF929291FFA39BA7FFBAA7C6FFCEAFDEFFC9ADD7FF9A989DD1747776897D81
      8090747676887578778B7E807F947C7E7D947175758D777A7A92808282967679
      788C727574867B7D7D8D76797A8A938F85B9CB9F36FDC2A938FFB4B24FFFA8BA
      65FFA2C07CFF9FC290FFA3C3A0FFA9C2ABFFAFC1B4FFB5C0BAFFBBBEBDFFBEBE
      BEFFC0BDBEFFDFCACFFFA0989CCD1B1C1C1F0000000000000000000000000000
      00004FAF56C30FE619FF0FE518FF0FE318FF507154BC46494A5B121414150000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C302F350DD116FF0DCF16FF0DCE16FF0DCD16FF0DCB16FF0DCA16FF0DC8
      15FF0DC715FF0DC515FF0DC415FF0CC215FF0CC115FF0CBF14FF0CBD14FF18A8
      20F64C6350C1585C5C93494C4C602526272B090A0A0A02020201000000000000
      0000000000000000000000000000000000000000000000000000757777BFE0DE
      DEFFE2DFDFFFE5E3E3FFEFEDEDFF838286FF53567CFF9C9B9AFFD4D3D3FFE1E1
      E0FFE6E6E5FFEAEAE9FFB1B1B1FF040448FFB2B2E5FFEBEBEBFFEAEAE9FFDADA
      D9FFE1E0E0FFDAD9D8FFD2D1D0FFC8C7C7FFC3DCDCFFA4DDEFFF4671D5FF68C7
      FBFFB4F1FDFFDCF9FEFFD9F8FEFFB6EDFDFF91DFFAFF85D8FAFF93E0FAFFA8EC
      FBFF88E5FAFF30B2F3FF097CEEFF051FC1FF79787AFFF8F8F8FFF1F0F0FFB5B5
      B5FF9E9D9DFF757777BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000474A555D0202
      CFFF7574E7FF7370ECFF2520E0FF140FDDFF0F0ADCFF100BDCFF100BDCFF0E09
      DCFF3530E2FF706DE8FF0C0CD2FF53579CB24042B1D02120D6FF6F6CE8FF241F
      DDFF0D09DAFF0E0BD9FF0E0BD9FF0E0BD9FF0D0AD9FF0D0AD8FF4846E1FF6F6D
      E6FF0505D0FF54576D7900000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505055E62627BA3A3
      A2FF909091FF929292FF929292FF919190FF8A8F89FF8E908BFF9E98A1FFB6A3
      C1FFCBADD8FFCCAFDAFFB8A5C2FF9C97A0FF8E8F8DFF939493F8868787A87577
      77887C7F7F8F7376768773767588787A7A8E7B7D7C907A7D7C907578778A7275
      7586797B7B8B797C7B8B7D807F99A69E8DEAB1A16AFFACA954FFA4B448FF94C0
      47FF82CB54FF78D366FF71D879FF70DA8AFF73D89AFF7ED4A5FF89CFAFFF96CA
      B4FFA2C2B5FFCACCCAFF848485B20F1010110000000000000000000000000000
      000058A05FB00FE819FF0FE719FF0FE519FF437E48D0535757792526272B0405
      0504000000000000000000000000000000000000000000000000000000000000
      00000000000052A459BD0DD116FF0DCF16FF0DCE16FF0DCD16FF0DCB16FF0DCA
      16FF0DC815FF0DC615FF0DC515FF0DC315FF0CC215FF0CC015FF0CBF14FF0CBD
      14FF0CBB14FF367E3ADE575B5BA14F52536D2729292E08080808000000000000
      0000000000000000000000000000000000000000000000000000686C6C8FC8C7
      C7FFE5E2E2FFE7E4E4FFEFEDEDFFA7A6A6FF3E437DFF4F508AFF848383FFE1E0
      E0FFE7E6E6FFEBEBEAFFC1C1C1FF41417FFFE5E5F1FFF1F1F1FFEEEEEEFF3636
      51FF4D4DC4FFE0DFDFFFD8D8D7FFCFCFCEFFACD8EEFF5D75C2FF54A5FBFF84DD
      FCFFDFFAFFFFF9FEFFFFF8FEFFFFEEFCFFFFE3FAFEFFE0F9FEFFE5FAFEFFE3FB
      FFFFA0E9FBFF31ADF2FF0876ECFF0D40DBFF908F8FFFFAFAFAFFE9E9E9FFB6B6
      B6FF939393FF686C6C8F00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1E1F211617
      C8F34040DDFF9694F1FF3F3BE4FF211DE0FF110CDDFF0F0ADCFF100BDCFF0E09
      DCFF1D18DEFF6A67E9FF3939DBFF0708CEFC0404CFFE6362E4FF5956E6FF140F
      DBFF0E0ADAFF0F0BDAFF0F0BDAFF0E0BD9FF0D0AD9FF1714DBFF7574E9FF4F4F
      DFFF0404CEFE2E30323700000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030245484855A3A3
      A1EE8D8E8DFF8E908BFF8D8F8AFF979398FFAFA0B6FFC6ACD3FFCBADDAFFBCA8
      C6FFA49BAAFF929192FF8A8F88FF8F918EFF989898FFA5A5A5FFA9A9A7E88082
      819E757877897C7F7E8E787A7A8A747776877476768774777687767978887B7E
      7D8D797B7B8B787A7A919F9F9CD7A9A9A4FFA4A498FFA1A587FF9AAD77FF8DBB
      66FF78CC5DFF62DC5FFF4BE969FF3AF379FF2FF887FF2BFA96FF30F9A3FF3FF3
      AAFF51EDACFF8EEAC0FC67696987060606060000000000000000000000000000
      000056715A7B0FEA19FF0FE919FF0FE819FF27B02DED585B5B9D4649495A181A
      1A1C040505040000000000000000000000000000000000000000000000000000
      000000000000000000002C302F353B423E493D44414C3F46424E3F46424E3F46
      424E3F46424E48544C5E57715C8057965CB123BB2AF00CC115FF0CC015FF0CBE
      14FF0CBC14FF0CBB14FF25942CED565F59A94C5050671F212124040505040000
      000000000000000000000000000000000000000000000000000042454550ABAA
      AAFFEAE8E8FFE8E6E6FFEFEDEDFFDFDDDDFF636478FF292EA0FF717074FFC9C8
      C8FFE4E4E3FFE9E9E8FFECECECFFF1F1F1FFF3F3F2FFF2F2F1FFEFEFEFFF3A3A
      5DFF6868F2FFE3E2E2FFDCDCDBFFD3D8D9FF8FB0DCFF5E9DFCFF67C9FBFFBBF2
      FDFFF2FDFFFFFDFEFFFFFDFEFFFFFCFEFFFFFAFEFFFFF9FEFFFFF7FEFFFFE9FC
      FFFFA0EAFBFF33B2F2FF097BECFF0663F1FF8D93CCFFFBFBFBFFDFDEDEFFB7B6
      B6FF838383FF4245455000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000585B
      8FA20809D1FF8180EBFF6865EBFF3430E3FF1E19DFFF0F0ADDFF100BDDFF0F0A
      DCFF110CDCFF4E4AE5FF7775E8FF0505D0FF1616D4FF8684ECFF3631E0FF0E0A
      D9FF0F0BDAFF0F0BDAFF0F0BDAFF0E0BDAFF0E0BDAFF312FDFFF7776E9FF1616
      D4FF474AADC80809090900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020201232525299193
      93CE98969CFFAA9BB3FFBEA8CBFFCCAFDDFFC2A9CFFFA99CAFFF969397FF8D90
      8BFF8B8F8AFF909190FF969697FF9E9E9EFFA8A8A8FFB5B5B5FFC5C6C6FFBABC
      BCEB8B8D8CAC7579778D777A788B7A7D7C8D7B7D7D8D7A7D7C8C787B7A8B7778
      788C8082829EA6A7A7DABBBBBBFFB1B2B2FFAAAAA9FFA4A4A2FF9FA49AFF94AB
      8EFF83BA81FF6DCD7AFF4EE479FF2CF77FFF10FF87FF02FF93FF02FF9EFF02FF
      A3FF02FFA8FF53ECAFF144474754030303020000000000000000000000000000
      00001011111225DC2EF00FEB19FF0FEA19FF0FE819FF407D46D3585C5C914245
      46551E202023090A0A0A02020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000101111124E5F536A24B92CEF0CBF
      14FF0CBE14FF0CBC14FF0CBA14FF318436E3585C5C9A40444452111212130000
      00000000000000000000000000000000000000000000000000000E0F0F108989
      89FFEFEEEEFFEBE9E9FFEEECECFFF7F6F6FF717175FF0D199AFF3736B5FF6B6B
      73FFB0AFAFFFE4E4E3FFEBEBEAFFEFEFEFFFF1F0F0FFF0F0F0FFEEEEEEFFCBCB
      CAFFD3D2D2FFE3E3E3FFDDDCDCFFD8E3E3FF88A4D8FF46A5FCFF94EAFCFFE5FB
      FFFFFBFEFFFFFDFEFFFFFBFEFFFFF8FEFFFFF3FEFFFFEDFEFFFFE0FCFFFFBCF4
      FDFF79DFF9FF2AB7F3FF0986EEFF0673F0FF5D86F5FFFBFBFBFFD4D4D4FFB7B7
      B7FF6F6F6FFF0E0F0F1000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000282B
      2C300F0FCBF84E4DE0FF928FF1FF4945E6FF3430E3FF1510DEFF0F09DDFF100B
      DDFF0E09DCFF2A26E0FF8481EDFF1C1CD6FF3535DBFF716EEAFF1C19DEFF0D09
      DBFF0F0BDAFF0F0BDAFF0F0BDAFF0D09DAFF1511DBFF5957E5FF4D4CE0FF0202
      D0FF40434A510000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808087879
      7B9EDFBEF4FFC9A8E0FFB0A1B9FF989699FF8D8F8AFF8E908DFF90918FFF9192
      91FF949494FF9A9A9AFFA1A1A1FFACACACFFB6B6B6FFC3C3C3FFCFCFCFFFE9EB
      EBFFF9F9F9FABABBBBD6959796B4858786A38182829D8283839F8C8E8CADA3A4
      A4CCC3C3C3F1CDCDCDFFC2C2C2FFBABABAFFB3B3B3FFABABACFFA7A7A7FFA0A3
      A0FF98A59AFF89B194FF70C590FF49E08EFF1EFA91FF02FF99FF02FFA0FF02FF
      A2FF02FFABFF69B696CF20212225020202010000000000000000000000000000
      00000000000055715A7A0FED19FF0FEC19FF0FEA19FF16DA1EFA457649CE585C
      5C994E52526B363939422224242816171719101111120D0D0D0E0C0C0D0D0C0C
      0D0D0C0C0D0D0C0C0D0D0C0C0D0D090A0A0A0606060602020201000000000000
      00000000000000000000000000000000000000000000000000001011111247A8
      4DCF0CBF14FF0CBD14FF0CBB14FF0CB914FF407145D35458587C222424280202
      0201000000000000000000000000000000000000000000000000000000007578
      79AFEBEAEAFFF0EEEEFFF0EFEFFFF6F5F5FFB9B7B7FF515480FF171EB6FF2D2D
      CBFF606088FF7C7B7EFFDEDDDDFFEBEAEAFFECECECFFECECECFFEBEBEBFFE9E9
      E9FFE6E6E5FFE1E1E0FFDCDCDCFFE3EAEAFF788CD4FF379FFCFF96E9FCFFE7FC
      FFFFFAFEFFFFFAFEFFFFF3FEFFFFE4FDFFFFD6FCFFFFC9FBFEFFADF5FDFF6BDA
      F8FF2EB2F1FF1197EFFF0781EFFF0676F1FF1365F9FFF7F7F7FFCACACAFFAFAE
      AEFF727576AF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02014A4DA9C32525D8FFACABF3FF6A67EAFF4743E5FF2B27E1FF0E09DDFF100B
      DDFF0E09DDFF1914DDFF605DE8FF3C3BDDFF504FE2FF4A46E5FF120EDBFF0E0A
      DBFF0F0BDBFF0F0BDBFF0F0BDAFF0D09D9FF2623DDFF807EEBFF2A2AD9FF3A3C
      B7D7080909090000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003030302494C
      4C5AB7B0B9F18A8E8AFF8B8F89FF909190FF929292FF929292FF939393FF9898
      98FF9F9F9FFFA5A5A5FFAFAFAFFFB8B8B8FFC3C3C3FFCFCFCFFFDDDDDDFFFCFC
      FCFFFFFFFFFFFFFFFFFFFBFCFCFCF3F3F1FEDDDDDCF0DDDDDCF0E6E6E6FAE7E7
      E7FFDBDCDCFFD1D1D1FFC7C7C7FFC0C0C0FFBABABAFFB4B4B4FFADADADFFA8A9
      A8FFA3A4A4FF9EA2A0FF91A89CFF7BB99AFF58D29BFF2CF19FFF03FFA2FF02FF
      A2FF05FFB3FF67716D8B08080808000000000000000000000000000000000000
      0000000000000000000048C051CE0FEE19FF0FEC19FF0FEB19FF0FEA19FF339A
      39E3526355B6585C5C945457577A4A4D4E62424545543D40404C3B3E3E493B3E
      3E493B3E3E493B3E3E493B3E3E49393C3C462D2F2F361718181A050505050000
      0000000000000000000000000000000000000000000000000000000000001011
      111247A84DCF0CBE14FF0CBC14FF0CBA14FF18A420F6585C5C923033333A0606
      0606000000000000000000000000000000000000000000000000000000004E51
      5160AEAEAEFFF4F3F3FFF3F2F2FFF5F4F4FFFBFBFBFF737274FF172292FF2426
      CBFF2A2AD6FF4D4CBDFF91919DFFAAA9A9FFD7D7D7FFE7E6E6FFE6E6E5FFE4E3
      E3FFE1E1E0FFDEDEDDFFDAD9D8FFE8EAEBFF4D5DCEFF1F8BFAFF5CD4FAFFB5F1
      FDFFE3FBFFFFECFDFFFFDAFCFFFFAFF4FDFF8DEBFBFF82EDFBFF76EEFBFF3ACA
      F5FF0F92EDFF0777EBFF0672EEFF0565F4FF056CF9FFCCCFECFFCBCBCBFF8383
      83FF4E5151600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000585B7F8E0606D2FF9694EEFF8F8CF0FF5654E8FF4743E6FF1E19E0FF0D08
      DDFF0F0ADDFF120DDDFF3733E2FF514FE3FF5551E4FF2924E0FF100BDBFF0F0B
      DBFF0F0BDBFF0F0BDBFF0E0ADBFF0F0BD9FF4440E2FF8281EAFF0C0CD3FF585B
      91A3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001718
      181A8A8D8AC49A9A9BFF919191FF929292FF929292FF979797FF9C9C9CFFA3A3
      A3FFABABABFFB2B2B2FFBABABAFFC3C3C3FFCFCFCFFFDADADAFFF1F1F1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFE8E8
      E8FFDEDEDEFFD5D5D5FFCDCDCDFFC6C6C6FFC0C0C0FFBABABAFFB4B4B4FFB0B0
      B0FFABABABFFA8A5A7FFA2A1A2FF9AA09FFF8EAA9FFF76BB9FFF50D7A1FF19FF
      A2FF5FE3ACE93437373F02020201000000000000000000000000000000000000
      000000000000000000001011111248C04FCF0FEF19FF0FED19FF0FEC19FF0FEA
      19FF0FE919FF21BD28F23D8743D748804CCB517255BA527257B7527256B65272
      56B6527156B6527156B6527156B656655BA7565A5A853E40414D111212130000
      0000000000000000000000000000000000000000000000000000000000000000
      000039403C460CBF14FF0CBD14FF0CBB14FF0CB914FF56645BA7393C3C46090A
      0A0A000000000000000000000000000000000000000000000000000000000000
      00007F8181DFF2F1F1FFF6F5F5FFF7F6F6FFFBFAFAFFD1D0D0FF666674FF0C17
      A6FF2A2AD6FF3C3CDCFF6C6CE6FF7A7AD1FF9292ACFF98989CFFAFAEAEFFC7C6
      C6FFD3D3D3FFD9D8D8FFD8D7D7FFA0A5D6FF4F56F3FF0A74FAFF1DAEF7FF54CF
      F9FF8EE6FBFFAEF2FDFF9FF1FDFF61D9F8FF36BEF3FF34C6F4FF47E3FAFF30D7
      F8FF0EA6F1FF0680EEFF0673F0FF97A1F6FF5F7BFAFFC1C5E1FFC4C4C4FF7576
      76DF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282A2B2F1919C9F13D3DDDFFA9A7F3FF726FECFF5855E8FF423FE5FF120E
      DEFF0D08DDFF110CDDFF1914DFFF2C28E1FF2824E0FF1611DDFF100BDCFF100B
      DCFF100BDCFF0F0BDBFF0E0ADBFF1B18DDFF6764E8FF4342DEFF0606D2FD3A3D
      4248000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      030253565668AAAAA8F8909091FF969696FF9A9A9AFF9F9F9FFFA5A5A5FFACAC
      ACFFB3B3B3FFBBBBBBFFC3C3C3FFCECECEFFD8D8D8FFE5E5E5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FFEBEB
      EBFFE3E3E3FFDADADAFFD2D2D2FFCBCBCBFFC4C4C4FFBEBEBEFFB9B9B9FFB4B4
      B4FFB1B1B1FFACACACFFA8A8A8FFA5A3A4FFA1A0A1FF9AA09FFF85A89BFF85CC
      ADFF777D7B9E090A0A0A00000000000000000000000000000000000000000000
      0000000000000000000000000000101111125A815F8B0FEF1AFF0FEE19FF0FEC
      19FF0FEA19FF0FE919FF0FE719FF0FE619FF0FE418FF0FE218FF0EE118FF0EDF
      18FF0EDE18FF0EDC18FF0EDA17FF0ED917FF428447D24C505067181A1A1C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000034AF3CE20CBE14FF0CBC14FF0CBA14FF526D56B63B3E3E490C0C
      0D0D000000000000000000000000000000000000000000000000000000000000
      00004E515160B4B4B4FFF8F8F8FFF9F8F8FFFAFAFAFFFDFDFDFF9A9A9AFF5155
      80FF111AAFFF2C2CD9FF7171E7FF7171EAFF7272ECFF7373EFFF7E7ED3FF8B8B
      B5FF9595A0FF959597FF9D9DA5FF8B8BE6FF5859FEFF0A59FCFF078DF7FF129D
      F5FF29B3F6FF43C7F7FF44CEF7FF22B0F2FF0E8DEDFF10A0EFFF25D6F8FF23DB
      F8FF0DB1F4FF0688F2FF067BF4FF5D80F8FFEEEDEDFFDADADAFF929292FF4E51
      5160000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000585B8E9F0B0BD4FFA2A1F1FF9694F2FF6A67EBFF5C59E9FF3B38
      E4FF110DDEFF0E09DDFF100BDDFF110CDDFF100BDDFF100BDCFF100BDCFF100B
      DCFF100BDCFF0F0ADBFF100CDBFF3734E2FF716FE8FF1010D5FF5255A0B60303
      0302000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001718181A8A8D8BBAA2A2A2FF9A9A9BFFA3A3A3FFA8A8A8FFADADADFFB4B4
      B4FFBCBCBCFFC3C3C3FFCCCCCCFFD6D6D6FFDFDFDFFFF6F5F6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFEDED
      EDFFE5E5E5FFDDDDDDFFD6D6D6FFCFCFCFFFC9C9C9FFC3C3C3FFBDBDBDFFB9B9
      B9FFB5B5B5FFB1B1B1FFACACACFFAAAAAAFFA8A7A7FFA2A1A2FF9EA1A1FFB2A9
      A9E33335363D0202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039403C4652B158BF0FEE
      19FF0FEC19FF0FEB19FF0FE919FF0FE819FF0FE619FF0FE418FF0FE318FF0EE1
      18FF0EDF18FF0EDD18FF0EDC17FF0EDA17FF39AB3FDE3B3E3E49101111120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202014C9F52C60CBF14FF0CBD14FF0CBB14FF536D57B5373A3A44090A
      0A0A000000000000000000000000000000000000000000000000000000000000
      0000000000007D7E7ECFE8E8E8FFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFF8483
      83FF4A4E84FF121BB0FF5555E3FF7575EAFF7676ECFF7777EFFF7777F2FF7878
      F4FF7979F6FF7A7AF9FF8181E2FF7B7BFEFF7878FEFF3B40FBFF075BFBFF0682
      F6FF0886F4FF0C8FF2FF0E96F2FF0987EFFF0678EDFF0892F0FF13CCF7FF14D6
      F9FF09AEF6FF068AF5FF2171F8FF1367FCFF7790F4FFC4C4C4FF747575CF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F42484F0202D1FF8181EAFFC3C1F8FF817EEEFF6B68EBFF605E
      E9FF3633E4FF0D08DEFF0E09DDFF100BDDFF100BDDFF100BDDFF100BDCFF100B
      DCFF100BDCFF0E09DCFF1712DCFF6562E9FF6766E6FF0202D2FF464A535B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202013E41414BB4B5B3EAA2A3A3FFA9A9A9FFB0B0B0FFB4B4B4FFBCBC
      BCFFC3C3C3FFCCCCCCFFD4D4D4FFDDDDDDFFEBEBEBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFEFEF
      EFFFE8E8E8FFE0E0E0FFD8D8D8FFD3D3D3FFCDCDCDFFC6C6C6FFC2C2C2FFBDBD
      BDFFB9B9B9FFB4B4B4FFB1B1B1FFADADADFFAAAAAAFFA5A5A5FFC1B6B9FC6869
      6A81040505040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001E20
      202356735B7E31D03AE60FEB19FF0FE919FF0FE819FF0FE619FF0FE418FF0FE2
      18FF0EE118FF0EDF18FF0EDD18FF0EDB17FF57715C8313141516040505040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070707073EA945D80CC015FF0CBE14FF0CBC14FF566F5AAC2D2F2F360405
      0504000000000000000000000000000000000000000000000000000000000000
      000000000000292B2B30898989FFF8F8F8FFFCFCFCFFFDFDFDFFFBFBFBFFF2F2
      F2FF7F7E7EFF505383FF0F1BA6FF6769E2FF7B7BEDFF7B7BF0FF7C7CF2FF7D7D
      F4FF7E7EF7FF7F7FF9FF7F7FFBFF7F7FFEFF8080FFFF7B7BFBFF6262F9FF394F
      F8FF295AF7FF2160F5FF0D54F4FF0565F3FF0674F0FF068AF3FF0ABAF7FF0CD0
      F9FF07BDF9FF059EF9FFA9BFF2FFE0E3F1FF2C50F9FF797979FF292B2B300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000131415162829C3E73636DDFFD0CFF9FF9E9CF2FF7F7CEDFF6F6D
      EBFF625EE9FF3C39E5FF0E09DEFF0D08DDFF100BDDFF100BDDFF100BDDFF100B
      DCFF100BDCFF0E09DCFF2C27E0FF8886EEFF3434DCFF1818CAF21B1C1D1F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003040403676A6A84BFBEBDF9AFAFAFFFB6B6B6FFBCBCBCFFC4C4
      C4FFCCCCCCFFD4D4D4FFDBDBDBFFE4E4E4FFFCF8FCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFF1F1
      F1FFEBEBEBFFE4E4E4FFDCDCDCFFD6D6D6FFD1D1D1FFCBCBCBFFC6C6C6FFC1C1
      C1FFBCBCBCFFB9B9B9FFB5B5B5FFB2B2B2FFABACACFFBBB8B9FF8C8B8BB41314
      1516000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0F0F102ED137E80FED19FF0FEB19FF0FE919FF4D8C53C3596D5D8C5971
      5E9A56735AAD59705E984F5D546D1C1E1E210405050402020201000000000000
      0000000000000000000000000000000000000000000000000000000000000405
      0504292C2C310DC315FF0CC115FF0CBF14FF0CBD14FF545A587A1D1F1F220202
      0201000000000000000000000000000000000000000000000000000000000000
      00000000000000000000595C5C70A7A6A6FFFDFDFDFFFDFDFDFFFBFBFBFFF9F8
      F8FFFBFBFBFF908F8FFF696978FF172498FF5A60D0FF7E7EEDFF8080F3FF8181
      F4FF8181F7FF8181F9FF8181FBFF8282FEFF8383FFFF8282FCFF8181FAFF8181
      F7FF8181F4FF8181F2FF7577EBFF2631CDFF0551ECFF0574F8FF0587FAFF06AF
      FAFF06B8FBFF05ABFDFF127AFEFF95A9F6FF8A8A99FF595C5C70000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000585C7D8B0202D2FF9292EDFFC3C2F8FF918FF1FF817F
      EEFF726FECFF6562EAFF403DE5FF1814E0FF0C08DDFF100BDDFF100BDDFF100B
      DDFF0F0ADCFF130EDDFF524DE6FF7271E8FF0506D4FF595C8A9B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015161618828585A6CBCACAFFBBBBBBFFC3C3C3FFCBCB
      CBFFD3D3D3FFDADADAFFE0E2E0FFEFEEF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFF4F4
      F4FFEDEDEDFFE6E6E6FFDFDFDFFFDADADAFFD4D4D4FFCECECEFFC9C9C9FFC5C5
      C5FFC0C0C0FFBCBCBCFFBABABAFFB4B4B4FFBBBABAFFA9A8A7D62E3030360202
      0201000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02015061546D0FF11AFF0FEF19FF0FED19FF17DC20F9545B587A42B349D50FE6
      19FF29AF2EEC58615C9E3B3E3F4A0D0E0E0F0000000000000000000000000000
      0000000000000000000000000000000000000000000002020201090A0A0A2123
      232756895AB30DC415FF0CC215FF0CBF15FF339A3AE23A3D3D480D0E0E0F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006E71729FB5B5B5FFFEFEFEFFFCFCFCFFFAF9
      F9FFF7F6F6FFFAF9F9FFC3C1C1FF6C6C6DFF50548AFF2A36ABFF686ED3FF8081
      EBFF8484F7FF8585F9FF8585FCFF8686FEFF8686FFFF8686FCFF8585FAFF8585
      F7FF8181EBFF757AD6FF646CC1FF6F71A2FF5F638EFF3B55DAFFD4E0E1FF528C
      F4FF0599FEFF059DFFFF0595FFFF0589FFFF4663BCDB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A1B1C1E1C1DC8EF3130DBFFCECEF9FFABA9F3FF918F
      F0FF8281EEFF7572EDFF6866EAFF524FE7FF2724E1FF0B07DDFF0D08DDFF0F0A
      DDFF0E09DDFF201BDFFF6E6BE9FF2B2BDBFF1314CDF522242528000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E202023939493B6D5D5D4FFC7C9C9FFD2D2
      D2FFD7D7D7FFDFDFDFFFE8E8E8FFFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFF6F6
      F6FFEFEFEFFFE9E9E9FFE2E2E2FFDCDCDCFFD7D7D7FFD2D2D2FFCDCDCDFFC7C7
      C7FFC4C4C4FFC0C0C0FFBBBBBBFFC0BEC0FFB0B0AEDA3D404049020202010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000090A
      0A0A4AB751CC0FF31AFF0FF11AFF0FEF19FF48964ECC5A845F9E0FE919FF0FE7
      19FF0FE519FF528A57BA3235353D0A0B0B0B0000000000000000000000000000
      0000000000000000000003040403090A0A0A121313141E20202336393942577C
      5CA90DC715FF0DC515FF0CC315FF0CC115FF586A5C8A1B1C1C1F030404030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E71729FA8A8A8FFFDFDFDFFFCFB
      FBFFF8F8F8FFF5F4F4FFF6F5F5FFEEEEEEFFA2A0A0FF707072FF626282FF4D53
      9DFF4651B6FF6168CAFF7C80DFFF7C81E0FF7C81E0FF7C81DFFF757BD0FF6169
      C0FF6B70B1FF7A7A99FF777678FF8B8989FFCECBCBFF9AA0E8FFE2E0E0FFE2E3
      E3FF3C77F9FF2173FCFF166FF2FF058FFFFF0474FFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202014E50A9C00808D5FFB7B6F4FFC7C5F8FFA3A1
      F2FF9391F0FF8481EFFF7673EDFF6865EAFF5755E8FF3532E3FF1D18E0FF110C
      DEFF0D08DDFF3A36E3FF716FEAFF0C0CD6FF4A4CADC603030302000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000202020122242428939593B5E3E3E0FFD8D7
      D7FFDDDDDDFFE4E5E4FFF5F3F6FFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF6F6
      F6FFF0F0F0FFE9E9E9FFE5E5E5FFDFDFDFFFDADADAFFD4D4D4FFD1D1D1FFCCCC
      CCFFC7C7C7FFC2C2C3FFCACAC9FFACADACD73F42424C02020201000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202013135
      343B10F61AFF10F41AFF0FF31AFF0FF11AFF59675C9C525F577423DB2BF20FE9
      19FF0FE719FF596E5E8D383B3B452B2D2D33282A2A2F282A2A2F282A2A2F282A
      2A2F282A2A2F282A2A2F2D2F2F36393C3C464548485957615B863B9A41DB0DCA
      16FF0DC815FF0DC615FF0DC315FF53885AB72123232706060606000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E71729F969595FFF2F2
      F2FFFBFBFBFFF7F7F7FFF4F2F2FFF1F0F0FFF3F2F2FFF6F5F5FFBFBEBEFF8E8C
      8CFF747373FF6D6C78FF6E6D81FF62638AFF62638AFF6E6D81FF706F7DFF7372
      72FF838282FFADAAAAFFD7D3D3FFDEDADAFFDFDCDCFFE2DFDFFFE5E2E2FFE7E5
      E5FFC5C6E3FF646CB1FF6A7084B1047BFFFF426DCACF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000054586F7A0202D3FF8B8AECFFE9E8FDFFB7B5
      F5FFA5A4F3FF9694F2FF8684EFFF7875EDFF6966EAFF5C59E9FF4B49E6FF3733
      E3FF2621E0FF6D69EAFF6362E6FF0202D4FF575A748100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202020120222225828585A3F4F0
      F0FFECECEBFFECEBECFFFFF8FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF7F7
      F7FFF1F1F1FFECECECFFE7E7E7FFE2E2E2FFDCDCDCFFD7D7D7FFD3D3D3FFCDCD
      CDFFCBCCCCFFD1D1D2FF9FA1A1C9373A3A420202020100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007070707589D
      5FB010F81AFF10F61AFF10F41AFF2DAB34E8555959AB585B5C9758615C975574
      5AB157675BA5585C5C95585C5C91585B5C8F585B5C8F585B5C8F585B5C8F585B
      5C8F585B5C8F585B5C8F56715AAF4D7E52C2369C3CE00DCF16FF0DCD16FF0DCB
      16FF0DC915FF0DC615FF519057BD202122250707070700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000595C5C707B7B
      7BFFDAD9D9FFFBFAFAFFF8F7F7FFF3F2F2FFEFEDEDFFE9E7E7FFEBE8E8FFEDEB
      EBFFF0EEEEFFF1F0F0FFD1CFCFFFC6C4C4FFC4C3C3FFC4C2C2FFE7E4E4FFE3E0
      E0FFE0DCDCFFDEDADAFFDDD9D9FFDFDBDBFFE1DEDEFFE4E1E1FFE6E3E3FFCCCA
      CAFF797979FF595C5C7035383C400588FFFF35383C4000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000181A1A1C2C2EC1E33332DDFFE2E2FBFFCFCE
      FAFFB7B5F6FFA8A6F4FF9896F2FF8885EFFF7B78EDFF6B68ECFF5B58E8FF4C49
      E6FF5450E7FF908EEFFF2C2CDBFF2627C5E81C1D1E2000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0F0F106164
      6479D1D2D0E3FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8FFF3F3F3FFEEEEEEFFE7E7E7FFE4E4E4FFDEDEDEFFDADADAFFD4D4D4FFDBDB
      DAFFD0D0CDF38082829C20212225020202010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1C1C1F10FC
      1BFF10FA1BFF10F81AFF10F61AFF10F41AFF0FF21AFF0FF01AFF0FEE19FF0FEC
      19FF0FEA19FF0FE819FF0FE619FF0FE418FF0FE218FF0EE018FF0EDE18FF0EDC
      18FF0EDA17FF0ED817FF0ED617FF0ED417FF0DD216FF0DD016FF0DCE16FF0DCB
      16FF0DCA16FF597E5F9B181A1A1C050505050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000292B
      2B30747575CF9B9A9AFFEAE9E9FFF8F7F7FFF4F3F3FFEEEDEDFFE9E7E7FFE4E1
      E1FFE1DEDEFFE0DCDCFFDEDADAFFE0DDDDFFE0DDDDFFDCD9D9FFDBD7D7FFDCD8
      D8FFDDD9D9FFDEDADAFFDFDCDCFFE1DEDEFFE3E0E0FFDBD8D8FF969494FF7475
      75CF292B2B3000000000000000005867888F5864999F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005558717D0202D3FF9B9BEFFFF1F0
      FEFFD2D0FAFFC4C3F8FFB7B6F6FFA9A7F4FF9C99F2FF8D8AF0FF807DEEFF7471
      ECFF8D8BF1FF7272E9FF0203D4FF575B79860000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0201393C3C44949797B4EFF0F0F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F9FFF4F4F4FFEEEEEEFFE8E8E8FFE5E5E5FFE2E2E2FFE2E2E2FFE7E7E7FEA6A8
      A8CE4F5252600B0C0C0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000056755B7D10FE
      1BFF10FC1BFF10FA1BFF10F81AFF10F61AFF10F41AFF0FF21AFF0FF01AFF0FEE
      19FF0FEC19FF0FEA19FF0FE719FF0FE519FF0FE318FF0EE218FF0EDF18FF0EDD
      18FF0EDB17FF0ED917FF0ED717FF0ED517FF0ED317FF0DD116FF0DCF16FF47A5
      4ECD404643500C0C0D0D03030302000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004E515160757676DF979797FFDBD9D9FFF4F3F3FFF1F0F0FFECEB
      EBFFE7E4E4FFE4E0E0FFE1DDDDFFDFDCDCFFDFDBDBFFDEDBDBFFDEDBDBFFDFDB
      DBFFDFDCDCFFE1DDDDFFE2DFDFFFCECBCBFF929191FF757676DF4E5151600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000121414152122C8EC4F4FE1FFF6F5
      FEFFE9E8FCFFE1E0FBFFDAD9FAFFD2D1F9FFCBCAF8FFC3C2F7FFBAB9F6FFB6B5
      F5FFC2C0F6FF3F3FDFFF1C1DCAEF1718181A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000101111124D50515D979A9AB4EAEBEBEFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFC
      FCFFF8F8F8FFF5F5F6FFF4F5F5FFF1F1F0FFE7E8E7FBA7A9A7C66265657A1D1E
      1E21000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039413C4610FF
      1BFF10FE1BFF10FC1BFF10FA1BFF10F81AFF10F61AFF10F31AFF0FF11AFF0FEF
      1AFF0FED19FF0FEB19FF0FE919FF0FE719FF0FE518FF0FE318FF0EE018FF0EDE
      18FF0EDC18FF0EDA17FF0ED817FF0ED617FF33BE3AE45A845F9B3A3F3D47090A
      0A0A030303020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004E515160727576AF797979FFA19F9FFFC4C2
      C2FFDBD8D8FFE9E7E7FFE7E4E4FFE5E2E2FFE3E0E0FFE1DEDEFFE1DEDEFFD3CF
      CFFFBDBABAFF9D9B9BFF787878FF727576AF4E51516000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000056599AAD0E0ED7FF2C2C
      DCFF2C2CDCFF2B2BDCFF2B2BDCFF2A2ADCFF2929DCFF2828DBFF2727DBFF2727
      DBFF2424DBFF0C0CD7FF575A98AA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F1010113F42424C7577778DB2B4B4C7E6E7
      E7EEF8F8F8FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFBFBFCE8E8E5F3B4B6B5D38385859D4F5252601A1B1C1E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C31
      2F3556745B7C58775C8158785D8358785D8358785D8358785D8358775D835877
      5D8358775D8358775D8358765D8358765D8358765D8358765D8357755D835775
      5D8357755D8352675773404944511719191B0405050402020201000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0F0F1042454550686C
      6C8F757777BF757676DF7A7878FF7A7878FF7A7878FF7A7878FF757676DF7577
      77BF686C6C8F424545500E0F0F10000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020222326565999AB3739
      BCD93B3CB9D63B3CB9D63B3CB9D63B3CB9D63B3CB9D63B3CB9D63B3CB9D63B3C
      B9D6393ABBD8575A99AB20212225000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001718181A3235
      353B4D50505D6568687E7B7E7E95878A89A48A8D8DAB868989A67D8080996A6D
      6E84535656663A3D3D451E202023030404030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000900000000100010000000000800D00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00000000000000000000
      0000000000000000FFFFF000FFFF000000000000000000000000000000000000
      FFFC00001FFF000000000000000000000000000000000000FFF0000007FF0000
      00000000000000000000000000000000FFC0000001FF00000000000000000000
      0000000000000000FFC0000001FF000000000000000000000000000000000000
      FFC0000000FF000000000000000000000000000000000000FFC00000007F0000
      00000000000000000000000000000000FF800000007F00000000000000000000
      0000000000000000FF800000007F000000000000000000000000000000000000
      FF80000000FF000000000000000000000000000000000000FF00000000FF0000
      00000000000000000000000000000000FF00000001FF00000000000000000000
      0000000000000000FF00000003FF000000000000000000000000000000000000
      FF00000007FF000000000000000000000000000000000000FF00000007FF0000
      00000000000000000000000000000000FF00000007FF00000000000000000000
      0000000000000000FF00000007FF000000000000000000000000000000000000
      FE00000007FF000000000000000000000000000000000000FE00000007FF0000
      00000000000000000000000000000000FE00000003FF00000000000000000000
      0000000000000000FE00000003FF000000000000000000000000000000000000
      FE00000003FF000000000000000000000000000000000000FE00000003FF0000
      00000000000000000000000000000000FE00000003FF00000000000000000000
      0000000000000000FC00000003FF000000000000000000000000000000000000
      FC00000003FF000000000000000000000000000000000000FC00000003FF0000
      00000000000000000000000000000000FC00000001FF00000000000000000000
      0000000000000000FC00000001FF000000000000000000000000000000000000
      FC00000001FF000000000000000000000000000000000000FC00000001FF0000
      00000000000000000000000000000000FC00000001FF00000000000000000000
      0000000000000000F800000001FF000000000000000000000000000000000000
      F800000001FF000000000000000000000000000000000000F800000001FF0000
      00000000000000000000000000000000F800000000FF00000000000000000000
      0000000000000000F800000000FF000000000000000000000000000000000000
      F800000000FF000000000000000000000000000000000000F800000000FF0000
      00000000000000000000000000000000F000000000FF00000000000000000000
      0000000000000000F0000000007F000000000000000000000000000000000000
      F0000000007F000000000000000000000000000000000000F0000000007F0000
      00000000000000000000000000000000F0000000007F00000000000000000000
      0000000000000000F800000000FF000000000000000000000000000000000000
      FF00000007FF000000000000000000000000000000000000FFFF0007FFFF0000
      00000000000000000000000000000000FFFFFFFE0FFFFFFFF00FFFFFFFFF0000
      1FFFFFFFFFFFFFFFFFFFFFF00FFFFFF8F00F1FFFFFFC000007FFF8000000001F
      FFFFFF800FFFFFF0700E0FFFFFF0000001FFE00000000007FFFFFC000FFFFFC0
      700E03FFFFE0000000FFC00000000003FFFFE0000FFFFF00300C00FFFFC00000
      007FC00000000003FFFF00000FFFFF00300C00FFFF800000003FC00000000003
      FFF800000FFFFF80100801FFFF000000001F800000000001FFC000000FFFFF80
      000001FFFE000000000F800000000001FE0000000FFFF3C0000003CFFC000000
      0007800000000001F00000000007F0E00000070FFC0000000007800000000001
      E00000000007E06000000607F80000000003800000000001E00000000007E000
      00000007F00000000003800000000001E00000000007C00000000003E0000000
      0001800000000001E00000000007800000000001E00000000001800000000001
      E00000000007800000000001C00000000001800000000001E000000000078000
      00000001C00000000000800000000001E00000000007C00000000003C0000000
      0000800000000001E00000000007F00003C0000F800000000000800000000001
      E00000000007FC000FF0003F800000000000800000000001E00000000007FE00
      1FF8007F800000000000800000000001E0000000000700003FFC000080000000
      0000800000000001E0000000000700003FFC0000800000000000800000000001
      E0000000000700007FFE0000800000000000800000000001E000000000070000
      7FFE0000800000000000800000000001E0000000000700007FFE000080000000
      0000800000000001E0000000000700007FFE0000800000000000800000000001
      E0000000000700003FFC0000800000000000800000000001E000000000070000
      3FFC0000800000000000800000000001E00000000007FE001FF8007F80000000
      0001800000000001E00000000007FC000FF0003F800000000001800000000001
      E00000000007F00003C0000F800000000001800000000001E00000000007C000
      00000003800000000003800000000001E00000000007800000000001C0000000
      0003800000000001E00000000007800000000001C00000000007800000000001
      E00000000007800000000001C00000000007800000000001E00000000007C000
      00000003E0000000000F800000000001E00000000007E00000000007E0000000
      000F800000000001E00000000007E06000000607F0000000001F800000000001
      E00000000007F0E00000070FF8000000003F800000000001E00000000007F3C0
      000003CFFC000000007F800000000001E00000000007FF80000001FFFE000000
      00FF800000000001E00000000007FF80100801FFFF00000001FF800000000003
      E00000000007FF00300C00FFFF80000003FFC00000000003E00000000007FF00
      300C00FFFFC0000007FFC00000000003E00000000007FFC0700E03FFFFE00000
      0FFFE00000000007E00000000007FFF0700E0FFFFFF800003FFFF0000000000F
      F00007F8000FFFF8F00F1FFFFFFF0001FFFFFE000000007FFFFFFFFFFFFFFFFF
      F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFF0000007FFFFFE0000
      3FFF000000000000FFFF00007FFFFFC0000007FFFC000000001F000000000000
      FFFC00000FFFFF00000007FFF00000000007000000000000FFF0000007FFFE00
      000007FFF8000000000F000000000000FFC0000001FFFC00000007FFFF000000
      007F000000000000FF80000000FFF800000007FFFFF800001FFF000000000000
      FF000000007FF800FFFFFFFFFFE0000007FF000000000000FE000000003FF003
      FFFFFFFFFFC0000003FF000000000000FC000000001FF00FF8000FFFFF800000
      01FF000000000000F8000000000FF01FF00003FFFF00000000FF000000000000
      F80000000007F01FF00000FFFE000000007F000000000000F00000000007F01F
      F000007FFC000000003F000000000000E00000000003F00FF000003FF8000000
      001F000000000000E00000000003F00FF800001FF8000000001F000000000000
      C00000000001F003FFFE001FF0000000000F000000000000C00000000001F800
      FFFFC01FF0000000000F000000000000C00000000000F800001FE00FE0000000
      0007000000000000800000000000FC00001FF00FE00000000007000000000000
      800000000000FE00001FF00FC00000000003000000000000800000000000FE00
      001FF80FC00000000003000000000000800000000000FC00001FF00FC0000000
      0003000000000000800000000000F800001FE00FC00000000003000000000000
      000000000000F8003FFFC01FC00000000003000000000000000000800000F003
      FFFF001FC00000000003000000000000000000C00000F007F800001FC0000000
      0003000000000000000000000000F00FF800003FC00000000003000000000000
      800000000000F01FF000007FC00000000003000000000000800000000000F01F
      F00000FFC00000000003000000000000800000000000F01FF000003FC0000000
      0003000000000000800000000000F00FF800003FC00000000003000000000000
      800000000000F007FC00001FC00000000003000000000000800000000000F001
      FFFF001FC00000000003000000000000C00000000000F800003FC00FE0000000
      0007000000000000C00000000001FC00001FE00FE00000000007000000000000
      E00000000001FC00001FF00FF0000000000F000000000000E00000000003FE00
      001FF80FF0000000000F000000000000F00000000003FF80001FF00FF8000000
      001F000000000000F00000000007FFE0001FF00FF8000000001F000000000000
      F8000000000FFFF0003FE00FFC000000003F000000000000FC000000000FFFE0
      00FF801FFE000000007F000000000000FE000000001FFFE000FC001FFF000000
      007F000000000000FE000000003FFFC00000003FFF800000007F000000000000
      FF000000007FFFC00000007FFFC00000007F000000000000FFC0000000FFFFC0
      000000FFFFE00000067F000000000000FFE0000003FFFFC0000001FFFFF80000
      1FFF000000000000FFF800000FFFFFC0000007FFFFFE00007FFF000000000000
      FFFE00003FFFFFE000003FFFFFFF8001FFFF000000000000FFFFC000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000}
  end
  object ppmPackages: TPopupMenu
    Left = 170
    Top = 316
    object miSelectItem: TMenuItem
      Caption = 'Select'
      OnClick = btnSelectClick
    end
    object miUnselect: TMenuItem
      Caption = 'Unselect'
      OnClick = btnUnselectClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miLocateOnDisk: TMenuItem
      Caption = 'Locate on disk...'
      OnClick = miLocateOnDiskClick
    end
  end
  object iltLittleIcons: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 198
    Top = 316
    Bitmap = {
      494C010105000700040010001000FFFFFFFF2100FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000011121213222424282224242811121213000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F31313870665F9C8B6E5DD8987460EC977460EC8B6F5DD870665F9C2F31
      3138000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303025F5C
      587C9B7159F6C39E87FFBB8B71FFB47F5DFFB4805FFFBD8F75FFC39E88FF9A71
      59F65F5C587C0303030200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000645E5A82B68C
      76FFBE9074FFAB5E2FFFB56B3BFFB35B22FFB05215FFAC5118FFA85826FFBF90
      75FFB68C76FF645E5A8200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A3B3B45A77B60FEBF8A
      6AFFAC4C0EFFD6A687FFFFFFFFFFEFDED3FFCF8F65FFC46626FFBE6325FFAF54
      18FFC08C6DFFA87C61FE3A3B3B45000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000827063B4D8B59BFFC57A
      41FFC76E2DFFD89F7AFFFFFFFFFFF5E9E1FFD39B75FFD19267FFCA6B29FFC569
      29FFB45B20FFCCA388FF837164B4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C1E1E21A8846BEEE0B692FFDA9A
      66FFD9945EFFD5925FFFF5F0ECFFFFFFFFFFD99566FFD07B3CFFD17532FFCF72
      2FFFC36523FFC5855CFFA9846BEE1C1E1E210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037383841C39A7FFFE3B891FFE0A7
      77FFDEA270FFDA955DFFE6CAB3FFFFFFFFFFECCCB4FFD67830FFD77C37FFD679
      33FFCE702CFFC67941FFC09478FF373838410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A3B3B45CBA386FFE8C29FFFE5B4
      88FFE3AE80FFDEB48FFFDFAF87FFFAF9F8FFFAF6F3FFDE8E52FFDD8037FFDC7F
      37FFD67730FFCD7C3FFFC79A7DFF3A3B3B450000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002728282DC29879F8EDD0B4FFEBC0
      98FFE9BA8EFFE4BA95FFE0C3AAFFF7F2EFFFFFFFFFFFE5A676FFE38135FFE181
      3AFFDA7A31FFD58851FFC19475F82728282D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000007070707A6866CD2F0DBC7FFEFCB
      A7FFEEC6A0FFECBE94FFE7BB92FFE5C5A7FFE4C8AFFFE1A26FFFE68B44FFE583
      3AFFDB782CFFDFA67DFFA68870D2070707070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005F5B5671E3C0A5FFF3DC
      C4FFF2D0AEFFF0CAA7FFEEC49CFFEABB91FFF4E6D9FFF6EBE2FFE3AB7EFFE095
      58FFDE965EFFDFB392FF5F5B5771000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000070707079D826BC3EFD8
      C6FFF5DFC8FFF4D4B4FFF2CEABFFEEC8A3FFF0E7DFFFF4F2F1FFE4B78DFFE4B1
      83FFE8C9AEFF9D836CC307070707000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001819191BA486
      6BCAEACDB5FFF5E5D5FFF5DDC5FFF4D5B6FFEECDADFFEACBADFFEDCFB3FFE8C6
      A9FFA5866CCA1819191B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0C
      0C0C726A6187BE9876E9E2BEA0FFECD0B7FFEBCEB4FFE1BD9EFFBF9977E9726A
      63870B0C0C0C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000131415164445424F615E5872615E58724445424F131415160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000121313147A70669F2527272B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001C1E
      1E21448692CB434849562527272C212323271C1E1E211718181A111212130C0C
      0D0D070707070304040300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008090909878B8BBB75787AB80000000000000000000000000000
      0000706961818B582FFC4C4D4C5D13141415181A1A1C08080808000000000000
      0000000000000000000000000000000000000000000000000000000000000F10
      1011587377904E848DBC2F323238121313140F1010110C0C0D0D090A0A0A0707
      0707040505040303030200000000000000000000000002020201070707070D0D
      0D0E121414151718181A1718181A1718181A1718181A1718181A1718181A1314
      15160D0E0E0F0808080803030302000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080909098D8F90BB5F6164FF7E8182B90000000000000000000000003436
      353CC88450F0AC6A36FF89664AE37C604ADD745D4BDB71665EB85556556C1011
      1112000000000000000000000000000000000000000000000000000000000000
      000042494A5345919DCE53848BB2151616180000000000000000000000000000
      00000000000000000000000000000000000000000000030303020D0D0D0E181A
      1A1C2426262A2B2D2D335B5A567476695AA62B2D2D332B2D2D332B2D2D332526
      272B191B1B1D0D0E0E0F03040403000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000809
      09098F9292BB626467FF7F8283B808080808000000000000000013151516A583
      69C3D58143FFDA8444FFD78243FFD88344FFD78243FFBF763CFF89552CFF7465
      5BC12628282C0000000000000000000000000000000000000000000000000000
      00001719191B48909CC838B1C0E5587E85A30C0D0D0D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C4C4A5C926F49CC926F49CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080909099194
      95BB686A6CFF7F8283B708080808000000000000000000000000978373A8E590
      53FFE48B4BFFE38948FFE48B4BFFD39668EAC2A187D3D1AF96E1DEB18FEFE695
      5BFF8E6D52DB2728282D00000000000000000000000000000000000000000000
      000000000000577F85A139C8D8F241ABB8DE58767B9105050505000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4B5C95724BCCFFBD24FF95724BCC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007070707949797BB6C6E
      70FF7F8282B607070707000000000000000000000000000000006A686576D1B0
      98E0E7B289FAE89E69FFDF8746FF7A70668D0000000000000000000000006564
      6170D5A07AEAA07C5FD000000000000000000000000000000000000000000000
      0000000000004D5A5C6849AEBCDF3ED8E8FF4AA2AED454696C7C020202010000
      0000000000000000000000000000000000000000000000000000000000004F4E
      4B5C99754ECCFFC437FFFFBA19FF99754ECC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D0D
      0D0E3639393F3B3E3F451819191B00000000000000007478788C6E7072FF7F82
      82B5070707070000000000000000000000000000000000000000000000000707
      07076C6B6778CAAE98D9E5A878FBA0795AD70000000000000000000000000000
      0000282A2A2EAE9078C000000000000000000000000000000000000000000000
      0000000000002B2F2F34519CA6CA4BD1E0FF4CD0DFFE509CA7CB4D5B5C680000
      00000000000000000000000000000000000000000000000000004F4F4B5C9C79
      50CCFAC957FFF5AA10FFF7B72CFF9C7950CC9C7950CC9C7950CC9C7950CC9C79
      50CC9C7950CC9C7950CC7E7161990000000000000000080909097A7E7E90C9CA
      CAF7DDDEDEFFDEDFDFFFD9D9DAFD999C9DB562656675717476F36B6F708A0606
      0606000000000000000000000000000000000000000000000000000000000000
      00000000000003030302706E6A7C9E8875B00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E91
      9CC04A8F99C3498B96C6478B96C85CCFDDFF46C4D6FF5DCCDAFB5398A1C4424B
      4C5400000000000000000000000000000000000000004F4F4B5CA17D53CCFAD4
      87FFEDAF5DFFE7A53DFFE4A63BFFE7AD46FFE6AC44FFE6AA42FFE5A940FFE5A8
      3EFFE5A73CFFE7AC42FFA17D53CC00000000050505059FA1A2C0D0D1D1FFD4D4
      D5FFD3D3D4FFD3D3D4FFD2D3D3FFD9DADAFFC7C8C9FF61646577000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505050000000070696387393B3B440000
      0000000000000000000000000000000000000000000000000000000000004E5D
      5F6B69B6C1DA89EAF5FF7FE5F2FF7FE5F2FF7EE5F2FF7FE5F2FF80DDE9F85696
      9FBE3439393F00000000000000000000000000000000A58256CCFCDB8EFFEEB1
      67FFEEB167FFEEB167FFEAAD61FFE1A354FFD89A4AFFD39545FFD09242FFD092
      42FFD39545FFDFA859FFA58256CC0000000066696A76CCCCCDFFD5D6D6FFD8D9
      D9FFDADBDBFFDADBDBFFD9D9DAFFD6D6D7FFD8D8D9FF999C9EB8000000000000
      00000000000000000000000000000000000000000000000000008A796AA26764
      5F830000000000000000000000000000000000000000D8864AF97C5C44E56463
      5F883D3F3F490000000000000000000000000000000000000000000000001A1C
      1C1E57959DBA8FEAF4FE67DDEEFF83E7F3FF538E97B4538E97B4538E97B4538E
      97B4538E97B40000000000000000000000000000000050504C5CAA8559CCFDDE
      91FFEFB369FFEFB369FFF2BC72FFF5C57BFFF5C47AFFF4C379FFF4C278FFF4C2
      78FFF4C177FFF5C77CFFAA8559CC00000000B0B2B3DBD7D8D9FFDBDCDCFFDFE0
      E0FFE2E3E3FFE2E3E3FFE0E1E1FFDCDDDDFFD7D8D8FFD6D6D7FE1B1D1D1F0000
      000000000000000000000000000000000000000000000000000056565361D38D
      59EC7D6F62B64042414D000000000000000000000000C98D60E0C4783EFF985E
      30FF785942E66C68629600000000000000000000000000000000000000000000
      0000567073827EC9D0E372E1F0FF7AE4F2FF84D0DAF14B8F99C2282C2C300000
      000000000000000000000000000000000000000000000000000050504C5CAF8A
      5DCCFEE194FFF4BD73FFF9CE81FFAF8A5DCCAF8A5DCCAF8A5DCCAF8A5DCCAF8A
      5DCCAF8A5DCCAF8A5DCC8578659900000000C9CACBFEDFE0E0FFE1E2E2FFE6E7
      E7FFE9EAEAFFE9EAEAFFE7E8E8FFE2E3E3FFDFDFDFFFDDDDDEFF4144444B0000
      000000000000000000000000000000000000000000000000000000000000726F
      6B7FE89E68FFA06133FE745945E1726051D194745AD2C57E48F6E28847FFDD85
      45FFCA7C3FFF946440F000000000000000000000000000000000000000000000
      00002D313136609FA8C098EFF9FF73E3F4FF82E8F6FF8BD6DDF04F929BBE282C
      2C30000000000000000000000000000000000000000000000000000000005050
      4C5CB28D60CCFFE497FFFCD689FFB28D60CC0000000000000000000000000000
      000000000000000000000000000000000000CECFD0FCEBECECFFEFEFEFFFF0F1
      F1FFF1F1F1FFF1F1F1FFF0F1F1FFEFEFEFFFECECECFFE0E1E1FF3C3E3F450000
      0000000000000000000000000000000000000000000000000000000000000303
      030269686575DDB494EDEAA573FFE59153FFE48D4DFFE48E4EFFE48E4FFFE48C
      4CFFDF8C50F96D67607F00000000000000000000000000000000000000000000
      000003030302587E84969ADDE3ED80E9FAFF7FE9FAFF8DEEFBFF90D8DEEF4F92
      9BBD282C2C300000000000000000000000000000000000000000000000000000
      000051514C5CB59162CCFFE598FFB59162CC0000000000000000000000000000
      000000000000000000000000000000000000AAACAEC9EFEFEFFFF4F4F4FFF6F6
      F6FFF8F8F8FFF8F8F8FFF6F7F7FFF4F5F5FFF1F1F1FFCECECFF90F1010110000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000313333388C857D99BEA693CDD1AE93E2C9AA8FDAE4AA7EF7E593
      56FF99816BB2090A0A0A00000000000000000000000000000000000000000000
      0000000000003E45464D6BADB6CAB0F8FFFFA7F5FEFFA6F5FEFFB4F9FFFF93DA
      DFEF4F929BBD282C2C3000000000000000000000000000000000000000000000
      00000000000051514D5CB79464CCB79464CC0000000000000000000000000000
      0000000000000000000000000000000000004A4D4D54D6D6D7FFF7F7F7FFF8F8
      F8FFF9F9F9FFF9F9F9FFF8F8F8FFF6F7F7FFE6E6E7FF7F828396000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020201111212131B1D1D1F1D1E1E21B7A08EC7D797
      65EE2E302F350000000000000000000000000000000000000000000000000000
      0000000000000A0B0B0B558E95AB558E95AB558E95AB558E95AB558E95AB558E
      95AB558E95AB558E95AB00000000000000000000000000000000000000000000
      0000000000000000000052514D5C8A7D69990000000000000000000000000000
      000000000000000000000000000000000000000000007E81828ED8D8D9FFF8F8
      F8FFFAFBFBFFFAFAFAFFFBFBFBFFE3E3E4FFA3A5A6C40A0B0B0B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E78728B6F6A
      647C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4D4D54AAAC
      AEC8D4D5D6FCD3D3D4FEB3B5B6DC686C6C790606060600000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FC3F000000000000F00F000000000000
      C003000000000000C00300000000000080010000000000008001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080010000000000008001000000000000C003000000000000
      E007000000000000F81F000000000000F1FFE003FFFFFFF8F03FE0038001FFF0
      E00FF0FF8001FFE0C007F07FF8FFFFC1C003F83FF0FFFF83C0E3F81FE0FFE187
      E0F3F81FC001800FF8FFE00F8001003FFE9FE0078001003FCF87E0078001001F
      C383F01FC001001FE003F00FE0FF001FE003F007F0FF001FF803F803F8FF003F
      FC07F803FCFF803FFFCFFFFFFFFFC07F}
  end
  object opdMR: TOpenPictureDialog
    DefaultExt = 'mr'
    Filter = 
      'All Supported Files (*.mr;*.bmp;*.dib;*.jpg;*.jpeg;*.png;*.gif)|' +
      '*.mr;*.bmp;*.dib;*.jpg;*.jpeg;*.png;*.gif|Sega Dreamcast MR Form' +
      'at (*.mr)|*.mr|Bitmaps (*.bmp;*.dib)|*.bmp;*.dib|JPEG Pictures (' +
      '*.jpg;*.jpeg)|*.jpg;*.jpeg|Portable Network Graphics (*.png)|*.p' +
      'ng|CompuServe GIF (*.gif)|*.gif|All Files (*.*)|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Select the Bootstrap Logo...'
    Left = 142
    Top = 316
  end
  object bfdWorkDir: TJvBrowseForFolderDialog
    Options = [odFileSystemDirectoryOnly, odStatusAvailable, odNewDialogStyle]
    Title = 'Select the new Temporary folder:'
    StatusText = 
      'This directory will be the working directory for the application' +
      '.'
    Left = 30
    Top = 316
  end
  object sdCDI: TSaveDialog
    DefaultExt = 'cdi'
    Filter = 'Padus DiscJuggler Image (*.cdi)|*.cdi|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save your Padus DiscJuggler image to...'
    Left = 86
    Top = 316
  end
  object sdNRG: TSaveDialog
    DefaultExt = 'nrg'
    Filter = 'Nero Burning Rom Image (*.nrg)|*.nrg|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save your Nero Burning Rom image to...'
    Left = 2
    Top = 316
  end
  object sdMDS: TSaveDialog
    DefaultExt = 'mds'
    Filter = 'Alcohol 120% Image (*.mds)|*.mds|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save your Alcohol 120% image to...'
    Left = 226
    Top = 316
  end
  object spdMR: TSavePictureDialog
    DefaultExt = 'mr'
    FileName = 'iplogo'
    Filter = 
      'All Supported Files (*.mr;*.bmp;*.dib;*.jpg;*.jpeg;*.png;*.gif)|' +
      '*.mr;*.bmp;*.dib;*.jpg;*.jpeg;*.png;*.gif|Sega Dreamcast MR Form' +
      'at (*.mr)|*.mr|Bitmaps (*.bmp;*.dib)|*.bmp;*.dib|JPEG Pictures (' +
      '*.jpg;*.jpeg)|*.jpg;*.jpeg|Portable Network Graphics (*.png)|*.p' +
      'ng|CompuServe GIF (*.gif)|*.gif|All Files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save the Bootstrap logo to...'
    Left = 254
    Top = 316
  end
  object aeMain: TApplicationEvents
    Left = 280
    Top = 316
  end
end
