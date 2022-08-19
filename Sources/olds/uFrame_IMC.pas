unit uFrame_IMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, MemDS, DBAccess, MyAccess, cxDBNavigator, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, cxColorComboBox;

type
  TFSaisieFrame_IMC = class(TFSaisieFrame)
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1Label: TcxGridDBColumn;
    cxGridDBTableView1Min: TcxGridDBColumn;
    cxGridDBTableView1Mx: TcxGridDBColumn;
    cxGridDBTableView1Color: TcxGridDBColumn;
  private
    { Déclarations privées }
  public
    ZName: string;
    aColor : TColor;
    { Déclarations publiques }
    constructor create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  FFSaisieFrame_IMC :  TFSaisieFrame_IMC;

implementation
{$R *.dfm}
uses 
  uDataModule;

{ TFSaisieFrame_IMC }

constructor TFSaisieFrame_IMC.create(AOwner: TComponent);
begin
  inherited;
  ZName := 'zzzzzzzzzzzz';

end;


destructor TFSaisieFrame_IMC.Destroy;
begin
  inherited;
end;

end.
