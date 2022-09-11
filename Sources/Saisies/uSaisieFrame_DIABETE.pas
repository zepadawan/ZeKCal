unit uSaisieFrame_DIABETE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxCheckBox, cxCalendar, cxTimeEdit, cxTextEdit, Vcl.Menus, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPgsDlg, dxPSCore, dxPScxCommon,
  Vcl.StdCtrls, cxButtons, Winapi.ShellAPI;

type
  TFSaisieFrame_DIABETE = class(TFSaisieFrame)
    cxGridDBTableViewID: TcxGridDBColumn;
    cxGridDBTableViewDate: TcxGridDBColumn;
    cxGridDBTableViewHeure: TcxGridDBColumn;
    cxGridDBTableViewValeur: TcxGridDBColumn;
    cxGridDBTableViewApres_Repas: TcxGridDBColumn;
    procedure cxGridDBTableViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Btn_PartagerClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSaisieFrame_DIABETE: TFSaisieFrame_DIABETE;

implementation
uses
  uDataModule;
{$R *.dfm}

procedure TFSaisieFrame_DIABETE.Btn_PartagerClick(Sender: TObject);
begin
  aFileName := 'c:\Tmp\GrilleDiabete.pdf';
  aParameters := '"Transfert de la grille Glycémie" "c:\Tmp\GrilleDiabete.pdf"';
  inherited;
end;

procedure TFSaisieFrame_DIABETE.cxGridDBTableViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if Odd(AViewInfo.GridRecord.Index) then
  else
    ACanvas.Brush.Color := clSkyBlue
end;

end.
