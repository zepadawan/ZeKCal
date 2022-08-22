unit uSaisieFrame_IMC;

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
    cxGridDBTableView1Max: TcxGridDBColumn;
    cxGridDBTableView1Min: TcxGridDBColumn;
    cxGridDBTableView1Color: TcxGridDBColumn;
  private
    { Déclarations privées }
  public
    ZName: string;
    aColor : TColor;
    { Déclarations publiques }
  end;

var
  FSaisieFrame_IMC :  TFSaisieFrame_IMC;

implementation
{$R *.dfm}
uses
  uDataModule;

{ TFSaisieFrame_IMC }


end.
