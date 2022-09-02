unit uTraitements;


interface

uses
  Data.DB,
  uDataModule, uComponent_POIDS;

type
  TTraitementPoids = class;

  TTraitements = class(TObject)
    FTraitementPoids : TTraitementPoids;
  public
    constructor Create;
    destructor Destroy; override;
    procedure TraitementGolbal;
    procedure Traite_Poids(aIDField: Integer);
  end;

  TTraitementPoids = class(TObject)
  private
    FComponent_POIDS_ATraiter : TComponent_POIDS_Traitement;
    procedure fillComponent_Poids(aIDField: Integer);
    procedure Calc;
    procedure WriteField;
  public
    constructor Create;
    destructor Destry;
  end;

implementation

{ TTraitemenyPoids }

constructor TTraitementPoids.Create;
begin
  FComponent_POIDS_ATraiter := TComponent_POIDS_Traitement.Create;
end;

destructor TTraitementPoids.Destry;
begin
  FComponent_POIDS_ATraiter.Free;
end;

procedure TTraitementPoids.FillComponent_Poids(aIDField: Integer);
var
  aResult : Boolean;
  aFirstID : Integer;
  aID : Integer;
begin
  DataModule1.T_POIDS.open;
  DataModule1.T_POIDS.first;
  aFirstID := DataModule1.T_POIDSID.Value;
  aResult := DataModule1.T_POIDS.Locate('ID', aIDField, [loPartialKey]);
  if aResult then
  begin
    FComponent_POIDS_ATraiter.POIDS_ID :=  aIDField;
    FComponent_POIDS_ATraiter.POIDS_Poids := DataModule1.T_POIDSPoids.Value;
    if DataModule1.T_POIDSID.Value = aFirstID then
    begin
      FComponent_POIDS_ATraiter.POIDS_Poids_Prec := DataModule1.T_POIDSPoids.Value;
    end else
    begin
      aID := aIDField - 1;
      DataModule1.T_POIDS.Locate('ID', aIDField - 1, [loPartialKey]);
      FComponent_POIDS_ATraiter.POIDS_ID_Prec:=  aID;
      FComponent_POIDS_ATraiter.POIDS_Poids_Prec := DataModule1.T_POIDSPoids.Value;
    end;
  end;
end;

procedure TTraitementPoids.Calc;
var
  aPoids : Double;
  aPoids_Precedent: Double;
begin
  aPoids := FComponent_POIDS_ATraiter.POIDS_Poids;
  aPoids_Precedent := FComponent_POIDS_ATraiter.POIDS_Poids_Prec;
  FComponent_POIDS_ATraiter.POIDS_Ecart_Poids := aPoids - aPoids_Precedent;
  FComponent_POIDS_ATraiter.POIDS_Ecart_Cumul :=  FComponent_POIDS_ATraiter.POIDS_Ecart_Cumul + FComponent_POIDS_ATraiter.POIDS_Ecart_Poids
 end;

procedure TTraitementPoids.WriteField;
var
  aResult : Boolean;
begin
  aResult := DataModule1.T_POIDS.Locate('ID', FComponent_POIDS_ATraiter.POIDS_ID, [loPartialKey]);
  if aResult then
  begin
    DataModule1.T_POIDS.edit;
    try
      DataModule1.T_POIDSEcart_Poids.Value := FComponent_POIDS_ATraiter.POIDS_Ecart_Poids;
      DataModule1.T_POIDSEcart_Cumul.Value := FComponent_POIDS_ATraiter.POIDS_Ecart_Cumul;
    finally
      DataModule1.T_POIDS.Post;
    end;
  end;
end;


{ TTraitements }

constructor TTraitements.Create;
begin
  FTraitementPoids := TTraitementPoids.Create;
end;

destructor TTraitements.Destroy;
begin
  FTraitementPoids.Free;
  inherited;
end;

procedure TTraitements.TraitementGolbal;
var
  iD : Integer;
begin
  while not DataModule1.T_POIDS.Eof do
  begin
    ID := DataModule1.T_POIDSID.value;
    Traite_Poids(ID);
    DataModule1.T_POIDS.Next;
  end;
end;

procedure TTraitements.Traite_Poids(aIDField: Integer);
begin
  FTraitementPoids.fillComponent_Poids(aIDField);
  FTraitementPoids.Calc;
  FTraitementPoids.WriteField;
end;


end.
