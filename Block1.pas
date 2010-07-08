unit Block1;
interface
uses
  Blocks;

type
  TBlock1 = class(TBlock)
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
