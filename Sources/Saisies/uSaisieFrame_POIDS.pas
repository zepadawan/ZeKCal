unit uSaisieFrame_POIDS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxTextEdit,
//  uComponentManager,
  cxCalendar, dxSkinsDefaultPainters;

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
    procedure FrameResize(Sender: TObject);
    procedure cxGridDBTableView1IMC_IDGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView1IMC_CalcGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxGridDBTableView1IMC_CalcCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
//    FComponentManager : TComponentManager;

  end;

var
  FSaisieFrame_POIDS: TFSaisieFrame_POIDS;

implementation

{$R *.dfm}
uses
  uDataModule;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
    if Odd(AViewInfo.GridRecord.Index) then
  else
    ACanvas.Brush.Color := clSkyBlue

end;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_CalcCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Value <> null  then
    ACanvas.Brush.Color := DataModule1.FComponentManager.getCompoIMC_ColorByID(AViewInfo.Value);

end;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_CalcGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
//  AHintText :=DataModule1.T_IMCLabel.Value + ' : ( ' + DataModule1.T_IMCMin.AsString + ' - ' + DataModule1.T_IMCMax.AsString   + ' )';

end;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_IDGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
//  aHintText := FComponentManager.getCompoIMC_LabelByID(ACellViewInfo.Value);
end;

procedure TFSaisieFrame_POIDS.FrameResize(Sender: TObject);
begin
  inherited;
  Refresh;
end;

end.
