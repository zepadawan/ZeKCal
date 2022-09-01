unit uGraphicFrame_Diabete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uGraphicFrame_Custom, VclTee.TeeGDIPlus, Data.DB, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, Vcl.ExtCtrls;

type
  TFrameGraphic_Custom1 = class(TFrameGraphic_Custom)
    Series2: TBarSeries;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FrameGraphic_Custom1: TFrameGraphic_Custom1;

implementation
{$R *.dfm}
uses
  uDataModule;

end.
