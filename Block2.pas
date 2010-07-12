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
procedure TBlock2.Execute;
begin;
  {Write here your code}
end;

initialization

finalization

end.
