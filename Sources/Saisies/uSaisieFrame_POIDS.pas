unit uSaisieFrame_POIDS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uSaisieFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxDBNavigator, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxTextEdit, cxCalendar,
  dxSkinsDefaultPainters;

type
  TFSaisieFrame_POIDS = class(TFSaisieFrame)
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1Date: TcxGridDBColumn;
    cxGridDBTableView1Poids: TcxGridDBColumn;
    cxGridDBTableView1IMC_ID: TcxGridDBColumn;
    cxGridDBTableView1IMC_Calc: TcxGridDBColumn;
    cxGridDBTableView1Ecart_Poids: TcxGridDBColumn;
    cxGridDBTableView1IMG_Graisse_BF: TcxGridDBColumn;
    cxGridDBTableView1IMG_Hydrat_BW: TcxGridDBColumn;
    cxGridDBTableView1IMG_Muscle_BM: TcxGridDBColumn;
    cxGridDBTableView1Ecart_Cumul: TcxGridDBColumn;
    procedure cxGridDBTableView1IMC_IDGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1IMC_IDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Déclarations privées }
    FCurrentPoids_ID: Integer;
  public
    { Déclarations publiques }
  end;

var
  FSaisieFrame_POIDS: TFSaisieFrame_POIDS;

implementation
uses
  uDataModule;

{$R *.dfm}

procedure TFSaisieFrame_POIDS.cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  FCurrentPoids_ID := DataModule1.T_POIDSID.Value;
end;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_IDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Value <> null then
    ACanvas.Brush.Color := DataModule1.FComponentManager.getCompoIMC_ColorByID(AViewInfo.Value);
end;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_IDGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  AHintText := DataModule1.FComponentManager.getFull_IMC_Label(ACellViewInfo.Value);
end;

end.

