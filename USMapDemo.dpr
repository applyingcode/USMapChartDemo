program USMapDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  ArtboardUSStates_iOS in 'ArtboardUSStates_iOS.pas',
  ArtboardUSStatesGradient_iOS in 'ArtboardUSStatesGradient_iOS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
