unit uComponentManager;

interface

uses
  System.Classes, System.Contnrs, Vcl.Graphics, System.sysUtils, uComponent_IMC,
  uComponent_POIDS, uUtils;

type
  TComponentManager = class(TComponent)
  private
    FManager_IMC: TComponentManager_IMC;
    FManager_POIDS: TComponentManager_POIDS;
    function getCompoPOIDS_ByID(aID: Integer): TComponent_POIDS;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure initialize;
    function getCompoIMC_ColorByID(aID: Integer): TColor;
    function getCompoIMC_ByID(aIMC_ID: Integer): TComponent_IMC;
    function getFull_IMC_Label(aIMC_ID: Integer): string;
  end;

implementation
uses
  uDataModule;

constructor TComponentManager.Create(AOwner: TComponent);
begin
  inherited;
  FManager_IMC := TComponentManager_IMC.Create(Self);
  FManager_POIDS := TComponentManager_POIDS.Create(Self);
  initialize;
end;

destructor TComponentManager.Destroy;
begin
  FManager_IMC.Free;
  FManager_POIDS.Free;
  inherited;
end;

function TComponentManager.getCompoIMC_ByID(aIMC_ID: Integer): TComponent_IMC;
begin
  Result := FManager_IMC.getCompoIMC_ByID(aIMC_ID);
end;

function TComponentManager.getCompoIMC_ColorByID(aID: Integer): TColor;
begin
  Result := FManager_IMC.getCompoIMC_ColorByID(aID);
end;

function TComponentManager.getCompoPOIDS_ByID(aID: Integer): TComponent_POIDS;
begin
  Result := FManager_POIDS.getCompo_POIDS_ByID(aID);
end;

function TComponentManager.getFull_IMC_Label(aIMC_ID: Integer): string;
var
  aComponent_IMC: TComponent_IMC;
begin
  aComponent_IMC := FManager_IMC.getCompoIMC_ByID(aIMC_ID);
  Result := aComponent_IMC.IMC_Label + '(  entre ' + IntToStr(aComponent_IMC.IMC_Min) + ' et ' + IntToStr(aComponent_IMC.IMC_Max) + ' )';
end;

procedure TComponentManager.initialize;
begin
end;

end.

