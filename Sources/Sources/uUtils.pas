unit uUtils;

interface
uses
  System.SysUtils,  System.Math;

  const TAILLE ='1,73';

type
  TUtils = class
   public
     class function IMC(aPoids:Double): Double;
  end;

implementation

{ TUtils }

class function TUtils.IMC(aPoids: Double): Double;
var
  aTaille2 : Double;
  aCalc : Double;
  aRes : string;
begin
  Result := 0;
  if aPoids <> 0  then
  begin
    aTaille2 := StrToFloat(TAILLE) * StrToFloat(TAILLE);
    aCalc := (aPoids/aTaille2);
    aRes :=  FormatFloat('00.00',aCalc);
    Result := StrToFloat(aRes)
  end;

end;

end.
