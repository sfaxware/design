unit Block4;
{$mode objfpc}{$H+}{$interfaces corba}
interface

uses
  Sources;

type
  TBlock4 = class(TRandomSource)
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
