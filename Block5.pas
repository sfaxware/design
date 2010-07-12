unit Block5;
{$mode objfpc}{$H+}{$interfaces corba}
interface

uses
  Sources;

type
  TBlock5 = class(TRandomSource)
  public
    procedure Execute; override;
  end;

implementation

uses
  Classes;

procedure TBlock5.Execute;
begin;
  {Write here your code}
end;

initialization
  {$R *.lfm}
  RegisterClass(TBlock5);

finalization
end.
