program SuiviPoidsTests;
{

  Projet de test DUnit Delphi
  -------------------------
  Ce projet contient le framework de test DUnit et les ex�cuteurs de test GUI/Console.
  Ajoutez "CONSOLE_TESTRUNNER" � l'entr�e des d�finitions conditionnelles des options
  de projet pour utiliser l'ex�cuteur de test console.  Sinon, l'ex�cuteur de test GUI sera
  utilis� par d�faut.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestuFrame_Manager in 'TestuFrame_Manager.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

