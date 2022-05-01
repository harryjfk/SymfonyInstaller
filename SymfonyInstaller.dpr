program SymfonyInstaller;

uses
  Vcl.Forms,
  FrmMain in 'FrmMain.pas' {Form1},
  ApacheServers in 'ApacheServers.pas',
  EnviromentVariables in 'EnviromentVariables.pas',
  JFKSymfony in 'JFKSymfony.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
