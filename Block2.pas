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
  Classes;

procedure TBlock2.Execute;
var
  S: Integer;
begin;
  Port2.Pop(S);
  Port1.Push(S);
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock2);

finalization

end.
