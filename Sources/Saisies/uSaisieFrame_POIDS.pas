unit uSaisieFrame_POIDS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxTextEdit,
  uComponent_IMC, cxCalendar;

type
  TFSaisieFrame_POIDS = class(TFSaisieFrame)
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1Date: TcxGridDBColumn;
    cxGridDBTableView1Poids: TcxGridDBColumn;
    cxGridDBTableView1IMC_Calc: TcxGridDBColumn;
    cxGridDBTableView1IMC_ID: TcxGridDBColumn;
    cxGridDBTableView1Ecart1: TcxGridDBColumn;
    cxGridDBTableView1Ecart_Cum: TcxGridDBColumn;
    cxGridDBTableView1IMG_Graisse_BF: TcxGridDBColumn;
    cxGridDBTableView1IMG_Hydrat_BW: TcxGridDBColumn;
    cxGridDBTableView1IMG_Muscle_BM: TcxGridDBColumn;
    procedure FrameResize(Sender: TObject);
    procedure cxGridDBTableView1IMC_IDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1IMC_IDGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
    FComponentManager_IMC : TComponentManager_IMC;

  end;

var
  FSaisieFrame_POIDS: TFSaisieFrame_POIDS;

implementation

{$R *.dfm}
uses
  uDataModule;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_IDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Value <> null  then
  
  ACanvas.Brush.Color := FComponentManager_IMC.getColorByID(AViewInfo.Value);
end;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_IDGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  aHintText := FComponentManager_IMC.getLabelByID(ACellViewInfo.Value);
end;

procedure TFSaisieFrame_POIDS.FrameResize(Sender: TObject);
begin
  inherited;
  Refresh;
end;

end.