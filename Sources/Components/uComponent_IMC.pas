unit uComponent_IMC;

interface
uses
  System.Classes, System.Contnrs, Vcl.Graphics,
  uUtils;

type

  TComponent_IMC = class(TObject)
  private
    FIMC_ID: Integer;
    FIMC_Label: string;
    FIMC_Max: Integer;
    FIMC_Min: Integer;
    FIMC_Color: TColor;
    FComponentType: TComponentType;
    procedure SetIMC_ID(const Value: Integer);
    procedure SetIMC_Label(const Value: string);
    procedure SetIMC_Color(const Value: TColor);
    procedure SetIMC_Max(const Value: Integer);
    procedure SetIMC_Min(const Value: Integer);
    procedure SetComponentType(const Value: TComponentType);
  public
    constructor Create(); overload;
    constructor Create(aLabel: string; aMin, aMax: Integer; aColor: TColor); overload;
    property ComponentType : TComponentType read FComponentType write SetComponentType;
    property IMC_ID: Integer read FIMC_ID write SetIMC_ID;
    property IMC_Label: string read FIMC_Label write SetIMC_Label;
    property IMC_Min: Integer read FIMC_Min write SetIMC_Min;
    property IMC_Max: Integer read FIMC_Max write SetIMC_Max;
    property IMC_Color: TColor read FIMC_Color write SetIMC_Color;
  end;

implementation

{ TComponent_IMC }

constructor TComponent_IMC.Create();
begin
  inherited;
  ComponentType := IMC;

end;

constructor TComponent_IMC.Create(aLabel: string; aMin, aMax: Integer;
  aColor: TColor);
begin
  inherited Create();
  IMC_Label := aLabel;
  IMC_Min := aMin;
  IMC_Max := aMax;
  IMC_Color := aColor;
end;

procedure TComponent_IMC.SetIMC_ID(const Value: Integer);
begin
  FIMC_ID := Value;
end;

procedure TComponent_IMC.SetComponentType(const Value: TComponentType);
begin
  FComponentType := Value;
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
