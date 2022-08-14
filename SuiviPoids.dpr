program SuiviPoids;

uses
  Vcl.Forms,
  uMain in 'Sources\uMain.pas' {Form1},
  uDataModule in 'Sources\uDataModule.pas' {DataModule1: TDataModule},
  uFrame_Manager in 'Sources\uFrame_Manager.pas',
  uCustomFrame in 'Sources\uCustomFrame.pas' {FCustomFrame: TFrame},
  uSaisieFrame in 'Sources\uSaisieFrame.pas' {FSaisieFrame: TFrame},
  uSaisieFrame_IMC in 'Sources\uSaisieFrame_IMC.pas' {FSaisieFrame_IMC: TFrame},
  uSaisieFrame_POIDS in 'Sources\uSaisieFrame_POIDS.pas' {FSaisieFrame_POIDS: TFrame},
  uUtils in 'Sources\uUtils.pas',
  uComponent_IMC in 'Sources\Components\uComponent_IMC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
