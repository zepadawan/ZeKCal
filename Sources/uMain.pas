unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxStatusBar, dxRibbonStatusBar,
  dxRibbonSkins, dxRibbonCustomizationForm, cxClasses, dxRibbon,
  dxBar, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  uUtils,
  uFrame_Manager, uSaisieFrame_IMC, uSaisieFrame_POIDS;

type
  TForm1 = class(TForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    Panel_Frame: TPanel;
    Panel1: TPanel;
    Btn_Fermer: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    Btn_IMC: TdxBarButton;
    Btn_SaisiePoids: TdxBarLargeButton;
    Test: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure Btn_IMCClick(Sender: TObject);
    procedure Btn_FermerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Btn_SaisiePoidsClick(Sender: TObject);
    procedure TestClick(Sender: TObject);
  private
    { Déclarations privées }
    FCurrent_Frame : TFrame;
    FFrame_Manager : TFrame_Manager;
    procedure getCurrentFrame(aFrame : TFrame);
    procedure ShowFrame(aFrame:TFrame);
  public
    { Déclarations publiques }
    procedure initialiizeFrames;
  end;

var
  Form1: TForm1;


implementation
{$R *.dfm}

procedure TForm1.Btn_FermerClick(Sender: TObject);
begin
  if FCurrent_Frame <> nil then
    FCurrent_Frame.Parent := nil;
end;

procedure TForm1.Btn_IMCClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_IMC);
end;

procedure TForm1.Btn_SaisiePoidsClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_POIDS);
end;

procedure TForm1.TestClick(Sender: TObject);
var
  aIMC : Double;
begin
//   calcul de l'IMC   : Poids / Talle au carré
  aIMC := TUtils.IMC(100.8);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FFrame_Manager := TFrame_Manager.Create;
  initialiizeFrames;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Btn_FermerClick(Self);
end;

procedure TForm1.getCurrentFrame(aFrame: TFrame);
begin
   FCurrent_Frame := FFrame_Manager.getFramebyFrame(FSaisieFrame_IMC);
   FCurrent_Frame.Parent :=  Panel_Frame;
end;

procedure TForm1.initialiizeFrames;
begin
  FFrame_Manager.AddFrame(FSaisieFrame_IMC);
  FFrame_Manager.AddFrame(FSaisieFrame_POIDS);
end;
procedure TForm1.ShowFrame(aFrame: TFrame);
begin
  Btn_FermerClick(Self);
  FCurrent_Frame := FFrame_Manager.getFramebyFrame(aFrame);
  FCurrent_Frame.Parent :=  Panel_Frame;
end;


//********************

initialization
begin
  FSaisieFrame_IMC := TFSaisieFrame_IMC.Create(Form1);
  FSaisieFrame_POIDS := TFSaisieFrame_POIDS.Create(Form1);
end;

finalization
begin
  FSaisieFrame_IMC.Free;
  FSaisieFrame_POIDS.Free;
end;

end.
