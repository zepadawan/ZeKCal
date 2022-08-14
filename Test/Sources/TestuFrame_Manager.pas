unit TestuFrame_Manager;
{

  Cas de test DUnit Delphi
  ----------------------
  Cette unité contient une classe cas de test de squelette générée par l'expert Cas de test.
  Modifiez le code généré pour configurer et appeler correctement les méthodes de l'unité 
  en cours de test.

}

interface

uses
  TestFramework, Vcl.Forms, System.Contnrs, uFrame_Manager, System.Classes;

type
  // Méthodes de test pour la classe TFrame_Manager

  TestTFrame_Manager = class(TTestCase)
  strict private
    FFrame_Manager: TFrame_Manager;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestDestroy;
    procedure TestAddFrame;
    procedure TestgetFramebyName;
  end;

implementation

procedure TestTFrame_Manager.SetUp;
begin
  FFrame_Manager := TFrame_Manager.Create();
end;

procedure TestTFrame_Manager.TearDown;
begin
  FFrame_Manager.Free;
  FFrame_Manager := nil;
end;

procedure TestTFrame_Manager.TestDestroy;
begin
  FFrame_Manager.Destroy;
  // TODO : Valider les résultats des méthodes
end;

procedure TestTFrame_Manager.TestAddFrame;
var
  ReturnValue: Boolean;
  aFrame: TFrame;
begin

  // TODO : Configurer les paramètres d'appel des méthodes
  ReturnValue := FFrame_Manager.AddFrame(aFrame);
  // TODO : Valider les résultats des méthodes
end;

procedure TestTFrame_Manager.TestgetFramebyName;
var
  ReturnValue: TFrame;
  aFrame: string;
begin
  // TODO : Configurer les paramètres d'appel des méthodes
  ReturnValue := FFrame_Manager.getFramebyName(aFrame);
  // TODO : Valider les résultats des méthodes
end;

initialization
  // Enregistrer tous les cas de test avec l'exécuteur de test
  RegisterTest(TestTFrame_Manager.Suite);
end.

