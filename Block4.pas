unit Block4;
{$mode objfpc}{$H+}{$interfaces corba}
interface

uses
  Sources, Blocks;

type
  
  { TBlock4 }

  TBlock4 = class(TRandomSource)
    Output: TOutputPort;
    procedure Execute; override;
  end;

implementation

uses
  Classes;

procedure TBlock4.Execute;
begin;
  inherited;
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock4);

finalization
end.
