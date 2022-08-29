unit uSaisieFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCustomFrame, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, MemDS, DBAccess, MyAccess, cxDBNavigator,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxPgsDlg, dxPSCore, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxCommon;

type
  TFSaisieFrame = class(TFCustomFrame)
    Panel_Client: TPanel;
    Panel_Grid: TPanel;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxDBNavigator: TcxDBNavigator;
    PanelCBottom: TPanel;
    Printer: TdxComponentPrinter;
    PrinterStyleManager: TdxPrintStyleManager;
    Btn_Print: TcxButton;
    PrinterLink_Grid: TdxGridReportLink;
    PrinterStyleManagerStyle1: TdxPSPrintStyle;
    procedure Btn_PrintClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSaisieFrame: TFSaisieFrame;

implementation
uses
  uDataModule;



{$R *.dfm}

procedure TFSaisieFrame.Btn_PrintClick(Sender: TObject);
begin
  inherited;
  Printer.Preview(True);
end;

end.
