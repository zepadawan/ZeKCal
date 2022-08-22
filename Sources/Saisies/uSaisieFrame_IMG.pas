unit uSaisieFrame_IMG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxTextEdit, cxColorComboBox;

type
  TFSaisieFrame_IMG = class(TFSaisieFrame)
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1Label: TcxGridDBColumn;
    cxGridDBTableView1Graiise_Min: TcxGridDBColumn;
    cxGridDBTableView1Graisse_Max: TcxGridDBColumn;
    cxGridDBTableView1Hydra_Max: TcxGridDBColumn;
    cxGridDBTableView1Hydrat_Min: TcxGridDBColumn;
    cxGridDBTableView1Color: TcxGridDBColumn;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSaisieFrame_IMG: TFSaisieFrame_IMG;

implementation

uses
  uDataModule;
{$R *.dfm}

end.
