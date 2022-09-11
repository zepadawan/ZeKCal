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
  dxPScxGridLayoutViewLnk, dxPScxCommon, Winapi.ShellAPI;

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
    Btn_Partager: TcxButton;
    Btn_Pdf: TcxButton;
    procedure Btn_PrintClick(Sender: TObject);
    procedure Btn_PdfClick(Sender: TObject);
    procedure Btn_PartagerClick(Sender: TObject);
  private
    { Déclarations privées }
  protected
    aFileName: string;
    aParameters : String;
    aExeName : string;
  public
    { Déclarations publiques }
  end;

var
  FSaisieFrame: TFSaisieFrame;

implementation
uses
  uDataModule;



{$R *.dfm}

procedure TFSaisieFrame.Btn_PartagerClick(Sender: TObject);
begin
  aExeName := 'D:\Dev\Project\ZeKCal\Utils\ZeMail.exe';
  PrinterLink_Grid.ExportToPDF(aFileName,False);
  ShellExecute(Self.Handle,'open',PWideChar(aExeName),PWideChar(aParameters),nil,SW_SHOW);
end;

procedure TFSaisieFrame.Btn_PdfClick(Sender: TObject);
begin
  inherited;
  Printer.ExportToPDF(PrinterLink_Grid);
end;

procedure TFSaisieFrame.Btn_PrintClick(Sender: TObject);
begin
  inherited;
  Printer.Preview(True);
end;

end.
