unit uComponent_IMG;

interface
uses
  System.Classes, System.Contnrs, Vcl.Graphics, System.sysUtils,
  uUtils;

type
  TComponent_IMG = class;

  TComponentManager_IMG = class(TComponent)
  private
  public
    FCompoList: TObjectList;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure initialize;
    function getCompoIMG_IDByValue(aID: Integer): TComponent_IMG;
    function getCompoIMG_ColorByID(aIMG_ID: Integer): TColor;
    function getCompoIMG_LongHint(aIMG_Graisse : Double): string;
    function getCompoIMG_IMGIDByValue(aIMG_Graisse: Double): Integer;
    function getCompoIMC_ColorByID(aIMGValue : Double) : TColor;


  end;

  TComponent_IMG = class(TObject)
  private
    FIMG_ID: Integer;
    FIMG_Label: string;
    FIMG_Max: Integer;
    FIMG_Min: Integer;
    FIMG_Color: TColor;
    FIMG_Hydrat_Min: Double;
    FIMG_Graisse_Max: Double;
    FIMG_Graisse_Min: Double;
    FIMG_Hydrat_Max: Double;
    procedure SetIMG_ID(const Value: Integer);
    procedure SetIMG_Label(const Value: string);
    procedure SetIMG_Color(const Value: TColor);
    procedure SetIMG_Max(const Value: Integer);
    procedure SetIMG_Min(const Value: Integer);
    procedure SetIMG_Graisse_Max(const Value: Double);
    procedure SetIMG_Graisse_Min(const Value: Double);
    procedure SetIMG_Hydrat_Max(const Value: Double);
    procedure SetIMG_Hydrat_Min(const Value: Double);
  public
    constructor Create(); overload;
    property IMG_ID: Integer read FIMG_ID write SetIMG_ID;
    property IMG_Label: string read FIMG_Label write SetIMG_Label;
    property  IMG_Graisse_Min : Double read FIMG_Graisse_Min write SetIMG_Graisse_Min;
    property  IMG_Graisse_Max : Double read FIMG_Graisse_Max write SetIMG_Graisse_Max;
    property  IMG_Hydrat_Min : Double read FIMG_Hydrat_Min write SetIMG_Hydrat_Min;
    property  IMG_Hydrat_Max : Double read FIMG_Hydrat_Max write SetIMG_Hydrat_Max;
    property IMG_Color: TColor read FIMG_Color write SetIMG_Color;
  end;

implementation

uses
  uDataModule;

{ TComponent_IMG }

constructor TComponent_IMG.Create();
begin
end;

procedure TComponent_IMG.SetIMG_ID(const Value: Integer);
begin
  FIMG_ID := Value;
end;

procedure TComponent_IMG.SetIMG_Color(const Value: TColor);
begin
  FIMG_Color := Value;
end;

procedure TComponent_IMG.SetIMG_Graisse_Max(const Value: Double);
begin
  FIMG_Graisse_Max := Value;
end;

procedure TComponent_IMG.SetIMG_Graisse_Min(const Value: Double);
begin
  FIMG_Graisse_Min := Value;
end;

procedure TComponent_IMG.SetIMG_Hydrat_Max(const Value: Double);
begin
  FIMG_Hydrat_Max := Value;
end;

procedure TComponent_IMG.SetIMG_Hydrat_Min(const Value: Double);
begin
  FIMG_Hydrat_Min := Value;
end;

procedure TComponent_IMG.SetIMG_Label(const Value: string);
begin
  FIMG_Label := Value;
end;

procedure TComponent_IMG.SetIMG_Max(const Value: Integer);
begin
  FIMG_Max := Value;
end;

procedure TComponent_IMG.SetIMG_Min(const Value: Integer);
begin
  FIMG_Min := Value;
end;


// TComponentManager_IMG

constructor TComponentManager_IMG.Create(AOwner: TComponent);
begin
  inherited;
  FCompoList := TObjectList.Create;
  initialize;
end;

destructor TComponentManager_IMG.Destroy;
begin
  FCompoList.Free;
  inherited;
end;

function TComponentManager_IMG.getCompoIMG_IDByValue(aID: Integer): TComponent_IMG;
var
  i: Integer;
  aCompoIMG: TComponent_IMG;
begin
  Result := nil;
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMG := TComponent_IMG(FCompoList[i]);
    if (aCompoIMG.IMG_ID = aID) then
    begin
      Result := aCompoIMG;
      Break;
    end;
  end;
end;


function TComponentManager_IMG.getCompoIMG_ColorByID(aIMG_ID: Integer): TColor;
var
  aCompoIMG: TComponent_IMG;
begin
  Result := 0;
  if aIMG_ID <> 0  then
  begin
    aCompoIMG := getCompoIMG_IDByValue(aIMG_ID);
    Result := aCompoIMG.IMG_Color;
  end;
end;

function TComponentManager_IMG.getCompoIMG_IMGIDByValue(aIMG_Graisse: Double): Integer;
var
  i: Integer;
  aCompoIMG :TComponent_IMG;
begin
  Result := 0;
  for i := 0 to FCompoList.Count - 1 do
  begin
    aCompoIMG := TComponent_IMG(FCompoList[i]);
      if (aIMG_Graisse >= aCompoIMG.IMG_Graisse_Min) and (aIMG_Graisse < aCompoIMG.IMG_Graisse_Max) then
      begin
        Result := aCompoIMG.IMG_ID;
      end;
    end;
end;

function TComponentManager_IMG.getCompoIMG_LongHint(aIMG_Graisse: Double): string;
var
  aID : Integer;
  aCompoIMG: TComponent_IMG;
begin
  Result := '';
  aID := getCompoIMG_IMGIDByValue(aIMG_Graisse);
  aCompoIMG := getCompoIMG_IDByValue(aID);
  Result := aCompoIMG.FIMG_Label + ' - ( Entre ' + FloatToStr(aCompoIMG.IMG_Graisse_Min) +  '% et ' + FloatToStr(aCompoIMG.IMG_Graisse_Max) + '% )';
end;

function TComponentManager_IMG.getCompoIMC_ColorByID(aIMGValue: Double): TColor;
var
  aID : Integer;
  aCompoIMG: TComponent_IMG;
begin
  Result := 255;
  if aIMGValue <> 0 then
  begin
    aID := getCompoIMG_IMGIDByValue(aIMGValue);
    aCompoIMG := getCompoIMG_IDByValue(aID);
    Result := aCompoIMG.IMG_Color;
  end;
end;






procedure TComponentManager_IMG.initialize;
var
  FComponent_IMG: TComponent_IMG;
begin
  FCompoList.Clear;
  with DataModule1 do
  begin
    T_IMG.First;
    while not T_IMG.eof do
    begin
      FComponent_IMG := TComponent_IMG.Create();
      FComponent_IMG.IMG_ID := DataModule1.T_IMGID.Value;
      FComponent_IMG.IMG_Label := DataModule1.T_IMGLabel.AsString;
      FComponent_IMG.IMG_Graisse_Min := DataModule1.T_IMGGraisse_Min.Value;
      FComponent_IMG.IMG_Graisse_Max := DataModule1.T_IMGGraisse_Max.Value;
      FComponent_IMG.IMG_Hydrat_Min := DataModule1.T_IMGHydrat_Min.Value;
      FComponent_IMG.IMG_Hydrat_Max := DataModule1.T_IMGHydra_Max.Value;
      FComponent_IMG.IMG_Color := DataModule1.T_IMGColor.Value;
      FCompoList.Add(FComponent_IMG);
      T_IMG.Next;
    end;
  end;
end;

end.
