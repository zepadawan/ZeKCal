unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS,
  uComponentManager,
  cxStyles, cxClasses, System.ImageList, Vcl.ImgList,
  Vcl.Controls, cxImageList, cxGraphics, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdBaseComponent, IdMailBox, IdMessage, IdAttachment, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type

  TDataModule1 = class(TDataModule)
    MyConnection1: TMyConnection;
    T_IMC: TMyTable;
    DS_IMC: TMyDataSource;
    T_POIDS: TMyTable;
    DS_POIDS: TMyDataSource;
    T_DIABETE: TMyTable;
    DS_DIABETE: TMyDataSource;
    cxStyleRepository: TcxStyleRepository;
    Gras: TcxStyle;
    T_PARAMS: TMyTable;
    DS_PARAMS: TMyDataSource;
    T_PARAMSID: TIntegerField;
    T_PARAMSLabel: TStringField;
    T_IMG: TMyTable;
    DS_IMG: TMyDataSource;
    T_IMCID: TIntegerField;
    T_IMCLabel: TStringField;
    T_IMCMax: TLongWordField;
    T_IMCMin: TLongWordField;
    T_IMGID: TIntegerField;
    T_IMGLabel: TStringField;
    T_IMGGraisse_Max: TFloatField;
    T_IMGHydra_Max: TFloatField;
    T_IMGHydrat_Min: TFloatField;
    T_DIABETEID: TIntegerField;
    T_DIABETEDate: TDateField;
    T_DIABETEHeure: TTimeField;
    T_DIABETEValeur: TSmallintField;
    T_DIABETEApres_Repas: TShortintField;
    T_POIDSID: TIntegerField;
    T_POIDSDate: TDateField;
    T_POIDSPoids: TFloatField;
    T_POIDSIMC_ID: TIntegerField;
    T_POIDSIMC_Calc: TFloatField;
    T_POIDSEcart_Poids: TFloatField;
    T_POIDSEcart_Cumul: TFloatField;
    T_POIDSIMG_Graisse_BF: TFloatField;
    T_POIDSIMG_Hydrat_BW: TFloatField;
    T_POIDSIMG_Muscle_BM: TFloatField;
    ImageList_16: TcxImageList;
    cxImageList_ext: TcxImageList;
    T_IMCColor: TIntegerField;
    T_IMGColor: TIntegerField;
    T_IMGGraisse_Min: TFloatField;
    T_PARAMSValue: TStringField;
    procedure T_POIDSBeforePost(DataSet: TDataSet);
    procedure IdMessageCreateAttachment(const AMsg: TIdMessage; const AHeaders: TStrings;
      var AAttachment: TIdAttachment);
  private
    { Déclarations privées }
    procedure InitializeTables(Sender: TObject);
  public
    { Déclarations publiques }
    FComponentManager : TComponentManager;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;


  end;

var
  DataModule1: TDataModule1;

implementation

uses
  uUtils;


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TDataModule1.Create(AOwner: TComponent);
begin
  inherited;
//  FormatSettings.DecimalSeparator := '.';
  InitializeTables(Self);
  FComponentManager := TComponentManager.Create(Self);
end;

procedure TDataModule1.IdMessageCreateAttachment(const AMsg: TIdMessage; const AHeaders: TStrings;
  var AAttachment: TIdAttachment);
begin
   AAttachment.LoadFromFile('');
end;

procedure TDataModule1.InitializeTables(Sender: TObject);
begin
  T_PARAMS.Open;
  T_IMC.Open;
  T_IMG.Open;
  T_POIDS.Open;
  T_DIABETE.Open;
end;


destructor TDataModule1.Destroy;
begin
  FComponentManager.Free;
  inherited;
end;

procedure TDataModule1.T_POIDSBeforePost(DataSet: TDataSet);
begin
  // Calcul d l'IMC
  if T_POIDSPoids.Value <> 0  then
  begin
    T_POIDSIMC_Calc.Value := TUtils.IMC(T_POIDSPoids.Value);
    T_POIDSIMC_ID.Value := FComponentManager.getCompoIMC_IMCIDByValue(T_POIDSIMC_Calc.Value);
  end;
end;

end.
