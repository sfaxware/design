unit Block2;
interface
uses
  Blocks;

type
  
  { TBlock2 }

  TBlock2 = class(TBlock)
    Port1: TOutputPort;
    Port2: TInputPort;
  public
    procedure Execute; override;
  end;

implementation

uses
  Classes, ComplexVectors;

procedure TBlock2.Execute;
var
  S: Integer;
  V: TVector;
  i: Integer;
begin;
  V := Vector(128);
  for i := 0 to V.n - 1 do begin
    Port2.Pop(S);
    V.Values[i].x := S;
    Port2.Pop(S);
    V.Values[i].y := S;
  end;
  Port1.Push(V, SizeOf(V));
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock2);

finalization

end.
