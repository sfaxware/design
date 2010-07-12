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
procedure TBlock3.Execute;
begin;
  {Write here your code}
end;

initialization

finalization

end.
