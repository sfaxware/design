program SimulateDesign;

uses
  Design;

begin
  DesignSimulator := TCustomDesign.Create(nil);
  DesignSimulator.Run;
  DesignSimulator.Free;
end.
