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
procedure TBlock1.Execute;
begin;
  {Write here your code}
end;

initialization
  {$R *.lfm}
finalization

end.
