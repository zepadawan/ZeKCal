unit uSaisieFrame_POIDS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxTextEdit;

type
  TFSaisieFrame_POIDS = class(TFSaisieFrame)
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1Date: TcxGridDBColumn;
    cxGridDBTableView1Poids: TcxGridDBColumn;
    cxGridDBTableView1IMC_Calc: TcxGridDBColumn;
    cxGridDBTableView1IMC_ID: TcxGridDBColumn;
    procedure cxGridDBTableView1IMC_CalcCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FrameResize(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSaisieFrame_POIDS: TFSaisieFrame_POIDS;

implementation

{$R *.dfm}
uses
  uDataModule;

procedure TFSaisieFrame_POIDS.cxGridDBTableView1IMC_CalcCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Style :=  [fsBold];

  if (AViewInfo.Value > 18) and (AViewInfo.Value < 25) then
  begin
    ACanvas.Brush.Color := 65280;
  end else
  if (AViewInfo.Value >= 25) and (AViewInfo.Value < 30) then
  begin
    ACanvas.Brush.Color := 65535;
  end else
  if (AViewInfo.Value >= 30) and (AViewInfo.Value < 35) then
  begin
    ACanvas.Brush.Color := 33023;
  end else
  if (AViewInfo.Value >= 35) and (AViewInfo.Value < 40) then
  begin
    ACanvas.Brush.Color := 255;
  end;


end;

procedure TFSaisieFrame_POIDS.FrameResize(Sender: TObject);
begin
  inherited;
  Refresh;
end;

end.
