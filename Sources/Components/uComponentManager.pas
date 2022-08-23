unit uComponentManager;

interface

uses
  System.Classes, System.Contnrs, Vcl.Graphics,
  uComponent_IMC, uComponent_POIDS,   uUtils;

type

  TComponentManager = class(TComponent)
  private
  public
    FCompoList: TObjectList;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure initialize;
    function getCompoIMC_ByID( aID: Integer): TComponent_IMC;
    function getCompoIMC_IDByValue(aValue : Double): Integer;
    function getCompoIMC_LabelByID(aID : Integer): String;
    function getCompoIMC_ColorByID(aID : Integer): TColor;

  end;

implementation

uses
  uDataModule;


{ TComponentManager_IMC }

constructor TComponentManager.Create(AOwner: TComponent);
begin
  inherited;
  FCompoList := TObjectList.Create;
  initialize;
end;

destructor TComponentManager.Destroy;
begin
  FCompoList.Free;
  inherited;
end;

function TComponentManager.getCompoIMC_ColorByID(aID: Integer): TColor;
begin
  Result := getCompoIMC_ByID(aID).IMC_Color;
end;

function TComponentManager.getCompoIMC_ByID(aID: Integer): TComponent_IMC;
var
  i: Integer;
  aCompoIMC: TComponent_IMC;
begin
  Result := nil;
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMC := TComponent_IMC(FCompoList[i]);
    if (aCompoIMC.ComponentType = IMC) and (aCompoIMC.IMC_ID = aID) then
    begin
      Result := aCompoIMC;
    end;
  end;
end;

function TComponentManager.getCompoIMC_IDByValue(aValue: Double): Integer;
var
  i: Integer;
  aCompoIMC: TComponent_IMC;
begin
  Result := 0;
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMC := TComponent_IMC(FCompoList[i]);
    if (aCompoIMC.ComponentType = IMC) then
    begin
      if (aValue >= aCompoIMC.IMC_Min) and (aValue < aCompoIMC.IMC_Max) then
      begin
        Result := aCompoIMC.IMC_ID;
      end;
    end;
  end;
end;

function TComponentManager.getCompoIMC_LabelByID(aID: Integer): String;
begin
  Result := getCompoIMC_ByID(aID).IMC_Label;
end;

procedure TComponentManager.initialize;
var
  FComponent_IMC: TComponent_IMC;
  FComponent_POIDS: TComponent_POIDS;
begin
  FCompoList.Clear;
  with DataModule1 do
  begin
    T_IMC.First;
    while not T_IMC.eof do
    begin
      FComponent_IMC := TComponent_IMC.Create();
      FComponent_IMC.ComponentType := IMC;
      FComponent_IMC.IMC_ID := DataModule1.T_IMCID.Value;
      FComponent_IMC.IMC_Label := DataModule1.T_IMCLabel.Value;
      FComponent_IMC.IMC_Min := DataModule1.T_IMCMin.Value;
      FComponent_IMC.IMC_Max := DataModule1.T_IMCMax.Value;
      FComponent_IMC.IMC_Color := Tcolor(DataModule1.T_IMCColor.Value);
      FCompoList.Add(FComponent_IMC);
      T_IMC.Next;
    end;
    T_POIDS.First;
    while not T_POIDS.eof do
    begin
      FComponent_POIDS := TComponent_POIDS.Create();
      FComponent_POIDS.ComponentType := POIDS;
      FComponent_POIDS.IMC_ID := DataModule1.T_POIDSID.Value;
      FComponent_POIDS.POIDS_Date := DataModule1.T_POIDSDate.Value;
      FComponent_POIDS.POIDS_Poids := DataModule1.T_POIDSPoids.Value;
      FComponent_POIDS.IMC_ID := DataModule1.T_POIDSIMC_ID.value;
      FComponent_POIDS.IMC_Calc := DataModule1.T_POIDSIMC_Calc.Value;
      FComponent_POIDS.POIDS_Ecart_Poids := DataModule1.T_POIDSEcart_Poids.Value;
      FComponent_POIDS.POIDS_Ecart_Cumul := DataModule1.T_POIDSEcart_Cumul.value;
      FComponent_POIDS.IMG_Graisse_BF := DataModule1.T_POIDSIMG_Graisse_BF.Value;
      FComponent_POIDS.IMG_Hydra_BW := DataModule1.T_POIDSIMG_Hydrat_BW.Value;
      FComponent_POIDS.IMG_Muscle_BM := DataModule1.T_POIDSIMG_Muscle_BM.Value;
      FCompoList.Add(FComponent_POIDS);
      T_POIDS.Next;
    end;

  end;
end;

end.
