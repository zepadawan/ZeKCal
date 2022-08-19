unit uFrame_Saisie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCustomFrame, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxDBNavigator, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, MyAccess, MemDS;

type
  TFrame_Custom1 = class(TFrame_Custom)
    Panel_Client: TPanel;
    Panel_Bottom: TPanel;
    Panel_Grid: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDBNavigator1: TcxDBNavigator;
    MyTable1: TMyTable;
    MyDataSource1: TMyDataSource;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Frame_Custom1: TFrame_Custom1;

implementation

uses
  uDataModule;

{$R *.dfm}

end.
