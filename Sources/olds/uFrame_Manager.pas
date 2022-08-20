unit uFrame_Manager;

interface
uses
  System.Contnrs, System.Classes,
  Vcl.Forms, Vcl.ExtCtrls;

type


  TFrame_Manager = class(TObject)
  private
  public
    constructor Create;
    destructor Destroy; override;
    procedure registerFrames(AOwner: TComponent);
    function AddFrame(aFrame: TFrame): TFrame;
    function getFramebyFrame(aFrame: TFrame): TFrame;

  end;

var
   FFrames_List : TObjectList;

implementation

{ TFrame_Manager }

constructor TFrame_Manager.Create();
begin
   FFrames_List := TObjectList.Create();
end;

destructor TFrame_Manager.Destroy;
begin
  FFrames_List.Free;
  inherited;
end;


function TFrame_Manager.AddFrame(aFrame: TFrame): TFrame;
begin
  Result := nil;
  if getFramebyFrame(aFrame)= nil  then
  begin
    FFrames_List.Add(aFrame);
    Result := aFrame;
  end;
end;

function TFrame_Manager.getFramebyFrame(aFrame: TFrame): TFrame;
var
  i: Integer;
  aFrameTmp: TFrame;
begin
  Result := nil;
  for I := 0 to FFrames_List.Count - 1 do
  begin
    aFrameTmp := TFrame(FFrames_List[i]);
    if aFrameTmp = aFrame  then
    begin
      Result := aFrameTmp;
      Break;
    end;
  end;
end;


procedure TFrame_Manager.registerFrames(AOwner: TComponent);
begin
end;

end.
