//{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module'

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  Agenda;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  fmMain in 'fmMain.pas' {frmMain: TUniForm},
  fmCadUsuario in 'fmCadUsuario.pas' {frmCadUsuario: TUniForm},
  fmAltSenha in 'fmAltSenha.pas' {frmAltSenha: TUniForm},
  fmCadPatterns in 'C:\Program Files\Embarcadero\Patterns\Form\fmCadPatterns.pas' {frmCadPatterns: TUniForm},
  fmFormPatterns in 'C:\Program Files\Embarcadero\Patterns\Form\fmFormPatterns.pas' {frmFormPatterns: TUniForm},
  fmCadContatos in 'fmCadContatos.pas' {frmCadContatos},
  fmLogin in 'fmLogin.pas' {frmLogin: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Title := 'Agenda de Contatos';
  Application.Run;
{$endif}
end.
