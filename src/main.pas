(*
  Main Unit @ 2012-09-15
  License: GPL 3
  Created by SiZiOUS

  This is the main file for this program.
  The main form is located here.

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
unit Main;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  Vcl.ImgList, JvExStdCtrls, Vcl.ComCtrls, JvButton, JvCtrls, JvExControls,
  JvLabel, JvExExtCtrls, JvRadioGroup, JvGroupBox, JvComponentBase,
  JvBalloonHint, JvExCheckLst, JvCheckListBox, JvRichEdit, Vcl.Menus,
  Vcl.ExtDlgs, SBICore, XMLConf, JvBaseDlg, JvBrowseFolder, Vcl.AppEvnts;

type
  TfrmMain = class(TForm)
    pclMain: TPageControl;
    tbsPackages: TTabSheet;
    pnlPackages: TPanel;
    cbxFilter: TComboBox;
    btnSelect: TButton;
    btnUnselect: TButton;
    btnRefresh: TJvImgBtn;
    pnlBottom: TPanel;
    pnlBurn: TPanel;
    btnNRG: TJvImgBtn;
    btnMDS: TJvImgBtn;
    btnCDR: TJvImgBtn;
    pnlMainCtrl: TPanel;
    btnHelpAbout: TJvImgBtn;
    btnConfig: TJvImgBtn;
    btnQuit: TJvImgBtn;
    pnlMenuType: TPanel;
    lblMenuType: TLabel;
    cbxMenuType: TComboBox;
    tbsCDI: TTabSheet;
    tbsNRG: TTabSheet;
    tbsMDS: TTabSheet;
    tbsCDR: TTabSheet;
    pnlCDI: TPanel;
    btnMakeCDI: TJvImgBtn;
    btnCDIBack: TJvImgBtn;
    lblTitleCDI: TJvLabel;
    lblPackagesFilter: TLabel;
    btnSelectAll: TButton;
    btnUnselectAll: TButton;
    Panel5: TPanel;
    BalloonHint: TJvBalloonHint;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblPackageName: TLabel;
    lblPackageFileName: TLabel;
    lblPackageKind: TLabel;
    Panel6: TPanel;
    pnlMDS: TPanel;
    lblTitleMDS: TJvLabel;
    btnMakeMDS: TJvImgBtn;
    btnMDSBack: TJvImgBtn;
    Panel7: TPanel;
    pnlNRG: TPanel;
    lblTitleNRG: TJvLabel;
    btnMakeNRG: TJvImgBtn;
    btnNRGBack: TJvImgBtn;
    rgpNRGStructureType: TJvRadioGroup;
    gbxDiscLabelNRG: TJvGroupBox;
    edtNRGVolumeName: TEdit;
    rgpNRGImageType: TJvRadioGroup;
    gbxDiscLabelCDI: TJvGroupBox;
    edtCDIVolumeName: TEdit;
    rgpCDIStructureType: TJvRadioGroup;
    gbxDiscLabelMDS: TJvGroupBox;
    edtMDSVolumeName: TEdit;
    rgpMDSStructureType: TJvRadioGroup;
    iltMainToolbar: TImageList;
    btnCDI: TJvImgBtn;
    clbPackages: TJvCheckListBox;
    pcPackageInfo: TPageControl;
    tbsComment: TTabSheet;
    tbsDescription: TTabSheet;
    memPackageComment: TJvRichEdit;
    memPackageDescription: TJvRichEdit;
    tbsScreenshot: TTabSheet;
    btnMakeDisc: TJvImgBtn;
    Panel9: TPanel;
    pnlCDR: TPanel;
    lblTitleCDR: TJvLabel;
    btnMakeCDR: TJvImgBtn;
    btnCDRBack: TJvImgBtn;
    gbxDiscLabelCDR: TJvGroupBox;
    edtCDRVolumeName: TEdit;
    Panel8: TPanel;
    pnlPackagesScreenshot: TPanel;
    imgPackageScreenshot: TImage;
    ppmPackages: TPopupMenu;
    miSelectItem: TMenuItem;
    miUnselect: TMenuItem;
    N1: TMenuItem;
    miLocateOnDisk: TMenuItem;
    iltLittleIcons: TImageList;
    tbsConfig: TTabSheet;
    tbsHelpAbout: TTabSheet;
    pnlConfig: TPanel;
    lblTitleConfig: TJvLabel;
    gbxISO9660: TGroupBox;
    cbxJoliet: TCheckBox;
    cbxRockRidge: TCheckBox;
    gbxStructure: TGroupBox;
    cbxAutoDummy: TCheckBox;
    gbxTempDir: TGroupBox;
    gbxMRLogo: TGroupBox;
    pnlHelpAbout: TPanel;
    btnBackConfig: TJvImgBtn;
    btnBackHelpAbout: TJvImgBtn;
    edtWorkDir: TEdit;
    btnWorkDirBrowse: TButton;
    btnMRLoad: TJvImgBtn;
    cbxMRLogo: TCheckBox;
    pnlMRLogo: TPanel;
    imgMRLogo: TImage;
    btnMRPreview: TJvImgBtn;
    btnMRSave: TJvImgBtn;
    opdMR: TOpenPictureDialog;
    btnBrowseSbi: TJvImgBtn;
    btnWorkDirDefault: TButton;
    bfdWorkDir: TJvBrowseForFolderDialog;
    memCDI: TJvRichEdit;
    memNRG: TJvRichEdit;
    memMDS: TJvRichEdit;
    memCDR: TJvRichEdit;
    btnCleanDiscRoot: TJvImgBtn;
    sdCDI: TSaveDialog;
    sdNRG: TSaveDialog;
    sdMDS: TSaveDialog;
    btnMRClear: TJvImgBtn;
    spdMR: TSavePictureDialog;
    aeMain: TApplicationEvents;
    btnMRCheck: TJvImgBtn;
    Label4: TLabel;
    tbsDebug: TTabSheet;
    gbxDriveCDR: TGroupBox;
    cbxDrivesCDR: TComboBox;
    btnRefreshDrivesCDR: TJvImgBtn;
    lblBurnSpeedCDR: TLabel;
    cbxBurnSpeedCDR: TComboBox;
    Label5: TLabel;
    Bevel4: TBevel;
    Label6: TLabel;
    cbxLongFileNames: TCheckBox;
    memHelp: TJvRichEdit;
    btnAbout: TJvImgBtn;
    rgpCDRStructureType: TJvRadioGroup;
    pnlDebug: TPanel;
    btnDebugEnableActionState: TButton;
    btnDebugPrintDrives: TButton;
    btnDebugGenerateHeaderIso: TButton;
    cbxBootstrapFileSystem: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnCDIClick(Sender: TObject);
    procedure btnCDIBackClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure clbPackagesClick(Sender: TObject);
    procedure clbPackagesClickCheck(Sender: TObject);
    procedure memPackageCommentURLClick(Sender: TObject; const URLText: string;
      Button: TMouseButton);
    procedure btnQuitClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnUnselectAllClick(Sender: TObject);
    procedure cbxFilterChange(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnUnselectClick(Sender: TObject);
    procedure miLocateOnDiskClick(Sender: TObject);
    procedure clbPackagesContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure btnMakeDiscClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnHelpAboutClick(Sender: TObject);
    procedure btnMRLoadClick(Sender: TObject);
    procedure cbxMRLogoClick(Sender: TObject);
    procedure cbxMenuTypeClick(Sender: TObject);
    procedure edtCDIVolumeNameChange(Sender: TObject);
    procedure rgpCDIStructureTypeClick(Sender: TObject);
    procedure rgpNRGImageTypeClick(Sender: TObject);
    procedure btnBrowseSbiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxJolietClick(Sender: TObject);
    procedure cbxRockRidgeClick(Sender: TObject);
    procedure cbxAutoDummyClick(Sender: TObject);
    procedure btnWorkDirBrowseClick(Sender: TObject);
    procedure btnWorkDirDefaultClick(Sender: TObject);
    procedure edtWorkDirChange(Sender: TObject);
    procedure btnCleanDiscRootClick(Sender: TObject);
    procedure btnMakeCDIClick(Sender: TObject);
    procedure btnMRClearClick(Sender: TObject);
    procedure btnMRSaveClick(Sender: TObject);
    procedure btnMRPreviewClick(Sender: TObject);
    procedure btnMRCheckClick(Sender: TObject);
    procedure btnDebugPrintDrivesClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnRefreshDrivesCDRClick(Sender: TObject);
    procedure btnMakeCDRClick(Sender: TObject);
    procedure cbxLongFileNamesClick(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure btnDebugEnableActionStateClick(Sender: TObject);
    procedure btnDebugGenerateHeaderIsoClick(Sender: TObject);
    procedure cbxBootstrapFileSystemClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées }
    fDummyPackageListItem: TPackageListItem;
    fPackageFilter: TPackageKind;
    fExitRequest: Boolean;
{$IFDEF DEBUG}
    procedure DebugPrintDrives;
    procedure DebugPrintPackagesList;
{$ENDIF}
    function CheckPrerequist: Boolean; overload;
    function CheckPrerequist(const OutputFileName: TFileName): Boolean; overload;
    procedure CDRecordLoadDrives;
    procedure ChangeActionsControlsState(State: Boolean);
    procedure ChangeMRLogoControlsState(State: Boolean);
    procedure ChangePackageSelectControlsState(State: Boolean);
    procedure ChangePackagesViewSelectedState(State: Boolean);
    function CheckConfig: Boolean;
    function CheckSelectedBootstrapLogo(ShowSuccessMessage: Boolean = False): Boolean;
    procedure ClearPackageInfo;
    procedure EngineBootstrapFileLoaded(Sender: TObject);
    procedure EngineMakeDiscStart(Sender: TObject);
    procedure EngineMakeDiscStatus(Sender: TObject; StatusMessage: string);
    procedure EngineMakeDiscEnd(Sender: TObject; Success: Boolean;
      OutputFileName: TFileName);
    procedure EnginePackageScanStart(Sender: TObject; ScanMode: TPackageScanMode);
    procedure EnginePackageItemFound(Sender: TObject; Item: TPackageListItem; ItemIndex: Integer; NewItem: Boolean);
    procedure EnginePackageScanEnd(Sender: TObject);
    procedure EnginePrepareDiscStart(Sender: TObject);
    procedure EnginePrepareDiscItemProceed(Sender: TObject; PackageName: string;
      FileName: TFileName);
    procedure EnginePrepareDiscEnd(Sender: TObject);
    procedure EngineResetDiscEnd(Sender: TObject);
    procedure Initialize;
    procedure Finalize;
    procedure LoadPackageInfo(Item: TPackageListItem);
    function GetMakingMethodString: string;
    function GetPackageSelectedItem: TPackageListItem;
    function GetPackageSelectedItemIndex: Integer;
    procedure ReadConfig;
    procedure SaveConfig;
    property DummyPackageListItem: TPackageListItem read fDummyPackageListItem;
  public
    { Déclarations publiques }
    procedure ChangeMainPage(Page: TTabSheet);
    function MsgBox(Text, Title: string; Flags: Integer): Integer;
    property ExitRequest: Boolean read fExitRequest write fExitRequest;

    property PackageFilter: TPackageKind read fPackageFilter;
    property PackageSelectedItem: TPackageListItem read GetPackageSelectedItem;
    property PackageSelectedItemIndex: Integer read GetPackageSelectedItemIndex;
  end;

var
  frmMain: TfrmMain;
  SelfbootInducerEngine: TSelfbootInducerEngine;
  Configuration: TXMLConfigurationFile;

implementation

uses
  SysTools, UITools, FileCtrl, CslMgr, MRImage, WorkDir, MRView, CDRecord,
  About, IOUtils;

const
  IMAGES_FORMAT: array[0..3] of string = ('CDI', 'NRG', 'MDS', 'CDR');

{$R *.dfm}

procedure TfrmMain.btnHelpAboutClick(Sender: TObject);
begin
  ChangeMainPage(tbsHelpAbout);
end;

procedure TfrmMain.btnBrowseSbiClick(Sender: TObject);
begin
  OpenWindowsExplorer(SelfbootInducerEngine.Directories.Packages);
end;

procedure TfrmMain.btnCDIBackClick(Sender: TObject);
begin
  ChangeMainPage(tbsPackages);
end;

procedure TfrmMain.btnCDIClick(Sender: TObject);
var
  TabSheetName: string;
  TabSheet: TTabSheet;
  Button: TJvImgBtn;
begin
  Button := (Sender as TJvImgBtn);
  TabSheetName := StringReplace(Button.Name, 'btn', 'tbs', []);
  TabSheet := FindComponent(TabSheetName) as TTabSheet;
  if Assigned(TabSheet) then
    ChangeMainPage(TabSheet);
end;

procedure TfrmMain.btnCleanDiscRootClick(Sender: TObject);
var
  CanDo: Integer;

begin
  CanDo := MsgBox('This will clean the disc root directory !', 'Warning',
    MB_ICONWARNING + MB_OKCANCEL);
  if CanDo = IDCANCEL then Exit;
  SelfbootInducerEngine.ResetDisc;
end;

procedure TfrmMain.btnConfigClick(Sender: TObject);
begin
  ChangeMainPage(tbsConfig);
end;

procedure TfrmMain.btnMakeCDIClick(Sender: TObject);
var
  SD: TSaveDialog;
  ImgFormat: string;
  MM: TMakeDiscMethod;
  VN: TEdit;

begin
  ImgFormat := StringReplace((Sender as TJvImgBtn).Name, 'btnMake', '', []);
  SD := FindComponent('sd' + ImgFormat) as TSaveDialog;
  MM := TMakeDiscMethod((Sender as TJvImgBtn).Tag);
  VN := FindComponent('edt' + ImgFormat + 'VolumeName') as TEdit;
  if not Assigned(SD) or not Assigned(VN) then Exit;

  with SD do
  begin
    FileName := StringReplace(LowerCase(VN.Text), ' ', '_', [rfReplaceAll]);
    if Execute and CheckPrerequist(FileName) then
    begin
      ChangeActionsControlsState(False);
      SelfbootInducerEngine.MakeDiscImage(MM, FileName);
    end;
  end;
end;

procedure TfrmMain.btnMakeCDRClick(Sender: TObject);
var
  CanDo: Integer;

begin
  CanDo := MsgBox('You are about to burn the compilation to a CD-R. ' +
    'Insert a blank CD-R in the drive, then click OK to launch the burning process.',
    'Burn the compilation ?', MB_ICONQUESTION + MB_OKCANCEL + MB_DEFBUTTON2);
  if CanDo = IDCANCEL then Exit;

  if CheckPrerequist then
  begin
    with SelfbootInducerEngine.CDRecordEngine do
    begin
      Drives.BurnSpeed := TBurnSpeed(cbxBurnSpeedCDR.ItemIndex);
      Drives.SelectedIndex := cbxDrivesCDR.ItemIndex;
    end;
    SelfbootInducerEngine.BurnDisc;
  end;
end;

procedure TfrmMain.btnMakeDiscClick(Sender: TObject);
var
  CanDo: Integer;

begin
{$IFDEF DEBUG}
  DebugPrintPackagesList;
{$ENDIF}

  if CheckConfig then
    if SelfbootInducerEngine.MenuMode = mmSbi2Boot then
    begin

      if PackageSelectedItemIndex = -1 then
      begin
        MsgBox('Select a package in the right list.', 'Slow down!', MB_ICONWARNING);
        Exit;
      end;

      CanDo := MsgBox(Format('This will convert "%s" to a selfboot disc. Continue ?', [PackageSelectedItem.Name]), 'Proceed ?', MB_ICONQUESTION +
        MB_OKCANCEL + MB_DEFBUTTON2);
      if CanDo = IDCANCEL then Exit;

      SelfbootInducerEngine.PrepareDisc(PackageSelectedItemIndex);
    end else begin
      CanDo := MsgBox('Extract all selected packages and prepare the disc structure ?', 'Proceed ?', MB_ICONQUESTION +
        MB_OKCANCEL + MB_DEFBUTTON2);
      if CanDo = IDCANCEL then Exit;

      SelfbootInducerEngine.PrepareDisc;
    end;
end;

procedure TfrmMain.btnMRCheckClick(Sender: TObject);
begin
  CheckSelectedBootstrapLogo(True);
end;

procedure TfrmMain.btnMRClearClick(Sender: TObject);
var
  CanDo: Integer;

begin
  CanDo := MsgBox('This will clear the selected logo for the bootstrap (IP.BIN) ... Continue?',
    'Watch out!!', MB_ICONWARNING + MB_OKCANCEL);
  if CanDo = IDCANCEL then Exit;
  SelfbootInducerEngine.BootstrapLogo.Clear;
  ChangeMRLogoControlsState(False);
  imgMRLogo.Picture.Bitmap.Assign(nil);
  pnlMRLogo.Caption := '(No Logo)';
end;

procedure TfrmMain.btnMRLoadClick(Sender: TObject);
begin
  if opdMR.Execute then
    with SelfbootInducerEngine.BootstrapLogo do
      LoadFromFile(opdMR.FileName);
end;

procedure TfrmMain.btnMRPreviewClick(Sender: TObject);
begin
  frmLogoPreview := TfrmLogoPreview.Create(Application);
  try
    with frmLogoPreview do
    begin
      IpLogo := imgMRLogo.Picture;
      ShowModal;
    end;
  finally
    frmLogoPreview.Free;
  end;
end;

procedure TfrmMain.btnMRSaveClick(Sender: TObject);
begin
  spdMR.FileName := ChangeFileExt(spdMR.FileName, '');
  if spdMR.Execute then
    with SelfbootInducerEngine.BootstrapLogo do
      SaveToFile(spdMR.FileName);
end;

procedure TfrmMain.btnQuitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.btnRefreshClick(Sender: TObject);
var
  i: Integer;

begin
  // Retrive packages
  i := clbPackages.ItemIndex;
  SelfbootInducerEngine.Packages.Refresh;
  if (i > -1) and (i < clbPackages.Items.Count) then
  begin
    clbPackages.ItemIndex := i; // reselect the old item...
    clbPackagesClick(Self);
  end;
end;

procedure TfrmMain.btnRefreshDrivesCDRClick(Sender: TObject);
begin
  SelfbootInducerEngine.CDRecordEngine.Drives.Refresh;
  CDRecordLoadDrives;
  Console.PrintSuccess('Drives retrieved.');
end;

procedure TfrmMain.btnSelectAllClick(Sender: TObject);
begin
  ChangePackagesViewSelectedState(True);
end;

procedure TfrmMain.btnSelectClick(Sender: TObject);
begin
  clbPackages.Checked[clbPackages.ItemIndex] := True;
  PackageSelectedItem.Selected := True;
end;

procedure TfrmMain.btnUnselectAllClick(Sender: TObject);
begin
  ChangePackagesViewSelectedState(False);
end;

procedure TfrmMain.btnUnselectClick(Sender: TObject);
begin
  clbPackages.Checked[clbPackages.ItemIndex] := False;
  PackageSelectedItem.Selected := False;
end;

procedure TfrmMain.btnWorkDirBrowseClick(Sender: TObject);
begin
  with bfdWorkDir do
  begin
    Directory := edtWorkDir.Text;
    if Execute then
      edtWorkDir.Text := Directory;
  end;
end;

procedure TfrmMain.btnWorkDirDefaultClick(Sender: TObject);
var
  CanDo: Integer;

begin
  CanDo := MsgBox('Restore default temporary directory?', 'Question', MB_ICONQUESTION + MB_OKCANCEL);
  if CanDo = IDCANCEL then Exit;
  edtWorkDir.Text := GetWorkingTempDirectory;
  edtWorkDir.SelectAll;
end;

procedure TfrmMain.btnDebugGenerateHeaderIsoClick(Sender: TObject);
begin
{$IFDEF DEBUG}
  SelfbootInducerEngine.CDRecordEngine.GenerateBootableDataTrack('test.iso');
{$ENDIF}
end;

procedure TfrmMain.btnDebugEnableActionStateClick(Sender: TObject);
begin
{$IFDEF DEBUG}
  ChangeActionsControlsState(Boolean(btnDebugEnableActionState.Tag));
  btnDebugEnableActionState.Tag := not btnDebugEnableActionState.Tag;
{$ENDIF}
end;

procedure TfrmMain.btnDebugPrintDrivesClick(Sender: TObject);
begin
{$IFDEF DEBUG} DebugPrintDrives; {$ENDIF}
end;

procedure TfrmMain.cbxAutoDummyClick(Sender: TObject);
begin
  SelfbootInducerEngine.Options.AutoDummy := cbxAutoDummy.Checked;
end;

procedure TfrmMain.cbxBootstrapFileSystemClick(Sender: TObject);
begin
  SelfbootInducerEngine.Options.BootstrapInFileSystem := cbxBootstrapFileSystem.Checked;
end;

procedure TfrmMain.cbxFilterChange(Sender: TObject);
begin
  fPackageFilter := TPackageKind(cbxFilter.ItemIndex);
  SelfbootInducerEngine.Packages.Refresh;
end;

procedure TfrmMain.cbxLongFileNamesClick(Sender: TObject);
begin
  SelfbootInducerEngine.Options.LongFileNames := cbxLongFileNames.Checked;
end;

procedure TfrmMain.cbxJolietClick(Sender: TObject);
begin
  SelfbootInducerEngine.Options.Joliet := cbxJoliet.Checked;
end;

procedure TfrmMain.cbxMenuTypeClick(Sender: TObject);
begin
  SelfbootInducerEngine.MenuMode := TMenuMode(cbxMenuType.ItemIndex);
end;

procedure TfrmMain.cbxMRLogoClick(Sender: TObject);
begin
  if (cbxMRLogo.Enabled) then
  begin
    btnMRLoad.Enabled := cbxMRLogo.Checked;
    pnlMRLogo.Enabled := cbxMRLogo.Checked;
    imgMRLogo.Enabled := cbxMRLogo.Checked;
    SelfbootInducerEngine.Options.IpLogo := cbxMRLogo.Checked;
    ChangeMRLogoControlsState(cbxMRLogo.Checked and SelfbootInducerEngine.BootstrapLogo.Loaded);
  end;
end;

procedure TfrmMain.cbxRockRidgeClick(Sender: TObject);
begin
  SelfbootInducerEngine.Options.RockRidge := cbxRockRidge.Checked;
end;

procedure TfrmMain.ChangeMainPage(Page: TTabSheet);
begin
  if (pclMain.ActivePage = tbsConfig) and (Page <> tbsConfig) then
    if not CheckConfig then Exit;
  pclMain.ActivePage := Page;
end;

procedure TfrmMain.ChangeMRLogoControlsState(State: Boolean);
begin
  btnMRPreview.Enabled := State;
  btnMRCheck.Enabled := State;
  btnMRClear.Enabled := State;
  btnMRSave.Enabled := State;
end;

procedure TfrmMain.ChangePackageSelectControlsState(State: Boolean);
begin
  btnSelect.Enabled := State;
  btnUnselect.Enabled := State;
  if State then
    clbPackages.PopupMenu := ppmPackages
  else
    clbPackages.PopupMenu := nil;
end;

procedure TfrmMain.ChangePackagesViewSelectedState(State: Boolean);
var
  i, j: Integer;

begin
  // Change State in the View
  if State then
    clbPackages.CheckAll
  else
    clbPackages.UnCheckAll;

  // Change State in the Model
  for i := 0 to clbPackages.Items.Count - 1 do
  begin
    j := Integer(clbPackages.Items.Objects[i]);
    SelfbootInducerEngine.Packages[j].Selected := State;
  end;
end;

procedure TfrmMain.CDRecordLoadDrives;
var
  i, j: Integer;

begin
  j := cbxDrivesCDR.ItemIndex;

  // Get the drives...
  cbxDrivesCDR.Items.Clear;
  with SelfbootInducerEngine.CDRecordEngine do
    for i := 0 to Drives.Count - 1 do
      cbxDrivesCDR.Items.Add(
        '[' + Drives[i].Code + '] ' +
        Drives[i].Manufacturer + ' ' +
        Drives[i].Model + ' ' +
        Drives[i].FirmwareVersion
      );

  // Select the previous selected item (or the first instead)
  if (cbxDrivesCDR.Items.Count > 0) then
    if (j > -1) and (j < cbxDrivesCDR.Items.Count) then
      cbxDrivesCDR.ItemIndex := j
    else
      cbxDrivesCDR.ItemIndex := 0;
end;

procedure TfrmMain.ChangeActionsControlsState(State: Boolean);
const
  CONTROLS_REF: array[0..14] of string = (
    'pnlConfig', 'pnlPackages', 'gbxISO9660', 'gbxStructure',
    'gbxTempDir', 'gbxMRLogo', 'pnlCDI', 'pnlNRG', 'pnlMDS', 'pnlCDR',
    'gbxDriveCDR', 'gbxDiscLabelCDI', 'gbxDiscLabelNRG', 'gbxDiscLabelMDS',
    'gbxDiscLabelCDR'
  );

  CONTROLS_REF_EXCLUDE: array[0..9] of string = (
    'btnBack', 'lblTitle', 'btnCDIBack', 'btnNRGBack', 'btnMDSBack',
    'btnCDRBack', 'lblTitleCDI', 'lblTitleNRG', 'lblTitleMDS', 'lblTitleCDR'
  );

var
  i, j, k: Integer;
  C: TWinControl;
  Exclude: Boolean;
begin
  btnMakeDisc.Enabled := State;
  btnMakeCDI.Enabled := State;
  btnMakeMDS.Enabled := State;
  btnMakeNRG.Enabled := State;
  btnMakeCDR.Enabled := State;
  btnCleanDiscRoot.Enabled := State;
  cbxMenuType.Enabled := State;
  for i := Low(CONTROLS_REF) to High(CONTROLS_REF) do
  begin
    C := FindComponent(CONTROLS_REF[i]) as TWinControl;
    if Assigned(C) then
      for j := 0 to C.ControlCount - 1 do
      begin
        Exclude := False;
        for k := Low(CONTROLS_REF_EXCLUDE) to High(CONTROLS_REF_EXCLUDE) do
          Exclude := Exclude or InString(CONTROLS_REF_EXCLUDE[k], C.Controls[j].Name);
        if not Exclude then
          C.Controls[j].Enabled := State;
      end;
  end;
  cbxMRLogoClick(Self);
end;

function TfrmMain.CheckConfig: Boolean;
begin
  Result := TDirectory.Exists(edtWorkDir.Text);
  if not Result then
  begin
    MsgBox('No such path found.', 'Warning', MB_ICONWARNING);
    ChangeMainPage(tbsConfig);
    edtWorkDir.SelectAll;
    edtWorkDir.SetFocus;
  end;
end;

function TfrmMain.CheckPrerequist: Boolean;
begin
  Result := CheckPrerequist('');
end;

function TfrmMain.CheckPrerequist(const OutputFileName: TFileName): Boolean;
var
  CanDo: Integer;
  DiscRootSize, TempSpaceSize: Int64;
  Drive: Char;

  function __CheckFile(const DreamcastFileName: TFileName): Boolean;
  begin
    Result := TFile.Exists(SelfbootInducerEngine.Directories.DiscRoot +
      DreamcastFileName);
  end; // __CheckDreamcastFile

begin
  Result := False;

  // Check if we can delete the output file!
  if (OutputFileName <> '') and (not KillFile(OutputFileName)) then
  begin
    MsgBox('Unable to write the output file !', 'H*ly sh*t !', MB_ICONERROR);
    Exit;
  end;

  // Check if there is an IP.BIN in the cd_root folder...
  if not __CheckFile(SFILE_DC_BOOTSTRAP)  then
  begin
    MsgBox('Required Dreamcast bootstrap ("' + SFILE_DC_BOOTSTRAP
      + '") not found in the disc root directory !', 'Failure !', MB_ICONERROR);
    Exit;
  end;

  // Check if there is an 1ST_READ.BIN in the cd_root folder...
  if not __CheckFile(SFILE_DC_BOOT_BINARY) then
  begin
    MsgBox('Required Dreamcast main binary ("' + SFILE_DC_BOOT_BINARY
      + '") not found in the disc root directory !', 'Failure !', MB_ICONERROR);
    Exit;
  end;

  // Check if the IP.BIN logo is enabled but not selected...
  if SelfbootInducerEngine.Options.IpLogo and
    (not SelfbootInducerEngine.BootstrapLogo.Loaded) then
  begin
    CanDo := MsgBox('The boostrap logo is enabled but no logo was selected... Continue ?',
      'Oh well...', MB_ICONWARNING + MB_OKCANCEL);
    if CanDo = IDCANCEL then Exit;
    cbxMRLogo.Checked := False;
  end;

  // Check if the selected IP.BIN logo is correct!
  if SelfbootInducerEngine.Options.IpLogo then
    if not CheckSelectedBootstrapLogo then Exit;

  // Check if the temporary directory exists (yeah normally!)
  if not TDirectory.Exists(SelfbootInducerEngine.Directories.Temporary) then
  begin
    MsgBox('The selected temporary directory doesn''t exists !', 'Fatal error !', MB_ICONERROR);
    Exit;
  end;

  // Get the disc_root size, and check if we'll have the good space to do it!
  DiscRootSize := GetDirectorySize(SelfbootInducerEngine.Directories.DiscRoot);
  Drive := TPath.GetPathRoot(SelfbootInducerEngine.Directories.Temporary)[1];
  TempSpaceSize := GetDiscFreeSpace(Drive);
  if TempSpaceSize < DiscRootSize then
  begin
    MsgBox('The selected temporary directory is located on a drive without enough free space !',
      'No enough free space !', MB_ICONERROR);
    Exit;
  end;

  Result := True;
end;

function TfrmMain.CheckSelectedBootstrapLogo(ShowSuccessMessage: Boolean): Boolean;
var
  TempMR: TFileName;

begin
  Result := False;
  TempMR := ChangeFileExt(GetWorkingTempFileName, '.mr');
  try
    SelfbootInducerEngine.BootstrapLogo.SaveToFile(TempMR);
    Result := FileExists(TempMR);
    if Result then
    begin
      if ShowSuccessMessage then
        MsgBox('The selected logo can fit properly in the bootstrap executable.', 'Whoohoo!', MB_ICONINFORMATION);
      DeleteFile(TempMR);
    end else
      MsgBox('The selected logo seems to be correct, but an unknow error occured...', 'Oh sh*t...', MB_ICONERROR);
  except
    on E:EMRFile do
      MsgBox('The selected logo is incorrect. Reason: "' + E.Message + '".', 'Holy sh*t...', MB_ICONWARNING);
    on E:Exception do
      MsgBox('Unable to determinate if the logo is correct... Reason: "' + E.Message + '".', 'Error!', MB_ICONERROR);
  end;
end;

procedure TfrmMain.clbPackagesClick(Sender: TObject);
begin
  // Load package information in the panel...
  LoadPackageInfo(PackageSelectedItem);
end;

procedure TfrmMain.clbPackagesClickCheck(Sender: TObject);
begin
  PackageSelectedItem.Selected := clbPackages.Checked[clbPackages.ItemIndex];
end;

procedure TfrmMain.clbPackagesContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  DoRightClickSelection;
end;

procedure TfrmMain.ClearPackageInfo;
begin
  LoadPackageInfo(DummyPackageListItem);
end;

{$IFDEF DEBUG}

procedure TfrmMain.DebugPrintDrives;
var
  CDR: TCDRecordEngine;
  i: Integer;

begin
  CDR := TCDRecordEngine.Create(GetApplicationDirectory + 'engine\cdrecord.exe');
  try
//    CDR.Drives.Refresh;
    for i := 0 to CDR.Drives.Count - 1 do
      WriteLn(
        'MK="', CDR.Drives[i].Manufacturer, '" ',
        'MD="', CDR.Drives[i].Model, '" ',
        'FV="', CDR.Drives[i].FirmwareVersion, '" ',
        'CD="', CDR.Drives[i].Code, '"'
      );
  finally
    CDR.Free;
  end;
end;

procedure TfrmMain.DebugPrintPackagesList;
var
  i: Integer;

begin
  for i := 0 to SelfbootInducerEngine.Packages.Count - 1 do
    WriteLn(SelfbootInducerEngine.Packages[i].Name, ': ',
      SelfbootInducerEngine.Packages[i].Selected, ', A=',
      SelfbootInducerEngine.Packages[i].Available);
  WriteLn('');
end;

{$ENDIF}

procedure TfrmMain.edtCDIVolumeNameChange(Sender: TObject);
var
  CurrentEdit, OriginalEdit: TEdit;
  i: Integer;

begin
  CurrentEdit := Sender as TEdit;
  SelfbootInducerEngine.Options.VolumeLabel := CurrentEdit.Text;
  for i := Low(IMAGES_FORMAT) to High(IMAGES_FORMAT) do
  begin
    OriginalEdit := FindComponent('edt' + IMAGES_FORMAT[i] + 'VolumeName') as TEdit;
    OriginalEdit.Text :=  CurrentEdit.Text;
  end;
end;

procedure TfrmMain.edtWorkDirChange(Sender: TObject);
begin
  SelfbootInducerEngine.Directories.Temporary := edtWorkDir.Text
end;

procedure TfrmMain.EngineBootstrapFileLoaded(Sender: TObject);
begin
  pnlMRLogo.Caption := '';
  ChangeMRLogoControlsState(cbxMRLogo.Checked);
  SelfbootInducerEngine.BootstrapLogo.Render(imgMRLogo.Picture.Bitmap);
end;

procedure TfrmMain.EngineMakeDiscEnd(Sender: TObject; Success: Boolean;
  OutputFileName: TFileName);
var
  S: string;
  CanDo: Integer;

begin
  if ExitRequest then Exit;
  S := GetMakingMethodString;
  if Success then
  begin
    // Success ! Yeah !
    Console.PrintSuccess(Format('%s process completed !', [S]));
    if SelfbootInducerEngine.MakingMethod <> mdmCDR then
    begin
      CanDo := MsgBox('Disc image generation completed. Open the destination folder ?', 'Yeah!', MB_ICONQUESTION + MB_OKCANCEL);
      if CanDo = IDOK then
        LocateFileOnDisk(OutputFileName);
    end;
  end else
    Console.PrintError(Format('%s process completed with errors !', [S]));

  // Enable buttons...
  ChangeActionsControlsState(True);
end;

procedure TfrmMain.EngineMakeDiscStart(Sender: TObject);
begin
  ChangeActionsControlsState(False);
  Console.PrintHeader(Format('Starting %s process...', [GetMakingMethodString]));
end;

procedure TfrmMain.EngineMakeDiscStatus(Sender: TObject; StatusMessage: string);
begin
  Console.PrintHeader(StatusMessage);
end;

procedure TfrmMain.EnginePackageItemFound(Sender: TObject;
  Item: TPackageListItem; ItemIndex: Integer; NewItem: Boolean);
var
  i: Integer;

begin
  if (PackageFilter = pkUndef) or (PackageFilter = Item.Kind) then
  begin
    i := clbPackages.Items.AddObject(Item.Name, TObject(ItemIndex));
    clbPackages.Checked[i] := Item.Selected;
  end;
end;

procedure TfrmMain.EnginePackageScanEnd(Sender: TObject);
begin
  if (clbPackages.ItemIndex = -1) and (clbPackages.Items.Count > 0) then
    clbPackages.ItemIndex := 0; // select the first
  clbPackagesClick(Self);
end;

procedure TfrmMain.EnginePackageScanStart(Sender: TObject;
  ScanMode: TPackageScanMode);
begin
  ClearPackageInfo;
  clbPackages.Clear;
end;

procedure TfrmMain.EnginePrepareDiscEnd(Sender: TObject);
var
  CanDo: Integer;

begin
  if ExitRequest then Exit;
  Console.PrintSuccess('Disc structure preparation completed.');
  CanDo := MsgBox('Open the disc root directory ?', 'Question', MB_ICONQUESTION
    + MB_OKCANCEL);
  ChangeActionsControlsState(True);
  if CanDo = IDCANCEL then Exit;
  OpenWindowsExplorer(SelfbootInducerEngine.Directories.DiscRoot);
end;

procedure TfrmMain.EnginePrepareDiscItemProceed(Sender: TObject;
  PackageName: string; FileName: TFileName);
begin
  Console.PrintOperationItem('Extracting', PackageName + ' [' + FileName + ']');
end;

procedure TfrmMain.EnginePrepareDiscStart(Sender: TObject);
begin
  ChangeActionsControlsState(False);
  Console.PrintHeader('Preparing disc structure...');
end;

procedure TfrmMain.EngineResetDiscEnd(Sender: TObject);
begin
  Console.PrintSuccess('Disc root directory cleaned.');
end;

procedure TfrmMain.Finalize;
begin
  SaveConfig;
  Configuration.WriteFormAttributes(Self);
  Configuration.Free;
  SelfbootInducerEngine.Free;
  DummyPackageListItem.Free;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  CanDo: Integer;

begin
  if SelfbootInducerEngine.Busy then
  begin
    CanDo := MsgBox('Selfboot Inducer is busy... Force Exit ?', 'Warning !',
      MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON2);
    if CanDo = IDNO then
    begin
      Action := caNone;
      Exit;
    end;
  end;
  ExitRequest := True;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Initialize;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  Finalize;
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(VK_ESCAPE) then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfrmMain.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{$IFDEF DEBUG}
  if (Shift = [ssCtrl]) and (Key = Ord('D')) then
    ChangeMainPage(tbsDebug);
{$ENDIF}
end;

function TfrmMain.GetMakingMethodString: string;
begin
  case SelfbootInducerEngine.MakingMethod of
    mdmCDI: Result := 'DiscJuggler';
    mdmNRG: Result := 'Nero Burning Rom';
    mdmMDS: Result := 'Alcohol 120%';
    mdmCDR: Result := 'CDRecord';
  end;
end;

function TfrmMain.GetPackageSelectedItem: TPackageListItem;
var
  i: Integer;

begin
  i := PackageSelectedItemIndex;
  Result := DummyPackageListItem;
  if i <> -1 then
    Result := SelfbootInducerEngine.Packages[i];
end;

function TfrmMain.GetPackageSelectedItemIndex: Integer;
var
  i: Integer;

begin
  Result := -1;
  i := clbPackages.ItemIndex;
  if (i <> Result) then
    Result := Integer(clbPackages.Items.Objects[i]);
end;

procedure TfrmMain.Initialize;
var
  i: Integer;
  MemoCtrl: TJvRichEdit;

begin
{$IFDEF DEBUG}
  Application.Title := Application.Title + ' *DEBUG BUILD*';
{$ENDIF}

  // Init Console
  Console := TConsole.Create;

  // Init User Interface
  Caption := Application.Title;
  fDummyPackageListItem := TPackageListItem.Create;
  for i := 0 to pclMain.PageCount - 1 do
    pclMain.Pages[i].TabVisible := False;
  ChangeMainPage(tbsPackages);
  Height := Height - 20;
  pcPackageInfo.ActivePage := tbsComment;
  fPackageFilter := pkUndef;
  ExitRequest := False;
  for i := Low(IMAGES_FORMAT) to High(IMAGES_FORMAT) do
  begin
    MemoCtrl := FindComponent('mem' + IMAGES_FORMAT[i]) as TJvRichEdit;
    if Assigned(MemoCtrl) then
      LoadTextResource(MemoCtrl, 'TEXT' + IMAGES_FORMAT[i]);
  end;
  LoadTextResource(memHelp, 'TEXTHELP');

  // Init Configuration
  Configuration := TXMLConfigurationFile.Create;
  Configuration.ReadFormAttributes(Self);

  // Init Engine
  SelfbootInducerEngine := TSelfbootInducerEngine.Create;
  with SelfbootInducerEngine do
  begin
    Packages.OnPackageScanStart := EnginePackageScanStart;
    Packages.OnPackageScanItemFound := EnginePackageItemFound;
    Packages.OnPackageScanEnd := EnginePackageScanEnd;
    OnPrepareDiscStart := EnginePrepareDiscStart;
    OnPrepareDiscItemProceed := EnginePrepareDiscItemProceed;
    OnPrepareDiscEnd := EnginePrepareDiscEnd;
    OnResetDiscEnd := EngineResetDiscEnd;
    OnMakeDiscStart := EngineMakeDiscStart;
    OnMakeDiscStatus := EngineMakeDiscStatus;
    OnMakeDiscEnd := EngineMakeDiscEnd;
    BootstrapLogo.OnFileLoaded := EngineBootstrapFileLoaded;
    ReadConfig;
    Packages.Retrieve;
  end;

  // Load CDRecord Drives
  CDRecordLoadDrives;
end;

procedure TfrmMain.btnAboutClick(Sender: TObject);
begin
  frmAbout := TfrmAbout.Create(Application);
  try
    frmAbout.ShowModal;
  finally
    frmAbout.Free;
  end;
end;

procedure TfrmMain.rgpNRGImageTypeClick(Sender: TObject);
begin
  SelfbootInducerEngine.Options.DiscImageType := TDiscImageType(rgpNRGImageType.ItemIndex);
end;

procedure TfrmMain.rgpCDIStructureTypeClick(Sender: TObject);
var
  CurrentRG, OriginalRG: TRadioGroup;
  i: Integer;

begin
  CurrentRG := Sender as TRadioGroup;
  SelfbootInducerEngine.Options.DiscTrackType := TDiscTrackType(CurrentRG.ItemIndex);
  for i := Low(IMAGES_FORMAT) to High(IMAGES_FORMAT) do
  begin
    OriginalRG := FindComponent('rgp' + IMAGES_FORMAT[i] + 'StructureType') as TRadioGroup;
    if Assigned(OriginalRG) then
      OriginalRG.ItemIndex := CurrentRG.ItemIndex;
  end;
end;

procedure TfrmMain.SaveConfig;
begin
  with SelfbootInducerEngine do
  begin
    // Joliet
    Configuration.WriteBool('iso9660', 'joliet', Options.Joliet);

    // RockRidge
    Configuration.WriteBool('iso9660', 'rockridge', Options.RockRidge);

    // Long FileNames
    Configuration.WriteBool('iso9660', 'longfilenames', Options.LongFileNames);

    // Working Directory
    Configuration.WriteDirectoryPath('temp', 'workdir', Directories.Temporary);

    // Auto-Dummy
    Configuration.WriteBool('structure', 'autodummy', Options.AutoDummy);

    // Bootstrap in the file system
    Configuration.WriteBool('structure', 'bootstrapfs', Options.BootstrapInFileSystem);

    // Bootstrap (IP.BIN) Logo
    Configuration.WriteBool('bootstraplogo', 'enabled', Options.IpLogo);
    Configuration.WriteString('bootstraplogo', 'filename', BootstrapLogo.LoadedFileName);

    // Image Generation Options
    Configuration.WriteString('discimage', 'volumelabel', Options.VolumeLabel);
    Configuration.WriteInteger('discimage', 'imagetype', Integer(Options.DiscImageType));
    Configuration.WriteInteger('discimage', 'tracktype', Integer(Options.DiscTrackType));
  end;
end;

procedure TfrmMain.LoadPackageInfo(Item: TPackageListItem);
begin
  memPackageComment.Lines.Clear;
  if Item.Name <> '' then
    if Item.Comments <> '' then
      memPackageComment.Lines.Add(Item.Comments)
    else
      memPackageComment.Lines.Add('No comment is available.');
  lblPackageFileName.Caption := ExtractFileName(Item.FileName);
  lblPackageKind.Caption := PackageKindToStr(Item.Kind);
  lblPackageName.Caption := Item.Name;
  memPackageDescription.Lines.Text := Item.Description;
  imgPackageScreenshot.Picture.Assign(Item.Screenshot);
  ChangePackageSelectControlsState(Item.Name <> '');
end;

procedure TfrmMain.memPackageCommentURLClick(Sender: TObject;
  const URLText: string; Button: TMouseButton);
begin
  OpenLink(URLText);
end;

procedure TfrmMain.miLocateOnDiskClick(Sender: TObject);
begin
  LocateFileOnDisk(PackageSelectedItem.FileName);
end;

function TfrmMain.MsgBox(Text, Title: string; Flags: Integer): Integer;
begin
  Result := MessageBoxW(Handle, PWideChar(Text), PWideChar(Title), Flags);
end;

procedure TfrmMain.ReadConfig;
begin
  with SelfbootInducerEngine do
  begin
    // Joliet
    Options.Joliet := Configuration.ReadBool('iso9660', 'joliet', True);
    cbxJoliet.Checked := Options.Joliet;

    // RockRidge
    Options.RockRidge := Configuration.ReadBool('iso9660', 'rockridge', True);
    cbxRockRidge.Checked := Options.RockRidge;

    // Long FileNames
    Options.LongFileNames := Configuration.ReadBool('iso9660', 'longfilenames', True);
    cbxLongFileNames.Checked := Options.LongFileNames;

    // Working Directory
    Directories.Temporary := Configuration.ReadDirectoryPath('temp', 'workdir', GetWorkingTempDirectory);
    edtWorkDir.Text := Directories.Temporary;

    // Auto-Dummy
    Options.AutoDummy := Configuration.ReadBool('structure', 'autodummy', False);
    cbxAutoDummy.Checked := Options.AutoDummy;

    // Bootstrap (IP.BIN) keeping in the CD File System
    Options.BootstrapInFileSystem := Configuration.ReadBool('structure', 'bootstrapfs', True);
    cbxBootstrapFileSystem.Checked := Options.BootstrapInFileSystem;

    // Bootstrap (IP.BIN) Logo
    Options.IpLogo := Configuration.ReadBool('bootstraplogo', 'enabled', False);
    cbxMRLogo.Checked := Options.IpLogo;
    BootstrapLogo.LoadFromFile(Configuration.ReadString('bootstraplogo', 'filename', ''));

    // Image Generation Options
    Options.VolumeLabel := Configuration.ReadString('discimage', 'volumelabel', 'INDUCER');
    edtCDIVolumeName.Text := Options.VolumeLabel;
    Options.DiscImageType := TDiscImageType(Configuration.ReadInteger('discimage', 'imagetype', 0));
    rgpNRGImageType.ItemIndex := Integer(Options.DiscImageType);
    Options.DiscTrackType := TDiscTrackType(Configuration.ReadInteger('discimage', 'tracktype', 0));
    rgpCDIStructureType.ItemIndex := Integer(Options.DiscTrackType);
  end;
end;

end.
