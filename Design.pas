unit Design;

interface

uses
  Designs, Blocks, Block1, PacketizerBlock, FftBlock, Block4, Block5, FileDumpProbe10;

type
  
  { TCustomDesign }

  TCustomDesign = class(TDesign)
    Block1: TBlock1;
    Block2: TPacketizerBlock;
    FftBlock: TFftBlock;
    Block4: TBlock4; 
    Block5: TBlock5; 
    FileDumpProbe10: TFileDumpProbe10; 
    PacketizerBlock: TPacketizerBlock; 
  end;

var
  DesignSimulator: TCustomDesign;

implementation

initialization
  {$R *.lfm}
end.
