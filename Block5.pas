unit Block5;
{$mode objfpc}{$H+}{$interfaces corba}
interface

uses
  Sources, Blocks;

type
  
  { TBlock5 }

  TBlock5 = class(TRandomSource)
    Output: TOutputPort;
  public
    procedure Execute; override;
  end;

implementation

uses
  Classes;

procedure TBlock5.Execute;
begin;
  inherited;
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock5);

finalization

end.
