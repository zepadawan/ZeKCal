unit TestuFrame_Manager;
{

  Cas de test DUnit Delphi
  ----------------------
  Cette unit� contient une classe cas de test de squelette g�n�r�e par l'expert Cas de test.
  Modifiez le code g�n�r� pour configurer et appeler correctement les m�thodes de l'unit� 
  en cours de test.

}

interface

uses
  TestFramework, Vcl.Forms, System.Contnrs, uFrame_Manager, System.Classes;

type
  // M�thodes de test pour la classe TFrame_Manager

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
  // TODO : Valider les r�sultats des m�thodes
end;

procedure TestTFrame_Manager.TestAddFrame;
var
  ReturnValue: Boolean;
  aFrame: TFrame;
begin

  // TODO : Configurer les param�tres d'appel des m�thodes
  ReturnValue := FFrame_Manager.AddFrame(aFrame);
  // TODO : Valider les r�sultats des m�thodes
end;

procedure TestTFrame_Manager.TestgetFramebyName;
var
  ReturnValue: TFrame;
  aFrame: string;
begin
  // TODO : Configurer les param�tres d'appel des m�thodes
  ReturnValue := FFrame_Manager.getFramebyName(aFrame);
  // TODO : Valider les r�sultats des m�thodes
end;

initialization
  // Enregistrer tous les cas de test avec l'ex�cuteur de test
  RegisterTest(TestTFrame_Manager.Suite);
end.

