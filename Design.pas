unit Design;

interface

uses
  Designs, Blocks, Block1, Block2, Block3, Block4, Block5, FileDumpProbe10;

type
  TCustomDesign = class(TDesign)
  end;

var
  DesignSimulator: TCustomDesign;

implementation

initialization
  {$R *.lfm}
end.
