unit uComponent_POIDS;

interface
uses
  System.Classes, System.Contnrs, Vcl.Graphics,
  uUtils;

type

  TComponent_POIDS = class(TObject)
  private
    FIMG_Hydra_BW: Double;
    FIMC_Calc: Double;
    FPOIDS_Ecart_Poids: Double;
    FPOIDS_ID: Integer;
    FPOIDS_Ecart_Cumul: Double;
    FIMC_ID: Integer;
    FComponentType: TComponentType;
    FPOIDS_Date: TDate;
    FIMG_Graisse_BF: Double;
    FPOIDS_Poids: Double;
    FIMG_Muscle_BM: Double;
    procedure SetComponentType(const Value: TComponentType);
    procedure SetIMC_Calc(const Value: Double);
    procedure SetIMC_ID(const Value: Integer);
    procedure SetIMG_Graisse_BF(const Value: Double);
    procedure SetIMG_Hydra_BW(const Value: Double);
    procedure SetPOIDS_Date(const Value: TDate);
    procedure SetPOIDS_Ecart_Poids(const Value: Double);
    procedure SetPOIDS_Ecart_Cumul(const Value: Double);
    procedure SetPOIDS_ID(const Value: Integer);
    procedure SetPOIDS_Poids(const Value: Double);
    procedure SetIMG_Muscle_BM(const Value: Double);
  public
    constructor Create(); overload;
    property ComponentType : TComponentType read FComponentType write SetComponentType;
    property POIDS_ID: Integer read FPOIDS_ID write SetPOIDS_ID;
    property POIDS_Date: TDate read FPOIDS_Date write SetPOIDS_Date;
    property POIDS_Poids: Double read FPOIDS_Poids write SetPOIDS_Poids;
    property IMC_ID: Integer read FIMC_ID write SetIMC_ID;
    property IMC_Calc: Double read FIMC_Calc write SetIMC_Calc;
    property POIDS_Ecart_Poids : Double read FPOIDS_Ecart_Poids write SetPOIDS_Ecart_Poids;
    property POIDS_Ecart_Cumul : Double read FPOIDS_Ecart_Cumul write SetPOIDS_Ecart_Cumul;
    property IMG_Graisse_BF : Double read FIMG_Graisse_BF write SetIMG_Graisse_BF;
    property IMG_Hydra_BW : Double read FIMG_Hydra_BW write SetIMG_Hydra_BW;
    property IMG_Muscle_BM : Double read FIMG_Muscle_BM write SetIMG_Muscle_BM;
  end;

implementation

{ TComponent_POIDS }


constructor TComponent_POIDS.Create;
begin
  ComponentType := POIDS;
end;

procedure TComponent_POIDS.SetComponentType(const Value: TComponentType);
begin
  FComponentType := Value;
end;

procedure TComponent_POIDS.SetIMC_Calc(const Value: Double);
begin
  FIMC_Calc := Value;
end;

procedure TComponent_POIDS.SetIMC_ID(const Value: Integer);
begin
  FIMC_ID := Value;
end;

procedure TComponent_POIDS.SetIMG_Graisse_BF(const Value: Double);
begin
  FIMG_Graisse_BF := Value;
end;

procedure TComponent_POIDS.SetIMG_Hydra_BW(const Value: Double);
begin
  FIMG_Hydra_BW := Value;
end;

procedure TComponent_POIDS.SetIMG_Muscle_BM(const Value: Double);
begin
  FIMG_Muscle_BM := Value;
end;


procedure TComponent_POIDS.SetPOIDS_Date(const Value: TDate);
begin
  FPOIDS_Date := Value;
end;

procedure TComponent_POIDS.SetPOIDS_Ecart_Poids(const Value: Double);
begin
  FPOIDS_Ecart_Poids := Value;
end;

procedure TComponent_POIDS.SetPOIDS_Ecart_Cumul(const Value: Double);
begin
  FPOIDS_Ecart_Cumul := Value;
end;

procedure TComponent_POIDS.SetPOIDS_ID(const Value: Integer);
begin
  FPOIDS_ID := Value;
end;

procedure TComponent_POIDS.SetPOIDS_Poids(const Value: Double);
begin
  FPOIDS_Poids := Value;
end;

end.
