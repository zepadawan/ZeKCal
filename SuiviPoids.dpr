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
  uFrameMenu in 'Sources\Sources\uFrameMenu.pas' {FFrameMenu: TFrame},
  uSaisieFrame_PARAMS in 'Sources\Saisies\uSaisieFrame_PARAMS.pas' {FSaisieFrame_PARAMS: TFrame},
  uSaisieFrame_IMG in 'Sources\Saisies\uSaisieFrame_IMG.pas' {FSaisieFrame_IMG: TFrame},
  uComponent_IMC in 'Sources\Components\uComponent_IMC.pas',
  uSaisieFrame_DIABETE in 'Sources\Saisies\uSaisieFrame_DIABETE.pas' {FSaisieFrame_DIABETE: TFrame},
  uComponent_POIDS in 'Sources\Components\uComponent_POIDS.pas',
  uComponentManager in 'Sources\Components\uComponentManager.pas',
  uTraitements in 'Sources\Sources\uTraitements.pas',
  uComponent_IMG in 'Sources\Components\uComponent_IMG.pas',
  uGraphicFrame_Custom in 'Sources\Sources\uGraphicFrame_Custom.pas' {FrameGraphic_Custom: TFrame},
  uGraphicFrame_Diabete in 'Sources\Graphics\uGraphicFrame_Diabete.pas' {FrameGraphic_DIABETE: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
