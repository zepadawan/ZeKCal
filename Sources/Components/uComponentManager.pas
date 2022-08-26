unit uComponentManager;

interface

uses
  System.Classes, System.Contnrs, Vcl.Graphics,
  uComponent_IMC, uComponent_POIDS,   uUtils;

type

  TComponentManager = class(TComponent)
  private
    FManager_IMC : TComponentManager_IMC;
    FManager_POIDS : TComponentManager_POIDS;
    function getCompoPOIDS_ByID(aID: Integer): TComponent_POIDS;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure initialize;
    function getCompoIMC_ColorByID(aID: Integer): TColor;

  end;

implementation

uses
  uDataModule;


{ TComponentManager_IMC }

constructor TComponentManager.Create(AOwner: TComponent);
begin
  inherited;
  FManager_IMC := TComponentManager_IMC.Create(Self);
  FManager_POIDS := TComponentManager_POIDS.Create(Self);
  initialize;
end;

destructor TComponentManager.Destroy;
begin
  FManager_IMC .Free;
  FManager_POIDS .Free;
  inherited;
end;

function TComponentManager.getCompoIMC_ColorByID(aID: Integer): TColor;
begin
    Result :=FManager_IMC.getCompoIMC_ByID(aID).IMC_Color;
end;

function TComponentManager.getCompoPOIDS_ByID(aID: Integer): TComponent_POIDS;
begin
  Result := FManager_POIDS.getCompo_POIDS_ByID(aID);
end;


procedure TComponentManager.initialize;
begin
end;

end.
