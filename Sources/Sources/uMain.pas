unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxStatusBar, dxRibbonStatusBar,
  dxRibbonSkins, dxRibbonCustomizationForm, cxClasses, dxRibbon,
  dxBar, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  uUtils,
  uFrame_Manager,
  uSaisieFrame_IMC, uSaisieFrame_POIDS, uSaisieFrame_DIABETE, uSaisieFrame_PARAMS,
  uComponent_IMC, uFrameMenu;

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
    procedure FormCreate(Sender: TObject);
    procedure Btn_IMCClick(Sender: TObject);
    procedure Btn_FermerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Btn_SaisiePoidsClick(Sender: TObject);
    procedure TestClick(Sender: TObject);
    procedure Btn_Gene_SaisieDiabeteClick(Sender: TObject);
    procedure Bt_Gene_ParamsClick(Sender: TObject);
  private
    { Déclarations privées }
    FCurrent_Frame : TFrame;
    FFrame_Manager : TFrame_Manager;
    FComponentManager_IMC : TComponentManager_IMC;
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

uses uDataModule;

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

procedure TForm1.Btn_Gene_SaisieDiabeteClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_DIABETE);
end;

procedure TForm1.TestClick(Sender: TObject);
var
  aIMC : Double;
  aID : Integer;
begin
//   calcul de l'IMC   : Poids / Talle au carré
//  aIMC := TUtils.IMC(100.8);
  aID := FComponentManager_IMC.getIDByValue(34.98);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FFrame_Manager := TFrame_Manager.Create;
  initialiizeFrames;
  FComponentManager_IMC := TComponentManager_IMC.Create(Self);
  DataModule1.FComponentManager_IMC := FComponentManager_IMC;
  FSaisieFrame_POIDS.FComponentManager_IMC := FComponentManager_IMC;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Btn_FermerClick(Self);
  FComponentManager_IMC.Free;
end;

procedure TForm1.initialiizeFrames;
begin
  FFrame_Manager.AddFrame(FSaisieFrame_IMC);
  FFrame_Manager.AddFrame(FSaisieFrame_POIDS);
  FFrame_Manager.AddFrame(FSaisieFrame_DIABETE);
  FFrame_Manager.AddFrame(FSaisieFrame_PARAMS);

end;
procedure TForm1.initializeComponents;
begin
  FComponentManager_IMC.initialize;
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
  FSaisieFrame_DIABETE := TFSaisieFrame_DIABETE.Create(Form1);
  FSaisieFrame_PARAMS := TFSaisieFrame_PARAMS.Create(Form1);

end;

finalization
begin
  FSaisieFrame_IMC.Free;
  FSaisieFrame_POIDS.Free;
  FSaisieFrame_DIABETE.Free;
  FSaisieFrame_PARAMS.Free;
end;

end.
