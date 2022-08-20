unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS,
  uComponent_IMC, cxStyles, cxClasses;

type
  TDataModule1 = class(TDataModule)
    MyConnection1: TMyConnection;
    T_IMC: TMyTable;
    DS_IMC: TMyDataSource;
    T_POIDS: TMyTable;
    DS_POIDS: TMyDataSource;
    T_IMCID: TIntegerField;
    T_IMCLabel: TStringField;
    T_IMCMin: TLongWordField;
    T_IMCMx: TLongWordField;
    T_POIDSID: TIntegerField;
    T_POIDSDate: TDateField;
    T_POIDSPoids: TFloatField;
    T_POIDSIMC_Calc: TFloatField;
    T_POIDSIMC_ID: TLongWordField;
    T_DIABETE: TMyTable;
    DS_DIABETE: TMyDataSource;
    T_DIABETEID: TIntegerField;
    T_DIABETEDate: TDateField;
    T_DIABETEHeurre: TTimeField;
    T_DIABETEValeur: TLongWordField;
    cxStyleRepository: TcxStyleRepository;
    Gras: TcxStyle;
    T_IMCColor: TLargeintField;
    T_POIDSEcart1: TFloatField;
    T_POIDSEcart_Cum: TFloatField;
    T_POIDSIMG_Graisse_BF: TFloatField;
    T_POIDSIMG_Hydrat_BW: TFloatField;
    T_POIDSIMG_Muscle_BM: TFloatField;
    T_PARAMS: TMyTable;
    DS_PARAMS: TMyDataSource;
    T_PARAMSID: TIntegerField;
    T_PARAMSLabel: TStringField;
    T_PARAMSValue: TStringField;
    T_DIABETEApres_Repas: TBooleanField;
    T_IMG: TMyTable;
    DS_IMG: TMyDataSource;
    T_IMGID: TIntegerField;
    T_IMGLabel: TStringField;
    T_IMGBF_Graisse_Min: TFloatField;
    T_IMGBF_Graisse_Max: TFloatField;
    T_IMGBF_Hydrat_Min: TFloatField;
    T_IMGBF_Hydrat_Max: TFloatField;
    procedure T_POIDSBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    FComponentManager_IMC : TComponentManager_IMC;
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  uUtils;


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  T_PARAMS.Open;
  T_IMC.Open;
  T_IMG.Open;
  T_POIDS.Open;
  T_DIABETE.Open;

end;

procedure TDataModule1.T_POIDSBeforePost(DataSet: TDataSet);
begin
  // Calcul d l'IMC
  T_POIDSIMC_Calc.Value := TUtils.IMC(T_POIDSPoids.Value);
  T_POIDSIMC_ID.Value := FComponentManager_IMC.getIDByValue(T_POIDSIMC_Calc.Value);

end;

end.
