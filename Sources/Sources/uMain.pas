unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  uUtils,
  uFrame_Manager,
  uSaisieFrame_IMC, uSaisieFrame_IMG,
  uSaisieFrame_POIDS, uSaisieFrame_DIABETE, uSaisieFrame_PARAMS,
  uDataModule,
  uFrameMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxBar, cxClasses, cxButtons, dxStatusBar,
  dxRibbonStatusBar;

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
    dxBarSubItem4: TdxBarSubItem;
    Btn_Gene_SaisieDiabete: TdxBarButton;
    FFrameMenu1: TFFrameMenu;
    Bt_Gene_Params: TdxBarButton;
    Btn_Gene_IMG: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    procedure FormCreate(Sender: TObject);
    procedure Btn_IMCClick(Sender: TObject);
    procedure Btn_FermerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Btn_SaisiePoidsClick(Sender: TObject);
    procedure TestClick(Sender: TObject);
    procedure Btn_Gene_SaisieDiabeteClick(Sender: TObject);
    procedure Bt_Gene_ParamsClick(Sender: TObject);
    procedure Btn_Gene_IMGClick(Sender: TObject);
    procedure dxBarSubItem3Click(Sender: TObject);
  private
    { Déclarations privées }
    FCurrent_Frame : TFrame;
    FFrame_Manager : TFrame_Manager;
    procedure ShowFrame(aFrame:TFrame);
  public
    { Déclarations publiques }
    procedure initialiizeFrames;
    procedure initializeComponents;
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

procedure TForm1.Bt_Gene_ParamsClick(Sender: TObject);
begin
  ShowFrame(FSaisieFrame_PARAMS);
end;

procedure TForm1.dxBarSubItem3Click(Sender: TObject);
begin
//  DataModule1.FComponentManager.
end;

procedure TForm1.Btn_Gene_IMGClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_IMG);
end;

procedure TForm1.Btn_Gene_SaisieDiabeteClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_DIABETE);
end;

procedure TForm1.TestClick(Sender: TObject);
//var
//  aIMC : Double;
//  aID : Integer;
begin
//   calcul de l'IMC   : Poids / Talle au carré
//  aIMC := TUtils.IMC(100.8);
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

procedure TForm1.initialiizeFrames;
begin
  FFrame_Manager.AddFrame(FSaisieFrame_IMC);
  FFrame_Manager.AddFrame(FSaisieFrame_IMG);
  FFrame_Manager.AddFrame(FSaisieFrame_POIDS);
  FFrame_Manager.AddFrame(FSaisieFrame_DIABETE);
  FFrame_Manager.AddFrame(FSaisieFrame_PARAMS);

end;
procedure TForm1.initializeComponents;
begin
//  FComponentManager.initialize;
end;

procedure TForm1.ShowFrame(aFrame: TFrame);
begin
  Btn_FermerClick(Self);
  FCurrent_Frame := FFrame_Manager.getFramebyFrame(aFrame);
  if FCurrent_Frame <> nil then
    FCurrent_Frame.Parent :=  Panel_Frame;
end;


//********************

initialization
begin
  FSaisieFrame_IMC := TFSaisieFrame_IMC.Create(Form1);
  FSaisieFrame_IMG := TFSaisieFrame_IMG.Create(Form1);
  FSaisieFrame_POIDS := TFSaisieFrame_POIDS.Create(Form1);
  FSaisieFrame_DIABETE := TFSaisieFrame_DIABETE.Create(Form1);
  FSaisieFrame_PARAMS := TFSaisieFrame_PARAMS.Create(Form1);

end;

finalization
begin
  FSaisieFrame_IMC.Free;
  FSaisieFrame_IMG.Free;
  FSaisieFrame_POIDS.Free;
  FSaisieFrame_DIABETE.Free;
  FSaisieFrame_PARAMS.Free;
end;

end.
