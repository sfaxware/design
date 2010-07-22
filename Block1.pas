unit Block1;
interface
uses
  Blocks;

type
  
  { TBlock1 }

  TBlock1 = class(TBlock)
    Port1: TInputPort;
    Port2: TInputPort;                  
    Port3: TOutputPort;
   public
    procedure Execute; override;
  end;

implementation

uses
  Classes, ComplexVectors, Complex;

procedure TBlock1.Execute;
var
  S: Integer;
  z: TComplex;
  V: TVector;
begin;
  Port1.Pop(S);
  z.x := S;
  Port1.Pop(S);
  z.y := S;
  Port2.Pop(V, SizeOf(V));
  Mul(V, z);
  Port3.Push(V, SizeOf(V));
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock1);

finalization

end.
