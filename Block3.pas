unit Block3;
interface
uses
  Blocks;

type
  
  { TBlock3 }

  TBlock3 = class(TBlock)
    Port1: TInputPort;
    Port2: TOutputPort;
  public
    procedure Execute; override;
  end;

implementation

uses
  Classes;

procedure TBlock3.Execute;
var
  S: Integer;
begin;
  Port1.Pop(S);
  Port2.Push(S);
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock3);

finalization

end.
