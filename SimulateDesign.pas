program SimulateDesign;

uses
  Design;

begin
  DesignSimulator := TCustomDesign.Create('MyCustomDesign');
  DesignSimulator.Run;
  DesignSimulator.Free;
end.
