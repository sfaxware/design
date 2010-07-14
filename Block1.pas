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
  Classes;

procedure TBlock1.Execute;
var
  S1, S2, S3: Integer;
begin;
  Port1.Pop(S1);
  Port2.Pop(S2);
  S3 := S1 + S2;
  Port3.Push(S3);
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock1);

finalization

end.
