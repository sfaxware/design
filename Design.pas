unit Design;

interface

uses
  Designs, Blocks, Block1, Block2, Block3, Block4, Block5, FileDumpProbe10;

type
  
  { TCustomDesign }

  TCustomDesign = class(TDesign)
    Block1: TBlock1;
    Block2: TBlock2; 
    Block3: TBlock3; 
    Block4: TBlock4; 
    Block5: TBlock5; 
    FileDumpProbe10: TFileDumpProbe10; 
  end;

var
  DesignSimulator: TCustomDesign;

implementation

initialization
  {$R *.lfm}
end.
