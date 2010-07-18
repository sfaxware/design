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
  Classes, Complex, ComplexMatrix, ComplexVectors;

procedure TFftBlock.Execute;
var
  S: Integer;
  V:
begin;
  Port1.Pop(S);
  Port2.Push(S);
end;

initialization
  {$R *.lfm}
  RegisterClass(TFftBlock);

finalization

end.
