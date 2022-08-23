unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS,
  uComponent, cxStyles, cxClasses;

type

  TDataModule1 = class(TDataModule)
    MyConnection1: TMyConnection;
    T_IMC: TMyTable;
    DS_IMC: TMyDataSource;
    T_POIDS: TMyTable;
    DS_POIDS: TMyDataSource;
    T_POIDSID: TIntegerField;
    T_POIDSIMC_Calc: TFloatField;
    T_DIABETE: TMyTable;
    DS_DIABETE: TMyDataSource;
    cxStyleRepository: TcxStyleRepository;
    Gras: TcxStyle;
    T_POIDSIMG_Graisse_BF: TFloatField;
    T_POIDSIMG_Hydrat_BW: TFloatField;
    T_POIDSIMG_Muscle_BM: TFloatField;
    T_PARAMS: TMyTable;
    DS_PARAMS: TMyDataSource;
    T_PARAMSID: TIntegerField;
    T_PARAMSLabel: TStringField;
    T_PARAMSValue: TStringField;
    T_IMG: TMyTable;
    DS_IMG: TMyDataSource;
    T_IMCID: TIntegerField;
    T_IMCLabel: TStringField;
    T_IMCMax: TLongWordField;
    T_IMCMin: TLongWordField;
    T_IMCColor: TStringField;
    T_POIDSIMC_ID: TIntegerField;
    T_DIABETEID: TIntegerField;
    T_DIABETEDate: TDateField;
    T_DIABETEHeure: TTimeField;
    T_DIABETEValeur: TSmallintField;
    T_DIABETEApres_Repas: TShortintField;
    T_POIDSDate: TDateField;
    T_POIDSPoids: TFloatField;
    T_POIDSEcart_Cumul: TFloatField;
    T_IMGID: TIntegerField;
    T_IMGLabel: TStringField;
    T_IMGGraiise_Min: TFloatField;
    T_IMGGraisse_Max: TFloatField;
    T_IMGHydra_Max: TFloatField;
    T_IMGHydrat_Min: TFloatField;
    T_IMGColor: TStringField;
    procedure T_POIDSBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    FComponentManager : TComponentManager;
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
//  T_POIDSIMC_Calc.Value := TUtils.IMC(T_POIDSPoids.Value);
  T_POIDSIMC_ID.Value := FComponentManager.getCompoIMC_IDByValue(T_POIDSIMC_Calc.Value);

end;

end.
