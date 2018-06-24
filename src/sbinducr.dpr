program sbinducr;



{$R 'extrsrc.res' 'extrsrc.rc'}

uses
  Vcl.Forms,
  main in 'main.pas' {frmMain},
  sbicore in 'engine\sbicore.pas',
  systools in 'engine\systools.pas',
  workdir in 'engine\workdir.pas',
  uitools in 'engine\uitools.pas',
  cslmgr in 'engine\cslmgr.pas',
  mrimage in 'engine\mrimage.pas',
  xmlconf in 'engine\xmlconf.pas',
  mrview in 'mrview.pas' {frmLogoPreview},
  appver in 'engine\appver.pas',
  cdrecord in 'engine\cdrecord.pas',
  about in 'about.pas' {frmAbout};

{$R *.res}

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Selfboot Inducer 5';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
