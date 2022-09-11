unit uGraphicFrame_Custom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, Vcl.ExtCtrls, VCLTee.TeeData, VCLTee.Series;

type
  TFrameGraphic_Custom = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBChart: TDBChart;
    Series1: TBarSeries;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

implementation
uses
  uDataModule;

{$R *.dfm}

end.
