unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS;

type
  TDataModule1 = class(TDataModule)
    MyConnection1: TMyConnection;
    T_IMC: TMyTable;
    DS_IMC: TMyDataSource;
    T_IMCID: TIntegerField;
    T_IMCLabel: TStringField;
    T_IMCMin: TLongWordField;
    T_IMCMx: TLongWordField;
    T_IMCColor: TIntegerField;
    T_POIDS: TMyTable;
    DS_POIDS: TMyDataSource;
    T_POIDSID: TIntegerField;
    T_POIDSDate: TDateField;
    T_POIDSPoids: TFloatField;
    T_POIDSIMC_Calc: TFloatField;
    procedure T_POIDSBeforePost(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  uUtils;


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.T_POIDSBeforePost(DataSet: TDataSet);
begin
  // Calcul d l'IMC
  T_POIDSIMC_Calc.Value := TUtils.IMC(T_POIDSPoids.Value);

end;

end.
