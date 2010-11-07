program SimulateDesign;
{$MODE OBJFPC}{$LONGSTRINGS ON}{$INTERFACE CORBA}

uses
  SysUtils, Design;

var
  DesignSimulator: TTopDesign;
  progPath, ProgDir, SimDir: string;

begin
  ProgPath := ParamStr(0);
  ProgDir := ExtractFileDir(ProgPath);
  SimDir := ExtractFileDir(ProgDir) + '/simulations';
  if not DirectoryExists(SimDir) then begin
    MkDir(SimDir);
  end;
  ChDir(SimDir);
  DesignSimulator := TTopDesign.Create(nil);
  DesignSimulator.Run;
  DesignSimulator.Free;
end.
