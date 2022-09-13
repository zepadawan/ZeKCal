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
  uGraphicFrame_Diabete,
  uTraitements,
  uFrameMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxBar, cxClasses, cxButtons, dxStatusBar,
  dxRibbonStatusBar, System.ImageList, Vcl.ImgList, cxImageList;

type
  TForm1 = class(TForm)
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
    Bt_Gene_Params: TdxBarButton;
    Btn_Gene_IMG: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    Btn_Gene_Poids_MAJCumul: TdxBarButton;
    Btn_CumulPoids: TcxButton;
    Btn_Gene_SaisiePoids: TcxButton;
    Btn_Saisie_Diabete: TcxButton;
    Btn_Quitter: TcxButton;
    ImageList_16: TcxImageList;
    cxImageList_ext: TcxImageList;
    Btn_Graphic_Diabete: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure Btn_IMCClick(Sender: TObject);
    procedure Btn_FermerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Btn_SaisiePoidsClick(Sender: TObject);
    procedure Btn_Gene_SaisieDiabeteClick(Sender: TObject);
    procedure Bt_Gene_ParamsClick(Sender: TObject);
    procedure Btn_Gene_IMGClick(Sender: TObject);
    procedure TestClick(Sender: TObject);
    procedure Btn_Gene_Poids_MAJCumulClick(Sender: TObject);
    procedure Btn_CumulPoidsClick(Sender: TObject);
    procedure Btn_Gene_SaisiePoidsClick(Sender: TObject);
    procedure Btn_Saisie_DiabeteClick(Sender: TObject);
    procedure Btn_QuitterClick(Sender: TObject);
    procedure Btn_Graphic_DiabeteClick(Sender: TObject);
  private
    { Déclarations privées }
    FCurrent_Frame : TFrame;
    FFrame_Manager : TFrame_Manager;
    FTraitements : TTraitements;
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
uses
  uDataModule;

procedure TForm1.Btn_CumulPoidsClick(Sender: TObject);
begin
  FTraitements.TraitementGolbal;
  ShowFrame(FSaisieFrame_POIDS);
end;

procedure TForm1.Btn_FermerClick(Sender: TObject);
begin
  if FCurrent_Frame <> nil then
    FCurrent_Frame.Parent := nil;
end;

procedure TForm1.Btn_IMCClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_IMC);
end;

procedure TForm1.Btn_QuitterClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Btn_SaisiePoidsClick(Sender: TObject);
begin
 ShowFrame(FSaisieFrame_POIDS);
end;

procedure TForm1.Bt_Gene_ParamsClick(Sender: TObject);
begin
  ShowFrame(FSaisieFrame_PARAMS);
end;

procedure TForm1.Btn_Saisie_DiabeteClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_DIABETE);
end;

procedure TForm1.Btn_Graphic_DiabeteClick(Sender: TObject);
begin
   ShowFrame(FrameGraphic_DIABETE);
end;

procedure TForm1.Btn_Gene_IMGClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_IMG);
end;

procedure TForm1.Btn_Gene_Poids_MAJCumulClick(Sender: TObject);
begin
  FTraitements.TraitementGolbal;
end;

procedure TForm1.Btn_Gene_SaisieDiabeteClick(Sender: TObject);
begin
   ShowFrame(FSaisieFrame_DIABETE);
end;

procedure TForm1.Btn_Gene_SaisiePoidsClick(Sender: TObject);
begin
 ShowFrame(FSaisieFrame_POIDS);

end;

procedure TForm1.TestClick(Sender: TObject);
//var
//  aIMC : Double;
//  aID : Integer;
// i: Integer;
begin
//   calcul de l'IMC   : Poids / Talle au carré
//  aIMC := TUtils.IMC(100.8);
  FTraitements.TraitementGolbal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FFrame_Manager := TFrame_Manager.Create;
  FTraitements := TTraitements.Create;
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
  FFrame_Manager.AddFrame(FrameGraphic_DIABETE);

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
  FrameGraphic_DIABETE := TFrameGraphic_DIABETE.Create(Form1);
  FSaisieFrame_PARAMS := TFSaisieFrame_PARAMS.Create(Form1);

end;

finalization
begin
  FSaisieFrame_IMC.Free;
  FSaisieFrame_IMG.Free;
  FSaisieFrame_POIDS.Free;
  FSaisieFrame_DIABETE.Free;
  FrameGraphic_DIABETE.Free;
  FSaisieFrame_PARAMS.Free;
end;

end.
