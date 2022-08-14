unit uComponent_IMC;

interface
uses
  System.Classes, System.Contnrs, Vcl.Graphics;


type
  TComponentManager_IMC = class(TComponent)
  private
    FCompoList : TObjectList;
  end;

  TComponent_IMC = class(TComponent)
  private
    FID: Integer;
    FIMC_Label: string;
    FIMC_Max: Integer;
    FIMC_Min: Integer;
    FIMC_Color: TColor;
    procedure SetID(const Value: Integer);
    procedure SetIMC_Label(const Value: string);
    procedure SetIMC_Color(const Value: TColor);
    procedure SetIMC_Max(const Value: Integer);
    procedure SetIMC_Min(const Value: Integer);
  public
    constructor Create(AOwner: TComponent); overload;
    constructor Create(aLabel : string; aMin,aMax:Integer;aColor: TColor); overload;
    property ID: Integer read FID write SetID;
    property IMC_Label : string read FIMC_Label write SetIMC_Label;
    property IMC_Min : Integer read FIMC_Min write SetIMC_Min;
    property IMC_Max : Integer read FIMC_Max write SetIMC_Max;
    property IMC_Color : TColor read FIMC_Color write SetIMC_Color;
  end;

implementation

{ TComponent_IMC }

constructor TComponent_IMC.Create(AOwner: TComponent);
begin
  inherited;

end;


constructor TComponent_IMC.Create(aLabel: string; aMin, aMax: Integer; aColor: TColor);
begin
  IMC_Label := aLabel;
  IMC_Min := aMin;
  IMC_Max := aMax;
  IMC_Color := aColor;
end;

procedure TComponent_IMC.SetID(const Value: Integer);
begin
  FID := Value;
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

end.
