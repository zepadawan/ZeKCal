unit uSaisieFrame_IMG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxTextEdit, cxColorComboBox, dxColorEdit;

type
  TFSaisieFrame_IMG = class(TFSaisieFrame)
    cxGridDBTableViewID: TcxGridDBColumn;
    cxGridDBTableViewLabel: TcxGridDBColumn;
    cxGridDBTableViewGraiise_Min: TcxGridDBColumn;
    cxGridDBTableViewGraisse_Max: TcxGridDBColumn;
    cxGridDBTableViewHydra_Max: TcxGridDBColumn;
    cxGridDBTableViewHydrat_Min: TcxGridDBColumn;
    cxGridDBTableViewColor: TcxGridDBColumn;
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
