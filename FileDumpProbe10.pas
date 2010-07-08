unit FileDumpProbe10;
{$mode objfpc}{$H+}{$interfaces corba}
interface

uses
  Blocks;

type
  TFileDumpProbe10 = class(TFileDumpProbe)
  public
    procedure Execute; override;
  end;

implementation

uses
  Classes;

procedure TFileDumpProbe10.Execute;
begin;
  {Write here your code}
  {You may need to remove the following line}
  inherited Execute;
end;

initialization
  {$R *.lfm}
  RegisterClass(TFileDumpProbe10);

finalization

end.