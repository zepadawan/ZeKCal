unit uComponent_POIDS;

interface
uses
  System.Classes, System.Contnrs, Vcl.Graphics,
  uUtils;

type
  TComponent_POIDS = class;

  TComponentManager_POIDS = class(TComponent)
  private
  public
    FCompoList: TObjectList;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure initialize;
    function getCompo_POIDS_ByID( aID: Integer): TComponent_POIDS;
    end;

  TComponent_POIDS = class(TObject)
  private
    FIMG_Hydra_BW: Double;
    FIMC_Calc: Double;
    FPOIDS_Ecart_Poids: Double;
    FPOIDS_ID: Integer;
    FPOIDS_Ecart_Cumul: Double;
    FIMC_ID: Integer;
    FPOIDS_Date: TDate;
    FIMG_Graisse_BF: Double;
    FPOIDS_Poids: Double;
    FIMG_Muscle_BM: Double;
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

  TComponent_POIDS_Traitement = class(TComponent_POIDS)
  private
    FPOIDS_ID_Prec: Integer;
    FPOIDS_Ecart_Cumul_Prec: Double;
    FIMC_ID_Prec: Integer;
    FPOIDS_Date_Prec: TDate;
    FIMG_Graisse_BF_Prec: Double;
    FPOIDS_Poids_Prec: Double;
    FIMG_Muscle_BM_Prec: Double;
    FIMG_Hydra_BW_Prec: Double;
    FIMC_Calc_Prec: Double;
    FPOIDS_Ecart_Poids_Prec: Double;
    procedure SetIMC_Calc_Prec(const Value: Double);
    procedure SetIMC_ID_Prec(const Value: Integer);
    procedure SetIMG_Graisse_BF_Prec(const Value: Double);
    procedure SetIMG_Hydra_BW_Prec(const Value: Double);
    procedure SetIMG_Muscle_BM_Prec(const Value: Double);
    procedure SetPOIDS_Date_Prec(const Value: TDate);
    procedure SetPOIDS_Ecart_Cumul_Prec(const Value: Double);
    procedure SetPOIDS_Ecart_Poids_Prec(const Value: Double);
    procedure SetPOIDS_ID_Prec(const Value: Integer);
    procedure SetPOIDS_Poids_Prec(const Value: Double);
  public
    property POIDS_ID_Prec: Integer  read FPOIDS_ID_Prec write SetPOIDS_ID_Prec;
    property POIDS_Date_Prec: TDate  read FPOIDS_Date_Prec write SetPOIDS_Date_Prec;
    property POIDS_Poids_Prec: Double  read FPOIDS_Poids_Prec write SetPOIDS_Poids_Prec;
    property IMC_ID_Prec: Integer  read FIMC_ID_Prec write SetIMC_ID_Prec;
    property IMC_Calc_Prec: Double  read FIMC_Calc_Prec write SetIMC_Calc_Prec;
    property POIDS_Ecart_Poids_Prec : Double  read FPOIDS_Ecart_Poids_Prec write SetPOIDS_Ecart_Poids_Prec;
    property POIDS_Ecart_Cumul_Prec : Double  read FPOIDS_Ecart_Cumul_Prec write SetPOIDS_Ecart_Cumul_Prec;
    property IMG_Graisse_BF_Prec : Double  read FIMG_Graisse_BF_Prec write SetIMG_Graisse_BF_Prec;
    property IMG_Hydra_BW_Prec : Double  read FIMG_Hydra_BW_Prec write SetIMG_Hydra_BW_Prec;
    property IMG_Muscle_BM_Prec : Double  read FIMG_Muscle_BM_Prec write SetIMG_Muscle_BM_Prec;
  end;

implementation

{ TComponent_POIDS }
uses
  uDataModule;



constructor TComponent_POIDS.Create;
begin
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

{ TComponentManager }

constructor TComponentManager_POIDS.Create(AOwner: TComponent);
begin
  inherited;
  FCompoList := TObjectList.Create;
end;

destructor TComponentManager_POIDS.Destroy;
begin
  FCompoList.Free;
  inherited;
end;

function TComponentManager_POIDS.getCompo_POIDS_ByID(aID: Integer): TComponent_POIDS;
var
  i:Integer;
  aComponent_POIDS : TComponent_POIDS;
begin
  Result := nil;
  for i := 0 to FCompoList.Count - 1 do
  begin
    aComponent_POIDS := TComponent_POIDS(FCompoList[i]);
    if aComponent_POIDS.FPOIDS_ID = aID then
    begin
      Result := aComponent_POIDS;
      Break;
    end;
  end;
end;

procedure TComponentManager_POIDS.initialize;
var
  FComponent_POIDS: TComponent_POIDS;
begin
  FCompoList.Clear;
  with DataModule1 do
  begin
    T_POIDS.First;
    while not T_POIDS.eof do
    begin
      FComponent_POIDS := TComponent_POIDS.Create();
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

{ TComponent_POIDS_Traitement }

procedure TComponent_POIDS_Traitement.SetIMC_Calc_Prec(const Value: Double);
begin
  FIMC_Calc_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetIMC_ID_Prec(const Value: Integer);
begin
  FIMC_ID_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetIMG_Graisse_BF_Prec(const Value: Double);
begin
  FIMG_Graisse_BF_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetIMG_Hydra_BW_Prec(const Value: Double);
begin
  FIMG_Hydra_BW_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetIMG_Muscle_BM_Prec(const Value: Double);
begin
  FIMG_Muscle_BM_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetPOIDS_Date_Prec(const Value: TDate);
begin
  FPOIDS_Date_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetPOIDS_Ecart_Cumul_Prec(const Value: Double);
begin
  FPOIDS_Ecart_Cumul_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetPOIDS_Ecart_Poids_Prec(const Value: Double);
begin
  FPOIDS_Ecart_Poids_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetPOIDS_ID_Prec(const Value: Integer);
begin
  FPOIDS_ID_Prec := Value;
end;

procedure TComponent_POIDS_Traitement.SetPOIDS_Poids_Prec(const Value: Double);
begin
  FPOIDS_Poids_Prec := Value;
end;

end.
