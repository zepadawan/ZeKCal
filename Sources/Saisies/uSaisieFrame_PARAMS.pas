unit uSaisieFrame_PARAMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSaisieFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxTextEdit;

type
  TFSaisieFrame_PARAMS = class(TFSaisieFrame)
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1Label: TcxGridDBColumn;
    cxGridDBTableView1Value: TcxGridDBColumn;
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSaisieFrame_PARAMS: TFSaisieFrame_PARAMS;

implementation
uses
  uDataModule;

{$R *.dfm}

procedure TFSaisieFrame_PARAMS.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
    if Odd(AViewInfo.GridRecord.Index) then
    //
  else
    ACanvas.Brush.Color := clWebLightBlue;


end;

end.
