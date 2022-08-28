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
  dxSkinsDefaultPainters, cxMaskEdit;

type
  TFSaisieFrame_POIDS = class(TFSaisieFrame)
    cxGridDBTableViewID: TcxGridDBColumn;
    cxGridDBTableViewDate: TcxGridDBColumn;
    cxGridDBTableViewPoids: TcxGridDBColumn;
    cxGridDBTableViewIMC_ID: TcxGridDBColumn;
    cxGridDBTableViewIMC_Calc: TcxGridDBColumn;
    cxGridDBTableViewEcart_Poids: TcxGridDBColumn;
    cxGridDBTableViewEcart_Cumul: TcxGridDBColumn;
    cxGridDBTableViewIMG_Graisse_BF: TcxGridDBColumn;
    cxGridDBTableViewIMG_Hydrat_BW: TcxGridDBColumn;
    cxGridDBTableViewIMG_Muscle_BM: TcxGridDBColumn;
    procedure cxGridDBTableView1IMC_IDGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1IMC_IDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1Ecart_PoidsCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1Ecart_CumulCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FrameResize(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFSaisieFrame_POIDS.cxGridDBTableView1Ecart_CumulCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Value <=0 then
  begin
    ACanvas.Font.Color := clGreen;
    ACanvas.Font. Style := [fsbold];
  end else
  begin
    ACanvas.Font.Color := clRed;
    ACanvas.Font. Style := [fsbold];
  end;
end;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1Ecart_PoidsCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Value <=0 then
  begin
    ACanvas.Font.Color := clGreen;
    ACanvas.Font. Style := [fsbold];
  end else
  begin
    ACanvas.Font.Color := clRed;
    ACanvas.Font. Style := [fsbold];
  end;
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
  if ACellViewInfo.Value<> Null then
    AHintText := DataModule1.FComponentManager.getFull_IMC_Label(ACellViewInfo.Value);
end;


procedure TFSaisieFrame_POIDS.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_TAB then
  begin
    Key := 0;
    cxGridDBTableView.Controller.FocusedRowIndex := cxGridDBTableView.Controller.FocusedRowIndex + 1;
    cxGridDBTableView.Controller.EditingController.ShowEdit;
  end;
end;

procedure TFSaisieFrame_POIDS.FrameResize(Sender: TObject);
begin
  inherited;
  cxGridDBTableView.Controller.FocusedColumn:= cxGridDBTableViewDate;
end;

end.

