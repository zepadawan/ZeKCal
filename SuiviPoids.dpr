program SuiviPoids;

uses
  Vcl.Forms,
  uMain in 'Sources\Sources\uMain.pas' {Form1},
  uDataModule in 'Sources\Sources\uDataModule.pas' {DataModule1: TDataModule},
  uFrame_Manager in 'Sources\Sources\uFrame_Manager.pas',
  uCustomFrame in 'Sources\Sources\uCustomFrame.pas' {FCustomFrame: TFrame},
  uSaisieFrame in 'Sources\Sources\uSaisieFrame.pas' {FSaisieFrame: TFrame},
  uSaisieFrame_IMC in 'Sources\Saisies\uSaisieFrame_IMC.pas' {FSaisieFrame_IMC: TFrame},
  uSaisieFrame_POIDS in 'Sources\Saisies\uSaisieFrame_POIDS.pas' {FSaisieFrame_POIDS: TFrame},
  uUtils in 'Sources\Sources\uUtils.pas',
  uComponent_IMC in 'Sources\Components\uComponent_IMC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
