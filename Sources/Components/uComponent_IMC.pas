unit uComponent_IMC;

interface

uses
  System.Classes, System.Contnrs, Vcl.Graphics;

type
  TComponent_IMC = class;

  TComponentManager_IMC = class(TComponent)
  private
  public
    FCompoList: TObjectList;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure initialize;
    function getCompoIMCByID( aID: Integer): TComponent_IMC;
    function getIDByValue(aValue : Double): Integer;
    function getLabelByID(aID : Integer): String;
    function getColorByID(aID : Integer): TColor;

  end;

  TComponent_IMC = class(TComponent)
  private
    FIMC_ID: Integer;
    FIMC_Label: string;
    FIMC_Max: Integer;
    FIMC_Min: Integer;
    FIMC_Color: TColor;
    procedure SetIMC_ID(const Value: Integer);
    procedure SetIMC_Label(const Value: string);
    procedure SetIMC_Color(const Value: TColor);
    procedure SetIMC_Max(const Value: Integer);
    procedure SetIMC_Min(const Value: Integer);
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(aLabel: string; aMin, aMax: Integer;
      aColor: TColor); overload;
    property IMC_ID: Integer read FIMC_ID write SetIMC_ID;
    property IMC_Label: string read FIMC_Label write SetIMC_Label;
    property IMC_Min: Integer read FIMC_Min write SetIMC_Min;
    property IMC_Max: Integer read FIMC_Max write SetIMC_Max;
    property IMC_Color: TColor read FIMC_Color write SetIMC_Color;
  end;

implementation

uses
  uDataModule;

{ TComponent_IMC }

constructor TComponent_IMC.Create(AOwner: TComponent);
begin
  inherited;
end;

constructor TComponent_IMC.Create(aLabel: string; aMin, aMax: Integer;
  aColor: TColor);
begin
  IMC_Label := aLabel;
  IMC_Min := aMin;
  IMC_Max := aMax;
  IMC_Color := aColor;
end;

procedure TComponent_IMC.SetIMC_ID(const Value: Integer);
begin
  FIMC_ID := Value;
end;

procedure TComponent_IMC.SetIMC_Color(const Value: TColor);
begin
  FIMC_Color := Value;
end;

procedure TComponent_IMC.SetIMC_Label(const Value: string);
begin
  FIMC_Label := Value;
end;

procedure TComponent_IMC.SetIMC_Max(const Value: Integer);
begin
  FIMC_Max := Value;
end;

procedure TComponent_IMC.SetIMC_Min(const Value: Integer);
begin
  FIMC_Min := Value;
end;

{ TComponentManager_IMC }

constructor TComponentManager_IMC.Create(AOwner: TComponent);
begin
  inherited;
  FCompoList := TObjectList.Create;
  initialize;
end;

destructor TComponentManager_IMC.Destroy;
begin
  FCompoList.Free;
  inherited;
end;

function TComponentManager_IMC.getColorByID(aID: Integer): TColor;
begin
  Result := getCompoIMCByID(aID).IMC_Color;
end;

function TComponentManager_IMC.getCompoIMCByID(aID: Integer): TComponent_IMC;
var
  i: Integer;
  aCompoIMC: TComponent_IMC;
begin
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMC := TComponent_IMC(FCompoList[i]);
    if (aCompoIMC.IMC_ID = aID) then
    begin
      Result := aCompoIMC;
    end;
  end;
end;

function TComponentManager_IMC.getIDByValue(aValue: Double): Integer;
var
  i: Integer;
  aCompoIMC: TComponent_IMC;
begin
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMC := TComponent_IMC(FCompoList[i]);
    if (aValue >= aCompoIMC.IMC_Min) and (aValue < aCompoIMC.IMC_Max) then
    begin
      Result := aCompoIMC.IMC_ID;
    end;
  end;
end;

function TComponentManager_IMC.getLabelByID(aID: Integer): String;
begin
  Result := getCompoIMCByID(aID).IMC_Label;
end;

procedure TComponentManager_IMC.initialize;
var
  FComponent_IMC: TComponent_IMC;
begin
  FCompoList.Clear;
  with DataModule1 do
  begin
    T_IMC.First;
    while not T_IMC.eof do
    begin
      FComponent_IMC := TComponent_IMC.Create(self);
      FComponent_IMC.IMC_ID := DataModule1.T_IMCID.Value;
      FComponent_IMC.IMC_Label := DataModule1.T_IMCLabel.Value;
      FComponent_IMC.IMC_Min := DataModule1.T_IMCMin.Value;
      FComponent_IMC.IMC_Max := DataModule1.T_IMCMx.Value;
      FComponent_IMC.IMC_Color := DataModule1.T_IMCColor.Value;
      FCompoList.Add(FComponent_IMC);
      T_IMC.Next;
    end;
  end;
end;

end.
