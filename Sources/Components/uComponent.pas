unit uComponent;

interface

uses
  System.Classes, System.Contnrs, Vcl.Graphics,
  uComponent_IMC;

type

  TComponentManager = class(TComponent)
  private
  public
    FCompoList: TObjectList;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure initialize;
    function getCompoIMC_ByID( aID: Integer): TComponent_IMC;
    function getCompoIMC_IDByValue(aValue : Double): Integer;
    function getCompoIMC_LabelByID(aID : Integer): String;
    function getCompoIMC_ColorByID(aID : Integer): TColor;

  end;

implementation

uses
  uDataModule;


{ TComponentManager_IMC }

constructor TComponentManager.Create(AOwner: TComponent);
begin
  inherited;
  FCompoList := TObjectList.Create;
  initialize;
end;

destructor TComponentManager.Destroy;
begin
  FCompoList.Free;
  inherited;
end;

function TComponentManager.getCompoIMC_ColorByID(aID: Integer): TColor;
begin
  Result := getCompoIMC_ByID(aID).IMC_Color;
end;

function TComponentManager.getCompoIMC_ByID(aID: Integer): TComponent_IMC;
var
  i: Integer;
  aCompoIMC: TComponent_IMC;
begin
  Result := nil;
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMC := TComponent_IMC(FCompoList[i]);
    if (aCompoIMC.IMC_ID = aID) then
    begin
      Result := aCompoIMC;
    end;
  end;
end;

function TComponentManager.getCompoIMC_IDByValue(aValue: Double): Integer;
var
  i: Integer;
  aCompoIMC: TComponent_IMC;
begin
  Result := 0;
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMC := TComponent_IMC(FCompoList[i]);
    if (aValue >= aCompoIMC.IMC_Min) and (aValue < aCompoIMC.IMC_Max) then
    begin
      Result := aCompoIMC.IMC_ID;
    end;
  end;
end;

function TComponentManager.getCompoIMC_LabelByID(aID: Integer): String;
begin
  Result := getCompoIMC_ByID(aID).IMC_Label;
end;

procedure TComponentManager.initialize;
var
  FComponent_IMC: TComponent_IMC;
begin
  FCompoList.Clear;
  with DataModule1 do
  begin
    T_IMC.First;
    while not T_IMC.eof do
    begin
      FComponent_IMC := TComponent_IMC.Create(self);
      FComponent_IMC.IMC_ID := DataModule1.T_IMCID.Value;
      FComponent_IMC.IMC_Label := DataModule1.T_IMCLabel.Value;
      FComponent_IMC.IMC_Min := DataModule1.T_IMCMin.Value;
      FComponent_IMC.IMC_Max := DataModule1.T_IMCMx.Value;
      FComponent_IMC.IMC_Color := DataModule1.T_IMCColor.Value;
      FCompoList.Add(FComponent_IMC);
      T_IMC.Next;
    end;
  end;
end;

end.
