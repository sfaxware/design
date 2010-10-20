unit FftBlock;
interface
uses
  Blocks;

type
  
  { TBlock3 }

  TFftBlock = class(TBlock)
    Port1: TInputPort;
    Port2: TOutputPort;
  public
    procedure Execute; override;
  end;

implementation

uses
  Classes, Complex, ComplexVectors;

procedure TFftBlock.Execute;
var
  S: Integer;
  V: TVector;
  i: Integer;
begin;
  Port1.Pop(V, SizeOf(V));
  {V should be a vector of 128 samples, so FFT size if 7}
  FFT(V.Values^, 7);
  for i := 0 to V.n - 1 do begin
    S := Round(V.Values[i].x);
    Port2.Push(S);
    S := Round(V.Values[i].y);
    Port2.Push(S);
  end;
end;

initialization
  {$R *.lfm}
  RegisterClass(TFftBlock);

finalization

end.
