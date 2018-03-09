// +----------------------------------------------------+
// | Petra Plugin For Sketch                            |
// | Copyright(c) 2016 www.applyingcode.com             |
// +----------------------------------------------------+
// | Pascal Edition                                     |
// +----------------------------------------------------+
//   5/17/17 11:43:45 AM

unit ArtboardUSStatesGradient_iOS;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Math,
  System.Variants,
  iOSApi.UIKit, iOSApi.Foundation, iOSApi.CocoaTypes, iOSApi.CoreGraphics,
  MacApi.ObjectiveC, iOSApi.QuartzCore, MacApi.ObjcRuntime, MacApi.Helpers,
  MacApi.CoreFoundation, FMX.Graphics;

type
  TArtboardUSStatesGradientFillMode = (
    ArtboardUSStatesGradientFit,
    ArtboardUSStatesGradientFill,
    ArtboardUSStatesGradientStretch,
    ArtboardUSStatesGradientOriginal);

  TArtboardUSStatesGradient = class(TObject)
  private
    { Private declarations }
    FArtboardUSStatesBitmapFillMode: TArtboardUSStatesGradientFillMode;
    FArtboardUSStatesBitmapHeight: Single;
    FArtboardUSStatesBitmapWidth: Single;
    NewArtboardSize: CGRect;
    ResizedScale: CGSize;

    procedure FillLinearGradient(context: CGContextRef; StartPoint, EndPoint: CGPoint; Stops: array of CGFloat; GradientColors: array of CGColorRef);
    function GetNewArtboardSize(FillMode: TArtboardUSStatesGradientFillMode; SourceRect, TargetRect: CGRect): CGRect;
    function GenerateArtboardUSStatesBitmap: TBitmap;
    procedure SeTArtboardUSStatesGradientFillMode(const Value: TArtboardUSStatesGradientFillMode);
    procedure SeTArtboardUSStatesGradientBitmapHeight(const Value: Single);
    procedure SeTArtboardUSStatesGradientBitmapWidth(const Value: Single);
    procedure DrawShapeObjectBackground(context: CGContextRef);
    procedure DrawGroupObjectUnitedStates(context: CGContextRef);
    procedure DrawShapeObjectWyomingtWYt(context: CGContextRef);
    procedure DrawShapeObjectWisconsintWIt(context: CGContextRef);
    procedure DrawShapeObjectWestVirginiatWVt(context: CGContextRef);
    procedure DrawShapeObjectWashingtonDtCttDCt(context: CGContextRef);
    procedure DrawShapeObjectWashingtontWAt(context: CGContextRef);
    procedure DrawShapeObjectVirginiatVAt(context: CGContextRef);
    procedure DrawShapeObjectVermonttVTt(context: CGContextRef);
    procedure DrawShapeObjectUtahtUTt(context: CGContextRef);
    procedure DrawShapeObjectTexastTXt(context: CGContextRef);
    procedure DrawShapeObjectTennesseetTNt(context: CGContextRef);
    procedure DrawShapeObjectSouthDakotatSDt(context: CGContextRef);
    procedure DrawShapeObjectSouthCarolinatSCt(context: CGContextRef);
    procedure DrawShapeObjectRhodeIslandtRIt(context: CGContextRef);
    procedure DrawShapeObjectPennsylvaniatPAt(context: CGContextRef);
    procedure DrawShapeObjectOregontORt(context: CGContextRef);
    procedure DrawShapeObjectOklahomatOKt(context: CGContextRef);
    procedure DrawShapeObjectOhiotOHt(context: CGContextRef);
    procedure DrawShapeObjectNorthDakotatNDt(context: CGContextRef);
    procedure DrawShapeObjectNorthCarolinatNCt(context: CGContextRef);
    procedure DrawShapeObjectNewYorktNYt(context: CGContextRef);
    procedure DrawShapeObjectNewMexicotNMt(context: CGContextRef);
    procedure DrawShapeObjectNewJerseytNJt(context: CGContextRef);
    procedure DrawShapeObjectNewHampshiretNHt(context: CGContextRef);
    procedure DrawShapeObjectNevadatNVt(context: CGContextRef);
    procedure DrawShapeObjectNebraskatNEt(context: CGContextRef);
    procedure DrawShapeObjectMontanatMTt(context: CGContextRef);
    procedure DrawShapeObjectMissouritMOt(context: CGContextRef);
    procedure DrawShapeObjectMississippitMSt(context: CGContextRef);
    procedure DrawShapeObjectMinnesotatMNt(context: CGContextRef);
    procedure DrawShapeObjectMichigantMIt(context: CGContextRef);
    procedure DrawShapeObjectMassachusettstMAt(context: CGContextRef);
    procedure DrawShapeObjectMarylandtMDt(context: CGContextRef);
    procedure DrawShapeObjectMainetMEt(context: CGContextRef);
    procedure DrawShapeObjectLouisianatLAt(context: CGContextRef);
    procedure DrawShapeObjectKentuckytKYt(context: CGContextRef);
    procedure DrawShapeObjectKansastKSt(context: CGContextRef);
    procedure DrawShapeObjectIowatIAt(context: CGContextRef);
    procedure DrawShapeObjectIndianatINt(context: CGContextRef);
    procedure DrawShapeObjectIllinoistILt(context: CGContextRef);
    procedure DrawShapeObjectIdahotIDt(context: CGContextRef);
    procedure DrawShapeObjectHawaiitHIt(context: CGContextRef);
    procedure DrawShapeObjectGeorgiatGAt(context: CGContextRef);
    procedure DrawShapeObjectFloridatFLt(context: CGContextRef);
    procedure DrawShapeObjectDelawaretDEt(context: CGContextRef);
    procedure DrawShapeObjectConnecticuttCTt(context: CGContextRef);
    procedure DrawShapeObjectColoradotCOt(context: CGContextRef);
    procedure DrawShapeObjectCaliforniatCAt(context: CGContextRef);
    procedure DrawShapeObjectArkansastARt(context: CGContextRef);
    procedure DrawShapeObjectArizonatAZt(context: CGContextRef);
    procedure DrawShapeObjectAlaskatAKt(context: CGContextRef);
    procedure DrawShapeObjectAlabamatALt(context: CGContextRef);
  public
    { Public declarations }
    constructor Create;
    procedure DrawArtboardUSStates(Bounds: TRectF; FillMode: TArtboardUSStatesGradientFillMode);
    property ArtboardUSStatesFillMode: TArtboardUSStatesGradientFillMode read FArtboardUSStatesBitmapFillMode write SeTArtboardUSStatesGradientFillMode;
    property ArtboardUSStatesBitmap: TBitmap read GenerateArtboardUSStatesBitmap;
    property ArtboardUSStatesBitmapHeight: Single read FArtboardUSStatesBitmapHeight write SeTArtboardUSStatesGradientBitmapHeight;
    property ArtboardUSStatesBitmapWidth: Single read FArtboardUSStatesBitmapWidth write SeTArtboardUSStatesGradientBitmapWidth;
  end;

implementation


// Initialize defaults

constructor TArtboardUSStatesGradient.Create;
begin
  inherited;
  FArtboardUSStatesBitmapWidth := 1400.000000;
  FArtboardUSStatesBitmapHeight := 1400.000000;
  FArtboardUSStatesBitmapFillMode := TArtboardUSStatesGradientFillMode.ArtboardUSStatesGradientFit;
end;

//
// ArtboardUSStates
//
procedure TArtboardUSStatesGradient.DrawArtboardUSStates(Bounds: TRectF; FillMode: TArtboardUSStatesGradientFillMode);
var
  context: CGContextRef;
begin

  // Declare CGContextRef
  context := UIGraphicsGetCurrentContext();

  // Save initial context state
  CGContextSaveGState(context);

  // Initialize and set new artboard size (scaled)
  NewArtboardSize := GetNewArtboardSize(FillMode, CGRectMake(0.0, 0.0, 1400.000000, 1400.000000), CGRectMake(Bounds.Left, Bounds.Top, Bounds.Width, Bounds.Height));
  CGContextTranslateCTM(context, NewArtboardSize.origin.x, NewArtboardSize.origin.y);
  ResizedScale := CGSizeMake(NewArtboardSize.size.Width / 1400.000000, NewArtboardSize.size.Height / 1400.000000);
  CGContextScaleCTM(context, ResizedScale.Width, ResizedScale.Height);

  // Drawing procedures

  DrawShapeObjectBackground(context);
  DrawGroupObjectUnitedStates(context);

  // Restore initial context state
  CGContextRestoreGState(context);

end;

//
// ShapeObjectBackground
//
procedure TArtboardUSStatesGradient.DrawShapeObjectBackground(context: CGContextRef);
var
  ShapeObjectBackground : UIBezierPath;
begin
  // Shape Path
  ShapeObjectBackground := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectBackground.moveToPoint(CGPointMake(0.000000, 0.000000));
  ShapeObjectBackground.addLineToPoint(CGPointMake(1400.000000, 0.000000));
  ShapeObjectBackground.addLineToPoint(CGPointMake(1400.000000, 1400.000000));
  ShapeObjectBackground.addLineToPoint(CGPointMake(0.000000, 1400.000000));
  ShapeObjectBackground.addLineToPoint(CGPointMake(0.000000, 0.000000));
  ShapeObjectBackground.closePath;
  ShapeObjectBackground.moveToPoint(CGPointMake(0.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.000000, 0.000000);

  // Shape Fill
  ShapeObjectBackground.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 0.000000, 1.000000)).setFill;
  ShapeObjectBackground.fill;
  CGContextRestoreGState(context);

  CGContextRestoreGState(context);

End;

//
// GroupObjectUnitedStates
//
procedure TArtboardUSStatesGradient.DrawGroupObjectUnitedStates(context: CGContextRef);
begin
  CGContextSaveGState(context);

  CGContextTranslateCTM(context, 68.000000, 278.000000);

  DrawShapeObjectWyomingtWYt(context);
  DrawShapeObjectWisconsintWIt(context);
  DrawShapeObjectWestVirginiatWVt(context);
  DrawShapeObjectWashingtonDtCttDCt(context);
  DrawShapeObjectWashingtontWAt(context);
  DrawShapeObjectVirginiatVAt(context);
  DrawShapeObjectVermonttVTt(context);
  DrawShapeObjectUtahtUTt(context);
  DrawShapeObjectTexastTXt(context);
  DrawShapeObjectTennesseetTNt(context);
  DrawShapeObjectSouthDakotatSDt(context);
  DrawShapeObjectSouthCarolinatSCt(context);
  DrawShapeObjectRhodeIslandtRIt(context);
  DrawShapeObjectPennsylvaniatPAt(context);
  DrawShapeObjectOregontORt(context);
  DrawShapeObjectOklahomatOKt(context);
  DrawShapeObjectOhiotOHt(context);
  DrawShapeObjectNorthDakotatNDt(context);
  DrawShapeObjectNorthCarolinatNCt(context);
  DrawShapeObjectNewYorktNYt(context);
  DrawShapeObjectNewMexicotNMt(context);
  DrawShapeObjectNewJerseytNJt(context);
  DrawShapeObjectNewHampshiretNHt(context);
  DrawShapeObjectNevadatNVt(context);
  DrawShapeObjectNebraskatNEt(context);
  DrawShapeObjectMontanatMTt(context);
  DrawShapeObjectMissouritMOt(context);
  DrawShapeObjectMississippitMSt(context);
  DrawShapeObjectMinnesotatMNt(context);
  DrawShapeObjectMichigantMIt(context);
  DrawShapeObjectMassachusettstMAt(context);
  DrawShapeObjectMarylandtMDt(context);
  DrawShapeObjectMainetMEt(context);
  DrawShapeObjectLouisianatLAt(context);
  DrawShapeObjectKentuckytKYt(context);
  DrawShapeObjectKansastKSt(context);
  DrawShapeObjectIowatIAt(context);
  DrawShapeObjectIndianatINt(context);
  DrawShapeObjectIllinoistILt(context);
  DrawShapeObjectIdahotIDt(context);
  DrawShapeObjectHawaiitHIt(context);
  DrawShapeObjectGeorgiatGAt(context);
  DrawShapeObjectFloridatFLt(context);
  DrawShapeObjectDelawaretDEt(context);
  DrawShapeObjectConnecticuttCTt(context);
  DrawShapeObjectColoradotCOt(context);
  DrawShapeObjectCaliforniatCAt(context);
  DrawShapeObjectArkansastARt(context);
  DrawShapeObjectArizonatAZt(context);
  DrawShapeObjectAlaskatAKt(context);
  DrawShapeObjectAlabamatALt(context);

  // ~ End GroupObjectUnitedStates
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWyomingtWYt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectWyomingtWYt(context: CGContextRef);
var
  ShapeObjectWyomingtWYt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWyomingtWYt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWyomingtWYt.moveToPoint(CGPointMake(66.181355, 5.832039));
  ShapeObjectWyomingtWYt.addCurveToPoint(CGPointMake(11.000000, 0.000000), CGPointMake(47.787570, 4.554692), CGPointMake(11.000000, 0.000000));
  ShapeObjectWyomingtWYt.addLineToPoint(CGPointMake(0.000000, 110.000000));
  ShapeObjectWyomingtWYt.addCurveToPoint(CGPointMake(61.293707, 115.435729), CGPointMake(0.000000, 110.000000), CGPointMake(40.862472, 113.957153));
  ShapeObjectWyomingtWYt.addCurveToPoint(CGPointMake(152.000000, 121.000000), CGPointMake(91.529138, 117.623819), CGPointMake(152.000000, 121.000000));
  ShapeObjectWyomingtWYt.addLineToPoint(CGPointMake(155.000000, 10.000000));
  ShapeObjectWyomingtWYt.addCurveToPoint(CGPointMake(66.181355, 5.832039), CGPointMake(155.000000, 10.000000), CGPointMake(95.787570, 7.888026));
  ShapeObjectWyomingtWYt.closePath;
  ShapeObjectWyomingtWYt.moveToPoint(CGPointMake(66.181355, 5.832039));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 353.000000, 143.000000);

  // Shape Fill
  ShapeObjectWyomingtWYt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectWyomingtWYt.addClip;
  FillLinearGradient(context,
    CGPointMake(77.500000, 0.000000),
    CGPointMake(77.500000, 121.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWyomingtWYt.setLineWidth(3);
  ShapeObjectWyomingtWYt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWyomingtWYt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWyomingtWYt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWisconsintWIt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectWisconsintWIt(context: CGContextRef);
var
  ShapeObjectWisconsintWIt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWisconsintWIt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWisconsintWIt.moveToPoint(CGPointMake(13.000000, 7.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(12.000000, 10.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(10.000000, 10.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(11.000000, 20.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(11.000000, 26.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(3.000000, 31.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(2.000000, 34.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(0.000000, 37.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(0.000000, 40.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(3.000000, 41.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(5.000000, 44.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(4.000000, 48.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(3.000000, 51.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(4.000000, 53.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(3.000000, 54.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(4.000000, 56.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(3.000000, 62.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(8.000000, 66.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(12.000000, 66.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(15.000000, 69.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(19.000000, 70.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(23.000000, 74.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(26.000000, 78.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(29.000000, 80.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(33.000000, 80.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(37.000000, 84.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(38.000000, 87.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(38.000000, 95.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(39.000000, 95.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(40.000000, 98.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(43.000000, 100.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(41.000000, 103.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(42.000000, 110.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(45.000000, 116.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(51.000000, 116.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(53.000000, 121.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(113.000000, 115.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(112.000000, 111.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(113.000000, 109.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(113.000000, 106.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(111.000000, 105.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(110.000000, 101.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(109.000000, 95.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(109.000000, 91.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(110.000000, 88.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(110.000000, 85.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(112.000000, 81.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(110.000000, 79.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(111.000000, 73.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(112.000000, 70.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(115.000000, 68.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(113.000000, 65.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(113.000000, 59.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(116.000000, 54.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(115.000000, 51.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(118.000000, 48.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(119.000000, 43.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(120.000000, 39.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(122.000000, 36.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(120.000000, 36.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(119.000000, 39.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(117.000000, 42.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(116.000000, 42.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(116.000000, 45.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(114.000000, 47.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(115.000000, 49.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(114.000000, 50.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(113.000000, 50.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(110.000000, 51.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(108.000000, 55.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(106.000000, 57.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(104.000000, 60.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(102.000000, 59.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(102.000000, 56.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(104.000000, 51.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(106.000000, 48.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(109.000000, 46.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(109.000000, 44.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(106.000000, 42.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(108.000000, 36.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(107.000000, 36.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(104.000000, 37.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(103.000000, 37.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(105.000000, 33.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(103.000000, 28.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(100.000000, 26.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(97.000000, 26.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(97.000000, 23.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(94.000000, 22.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(87.000000, 21.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(83.000000, 22.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(79.000000, 20.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(66.000000, 17.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(55.000000, 15.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(52.000000, 11.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(49.000000, 10.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(42.000000, 8.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(38.000000, 10.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(38.000000, 8.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(40.000000, 1.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(38.000000, 0.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(33.000000, 3.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(30.000000, 4.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(23.000000, 8.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(17.000000, 9.000000));
  ShapeObjectWisconsintWIt.addLineToPoint(CGPointMake(13.000000, 7.000000));
  ShapeObjectWisconsintWIt.closePath;
  ShapeObjectWisconsintWIt.moveToPoint(CGPointMake(13.000000, 7.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 737.000000, 94.000000);

  // Shape Fill
  ShapeObjectWisconsintWIt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectWisconsintWIt.addClip;
  FillLinearGradient(context,
    CGPointMake(61.000000, 0.000000),
    CGPointMake(61.000000, 121.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWisconsintWIt.setLineWidth(3);
  ShapeObjectWisconsintWIt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWisconsintWIt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWisconsintWIt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWestVirginiatWVt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectWestVirginiatWVt(context: CGContextRef);
var
  ShapeObjectWestVirginiatWVt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWestVirginiatWVt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWestVirginiatWVt.moveToPoint(CGPointMake(17.000000, 90.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(17.000000, 91.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(18.000000, 91.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(18.000000, 93.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(19.000000, 93.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(19.000000, 95.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(20.000000, 95.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(21.000000, 97.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(24.000000, 97.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(25.000000, 98.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(28.000000, 99.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(31.000000, 96.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(32.000000, 94.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(36.000000, 96.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(38.000000, 94.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(42.000000, 94.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(43.000000, 92.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(42.000000, 90.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(44.000000, 89.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(46.000000, 90.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(50.000000, 87.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(51.000000, 88.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(55.000000, 85.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(54.000000, 84.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(56.000000, 82.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(56.000000, 81.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(54.000000, 81.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(54.000000, 79.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(55.000000, 76.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(59.000000, 70.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(60.000000, 66.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(59.000000, 65.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(62.000000, 62.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(61.000000, 61.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(63.000000, 58.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(63.000000, 54.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(64.000000, 53.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(66.000000, 53.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(68.000000, 55.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(72.000000, 55.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(74.000000, 53.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(74.000000, 50.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(75.000000, 49.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(75.000000, 46.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(76.000000, 44.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(77.000000, 43.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(80.000000, 44.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(81.000000, 40.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(83.000000, 40.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(83.000000, 39.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(85.000000, 37.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(85.000000, 35.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(87.000000, 32.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(87.000000, 29.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(88.000000, 27.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(87.000000, 25.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(88.000000, 24.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(100.000000, 30.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(101.000000, 24.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(101.000000, 22.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(99.000000, 21.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(98.000000, 19.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(97.000000, 19.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(98.000000, 17.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(94.000000, 18.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(90.000000, 16.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(89.000000, 17.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(88.000000, 19.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(85.000000, 19.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(84.000000, 22.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(82.000000, 23.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(79.000000, 23.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(77.000000, 20.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(77.000000, 23.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(74.000000, 26.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(71.000000, 26.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(70.000000, 28.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(68.000000, 31.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(64.000000, 35.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(61.000000, 21.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(39.000000, 25.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(34.000000, 0.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(31.000000, 2.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(34.000000, 4.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(33.000000, 7.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(34.000000, 10.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(33.000000, 14.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(33.000000, 19.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(32.000000, 25.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(32.000000, 29.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(27.000000, 32.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(27.000000, 35.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(23.000000, 39.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(21.000000, 37.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(18.000000, 39.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(18.000000, 41.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(16.000000, 42.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(15.000000, 46.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(14.000000, 48.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(15.000000, 49.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(15.000000, 51.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(13.000000, 53.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(12.000000, 53.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(12.000000, 51.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(10.000000, 50.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(8.000000, 52.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(7.000000, 55.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(7.000000, 57.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(8.000000, 62.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(6.000000, 63.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(6.000000, 66.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(0.000000, 69.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(1.000000, 72.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(0.000000, 76.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(4.000000, 80.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(5.000000, 82.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(9.000000, 87.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(14.000000, 90.000000));
  ShapeObjectWestVirginiatWVt.addLineToPoint(CGPointMake(17.000000, 90.000000));
  ShapeObjectWestVirginiatWVt.closePath;
  ShapeObjectWestVirginiatWVt.moveToPoint(CGPointMake(17.000000, 90.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 978.000000, 238.000000);

  // Shape Fill
  ShapeObjectWestVirginiatWVt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectWestVirginiatWVt.addClip;
  FillLinearGradient(context,
    CGPointMake(50.500000, 0.000000),
    CGPointMake(50.500000, 99.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWestVirginiatWVt.setLineWidth(3);
  ShapeObjectWestVirginiatWVt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWestVirginiatWVt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWestVirginiatWVt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWashingtonDtCttDCt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectWashingtonDtCttDCt(context: CGContextRef);
var
  ShapeObjectWashingtonDtCttDCt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWashingtonDtCttDCt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWashingtonDtCttDCt.moveToPoint(CGPointMake(2.000000, 5.000000));
  ShapeObjectWashingtonDtCttDCt.addLineToPoint(CGPointMake(4.000000, 3.000000));
  ShapeObjectWashingtonDtCttDCt.addLineToPoint(CGPointMake(1.000000, 0.000000));
  ShapeObjectWashingtonDtCttDCt.addLineToPoint(CGPointMake(0.000000, 2.000000));
  ShapeObjectWashingtonDtCttDCt.addLineToPoint(CGPointMake(1.000000, 3.000000));
  ShapeObjectWashingtonDtCttDCt.addLineToPoint(CGPointMake(2.000000, 5.000000));
  ShapeObjectWashingtonDtCttDCt.closePath;
  ShapeObjectWashingtonDtCttDCt.moveToPoint(CGPointMake(2.000000, 5.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1095.000000, 268.000000);

  // Shape Fill
  ShapeObjectWashingtonDtCttDCt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectWashingtonDtCttDCt.addClip;
  FillLinearGradient(context,
    CGPointMake(2.000000, 0.000000),
    CGPointMake(2.000000, 5.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWashingtonDtCttDCt.setLineWidth(3);
  ShapeObjectWashingtonDtCttDCt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWashingtonDtCttDCt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWashingtonDtCttDCt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWashingtontWAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectWashingtontWAt(context: CGContextRef);
var
  ShapeObjectWashingtontWAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWashingtontWAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWashingtontWAt.moveToPoint(CGPointMake(143.000000, 100.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(143.000000, 97.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(144.000000, 96.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(144.000000, 94.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(142.000000, 90.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(153.000000, 21.000000));
  ShapeObjectWashingtontWAt.addCurveToPoint(CGPointMake(68.023172, 5.777151), CGPointMake(153.000000, 21.000000), CGPointMake(96.348782, 11.184767));
  ShapeObjectWashingtontWAt.addCurveToPoint(CGPointMake(43.000000, 0.000000), CGPointMake(59.682115, 4.184767), CGPointMake(43.000000, 0.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(42.000000, 2.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(43.000000, 7.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(46.000000, 7.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(46.000000, 11.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(45.000000, 15.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(43.000000, 15.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(42.000000, 13.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(41.000000, 11.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(38.000000, 7.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(36.000000, 8.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(38.000000, 9.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(40.000000, 11.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(38.000000, 12.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(35.000000, 10.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(32.000000, 9.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(33.000000, 12.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(38.000000, 14.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(40.000000, 12.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(42.000000, 15.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(39.000000, 19.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(40.000000, 22.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(42.000000, 28.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(44.000000, 29.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(43.000000, 26.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(41.000000, 21.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(42.000000, 18.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(44.000000, 18.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(46.000000, 19.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(46.000000, 23.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(46.000000, 26.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(48.000000, 27.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(46.000000, 30.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(43.000000, 33.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(43.000000, 36.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(43.000000, 39.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(42.000000, 44.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(40.000000, 47.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(38.000000, 46.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(35.000000, 49.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(34.000000, 50.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(31.000000, 49.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(29.000000, 50.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(26.000000, 49.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(28.000000, 46.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(31.000000, 43.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(33.000000, 44.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(35.000000, 42.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(37.000000, 45.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(38.000000, 39.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(36.000000, 38.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(37.000000, 34.000000));
  ShapeObjectWashingtontWAt.addCurveToPoint(CGPointMake(40.000000, 34.000000), CGPointMake(35.941732, 34.000000), CGPointMake(40.000000, 34.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(41.000000, 31.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(34.000000, 35.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(32.000000, 36.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(28.000000, 39.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(30.000000, 41.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(32.000000, 41.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(30.000000, 42.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(25.000000, 42.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(26.000000, 40.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(30.000000, 36.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(33.000000, 33.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(33.000000, 30.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(35.000000, 30.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(35.000000, 32.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(38.000000, 29.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(36.000000, 23.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(36.000000, 26.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(33.000000, 23.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(32.000000, 24.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(29.000000, 21.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(26.000000, 21.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(15.000000, 17.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(11.000000, 15.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(9.000000, 13.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(2.000000, 9.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(0.000000, 14.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(0.000000, 20.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(3.000000, 24.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(4.000000, 28.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(3.000000, 36.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(5.000000, 39.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(4.000000, 45.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(7.000000, 45.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(7.000000, 47.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(11.000000, 49.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(6.000000, 50.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(5.000000, 52.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(4.000000, 51.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(4.000000, 54.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(8.000000, 54.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(10.000000, 57.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(7.000000, 57.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(6.000000, 61.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(7.000000, 64.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(4.000000, 64.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(3.000000, 62.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(2.000000, 66.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(4.000000, 66.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(6.000000, 67.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(10.000000, 67.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(11.000000, 68.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(14.000000, 68.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(15.000000, 71.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(17.000000, 72.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(20.000000, 72.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(23.000000, 75.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(25.000000, 80.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(24.000000, 87.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(24.000000, 89.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(31.000000, 91.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(34.000000, 93.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(41.000000, 91.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(44.000000, 90.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(50.000000, 91.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(55.000000, 93.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(56.000000, 96.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(60.000000, 95.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(61.000000, 96.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(68.000000, 95.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(73.000000, 96.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(78.000000, 95.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(87.000000, 94.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(90.000000, 93.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(99.000000, 95.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(102.000000, 93.000000));
  ShapeObjectWashingtontWAt.addLineToPoint(CGPointMake(143.000000, 100.000000));
  ShapeObjectWashingtontWAt.closePath;
  ShapeObjectWashingtontWAt.moveToPoint(CGPointMake(143.000000, 100.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 105.000000, 1.000000);

  // Shape Fill
  ShapeObjectWashingtontWAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectWashingtontWAt.addClip;
  FillLinearGradient(context,
    CGPointMake(76.500000, 0.000000),
    CGPointMake(76.500000, 100.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWashingtontWAt.setLineWidth(3);
  ShapeObjectWashingtontWAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWashingtontWAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWashingtontWAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectVirginiatVAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectVirginiatVAt(context: CGContextRef);
var
  ShapeObjectVirginiatVAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectVirginiatVAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectVirginiatVAt.moveToPoint(CGPointMake(170.000000, 69.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(170.000000, 67.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(171.000000, 67.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(171.000000, 62.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(169.000000, 59.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(162.000000, 59.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(163.000000, 62.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(160.000000, 61.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(158.000000, 63.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(158.000000, 60.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(153.000000, 58.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(153.000000, 55.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(150.000000, 55.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(147.000000, 55.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(145.000000, 53.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(138.000000, 54.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(138.000000, 52.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(146.000000, 51.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(147.000000, 53.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(148.000000, 50.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(149.000000, 53.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(153.000000, 53.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(154.000000, 53.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(154.000000, 55.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(160.000000, 58.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(162.000000, 56.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(160.000000, 55.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(160.000000, 53.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(158.000000, 52.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(155.000000, 52.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(148.000000, 46.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(148.000000, 44.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(155.000000, 50.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(158.000000, 50.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(156.000000, 48.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(157.000000, 45.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(161.000000, 48.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(160.000000, 45.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(157.000000, 43.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(153.000000, 42.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(151.000000, 39.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(148.000000, 38.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(144.000000, 35.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(141.000000, 31.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(139.000000, 31.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(136.000000, 30.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(137.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(141.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(148.000000, 36.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(150.000000, 36.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(154.000000, 40.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(154.000000, 38.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(157.000000, 40.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(157.000000, 36.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(156.000000, 34.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(158.000000, 33.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(155.000000, 32.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(151.000000, 31.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(150.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(147.000000, 28.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(145.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(141.000000, 28.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(138.000000, 25.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(138.000000, 23.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(135.000000, 26.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(131.000000, 26.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(131.000000, 24.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(131.000000, 23.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(131.000000, 17.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(133.000000, 15.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(135.000000, 14.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(135.000000, 11.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(134.000000, 9.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(133.000000, 8.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(130.000000, 8.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(129.000000, 6.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(125.000000, 6.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(123.000000, 4.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(124.000000, 1.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(121.000000, 0.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(117.000000, 0.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(116.000000, 6.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(104.000000, 0.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(103.000000, 1.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(104.000000, 3.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(103.000000, 5.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(103.000000, 8.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(101.000000, 11.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(101.000000, 13.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(99.000000, 15.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(99.000000, 16.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(97.000000, 16.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(96.000000, 20.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(93.000000, 19.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(92.000000, 20.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(91.000000, 22.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(91.000000, 25.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(90.000000, 26.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(90.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(88.000000, 31.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(84.000000, 31.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(82.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(80.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(79.000000, 30.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(79.000000, 34.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(77.000000, 37.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(78.000000, 38.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(75.000000, 41.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(76.000000, 42.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(75.000000, 46.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(71.000000, 52.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(70.000000, 55.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(70.000000, 57.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(72.000000, 57.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(72.000000, 58.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(70.000000, 60.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(71.000000, 61.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(67.000000, 64.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(66.000000, 63.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(62.000000, 66.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(60.000000, 65.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(58.000000, 66.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(59.000000, 68.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(58.000000, 70.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(54.000000, 70.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(52.000000, 72.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(48.000000, 70.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(47.000000, 72.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(44.000000, 75.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(41.000000, 74.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(40.000000, 73.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(37.000000, 73.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(36.000000, 71.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(35.000000, 71.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(35.000000, 69.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(34.000000, 69.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(34.000000, 67.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(33.000000, 67.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(26.000000, 76.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(19.000000, 80.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(19.000000, 83.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(17.000000, 85.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(17.000000, 87.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(12.000000, 89.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(11.000000, 92.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(0.000000, 98.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(44.000000, 91.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(44.000000, 92.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(170.000000, 69.000000));
  ShapeObjectVirginiatVAt.closePath;
  ShapeObjectVirginiatVAt.moveToPoint(CGPointMake(170.000000, 69.000000));
  ShapeObjectVirginiatVAt.moveToPoint(CGPointMake(171.000000, 27.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(171.000000, 29.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(170.000000, 30.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(171.000000, 32.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(169.000000, 35.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(168.000000, 38.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(168.000000, 42.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(167.000000, 46.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(168.000000, 50.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(169.000000, 51.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(170.000000, 48.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(170.000000, 42.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(171.000000, 39.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(174.000000, 40.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(174.000000, 34.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(176.000000, 30.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(175.000000, 28.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(175.000000, 25.000000));
  ShapeObjectVirginiatVAt.addLineToPoint(CGPointMake(171.000000, 27.000000));
  ShapeObjectVirginiatVAt.closePath;
  ShapeObjectVirginiatVAt.moveToPoint(CGPointMake(171.000000, 27.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 962.000000, 262.000000);

  // Shape Fill
  ShapeObjectVirginiatVAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectVirginiatVAt.addClip;
  FillLinearGradient(context,
    CGPointMake(88.000000, 0.000000),
    CGPointMake(88.000000, 98.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectVirginiatVAt.setLineWidth(3);
  ShapeObjectVirginiatVAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectVirginiatVAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectVirginiatVAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectVermonttVTt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectVermonttVTt(context: CGContextRef);
var
  ShapeObjectVermonttVTt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectVermonttVTt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectVermonttVTt.moveToPoint(CGPointMake(0.000000, 10.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(36.000000, 0.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(37.000000, 1.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(38.000000, 3.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(36.000000, 7.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(39.000000, 11.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(38.000000, 12.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(38.000000, 14.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(35.000000, 19.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(34.000000, 20.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(32.000000, 20.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(31.000000, 22.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(32.000000, 25.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(32.000000, 28.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(32.000000, 32.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(31.000000, 33.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(31.000000, 37.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(30.000000, 39.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(30.000000, 42.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(29.000000, 43.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(30.000000, 49.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(31.000000, 50.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(30.000000, 54.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(31.000000, 56.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(31.000000, 59.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(30.000000, 60.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(30.000000, 63.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(34.000000, 66.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(17.000000, 69.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(16.000000, 68.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(12.000000, 50.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(12.000000, 48.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(10.000000, 46.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(8.000000, 48.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(8.000000, 42.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(7.000000, 41.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(7.000000, 40.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(6.000000, 39.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(5.000000, 36.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(4.000000, 36.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(4.000000, 31.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(5.000000, 29.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(3.000000, 26.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(2.000000, 22.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(1.000000, 20.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(1.000000, 15.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(0.000000, 14.000000));
  ShapeObjectVermonttVTt.addLineToPoint(CGPointMake(0.000000, 10.000000));
  ShapeObjectVermonttVTt.closePath;
  ShapeObjectVermonttVTt.moveToPoint(CGPointMake(0.000000, 10.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1136.000000, 79.000000);

  // Shape Fill
  ShapeObjectVermonttVTt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectVermonttVTt.addClip;
  FillLinearGradient(context,
    CGPointMake(19.500000, 0.000000),
    CGPointMake(19.500000, 69.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectVermonttVTt.setLineWidth(3);
  ShapeObjectVermonttVTt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectVermonttVTt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectVermonttVTt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectUtahtUTt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectUtahtUTt(context: CGContextRef);
var
  ShapeObjectUtahtUTt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectUtahtUTt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectUtahtUTt.moveToPoint(CGPointMake(17.000000, 0.000000));
  ShapeObjectUtahtUTt.addLineToPoint(CGPointMake(0.000000, 138.000000));
  ShapeObjectUtahtUTt.addCurveToPoint(CGPointMake(45.822160, 143.909517), CGPointMake(0.000000, 138.000000), CGPointMake(30.548106, 142.273011));
  ShapeObjectUtahtUTt.addCurveToPoint(CGPointMake(112.000000, 150.000000), CGPointMake(67.881440, 146.273011), CGPointMake(112.000000, 150.000000));
  ShapeObjectUtahtUTt.addLineToPoint(CGPointMake(121.000000, 39.000000));
  ShapeObjectUtahtUTt.addLineToPoint(CGPointMake(78.000000, 35.000000));
  ShapeObjectUtahtUTt.addLineToPoint(CGPointMake(81.000000, 8.000000));
  ShapeObjectUtahtUTt.addLineToPoint(CGPointMake(17.000000, 0.000000));
  ShapeObjectUtahtUTt.closePath;
  ShapeObjectUtahtUTt.moveToPoint(CGPointMake(17.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 275.000000, 218.000000);

  // Shape Fill
  ShapeObjectUtahtUTt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectUtahtUTt.addClip;
  FillLinearGradient(context,
    CGPointMake(60.500000, 0.000000),
    CGPointMake(60.500000, 150.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectUtahtUTt.setLineWidth(3);
  ShapeObjectUtahtUTt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectUtahtUTt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectUtahtUTt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectTexastTXt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectTexastTXt(context: CGContextRef);
var
  ShapeObjectTexastTXt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectTexastTXt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectTexastTXt.moveToPoint(CGPointMake(89.000000, 0.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(158.000000, 1.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(158.000000, 55.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(161.000000, 55.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(167.000000, 61.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(170.000000, 60.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(172.000000, 60.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(173.000000, 58.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(177.000000, 62.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(177.000000, 65.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(182.000000, 65.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(188.000000, 67.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(191.000000, 66.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(194.000000, 69.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(197.000000, 67.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(203.000000, 67.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(203.000000, 70.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(206.000000, 71.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(208.000000, 75.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(214.000000, 70.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(215.000000, 73.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(217.000000, 73.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(220.000000, 75.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(224.000000, 73.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(226.000000, 78.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(230.000000, 71.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(235.000000, 74.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(238.000000, 73.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(240.000000, 75.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(246.000000, 77.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(248.000000, 77.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(249.000000, 74.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(254.000000, 73.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(256.000000, 73.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(262.000000, 71.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(266.000000, 72.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(270.000000, 70.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(276.000000, 72.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(279.000000, 75.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(282.000000, 77.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(288.000000, 78.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(292.000000, 80.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(293.000000, 79.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(298.000000, 79.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(299.000000, 80.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(299.000000, 95.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(300.000000, 95.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(301.000000, 124.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(304.000000, 127.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(307.000000, 131.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(307.000000, 135.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(309.000000, 137.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(309.000000, 138.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(311.000000, 140.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(311.000000, 143.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(313.000000, 145.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(314.000000, 146.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(314.000000, 149.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(315.000000, 150.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(314.000000, 151.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(314.000000, 157.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(313.000000, 160.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(311.000000, 164.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(311.000000, 167.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(310.000000, 169.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(312.000000, 173.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(311.000000, 177.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(309.000000, 179.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(307.000000, 183.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(306.000000, 185.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(308.000000, 188.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(304.000000, 188.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(295.000000, 193.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(291.000000, 193.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(286.000000, 194.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(288.000000, 191.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(289.000000, 188.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(287.000000, 187.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(285.000000, 188.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(283.000000, 190.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(279.000000, 189.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(280.000000, 193.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(282.000000, 196.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(284.000000, 198.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(283.000000, 200.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(279.000000, 204.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(277.000000, 203.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(278.000000, 208.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(272.000000, 213.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(266.000000, 217.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(259.000000, 218.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(258.000000, 220.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(253.000000, 220.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(253.000000, 218.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(250.000000, 220.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(248.000000, 218.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(246.000000, 216.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(247.000000, 221.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(244.000000, 220.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(242.000000, 218.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(241.000000, 219.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(243.000000, 223.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(245.000000, 224.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(243.000000, 226.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(247.000000, 225.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(247.000000, 227.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(242.000000, 230.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(238.000000, 225.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(237.000000, 228.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(237.000000, 233.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(236.000000, 235.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(235.000000, 231.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(229.000000, 235.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(228.000000, 237.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(230.000000, 239.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(233.000000, 237.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(229.000000, 243.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(221.000000, 242.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(220.000000, 244.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(223.000000, 245.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(227.000000, 248.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(223.000000, 258.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(221.000000, 256.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(218.000000, 258.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(214.000000, 254.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(215.000000, 258.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(214.000000, 259.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(215.000000, 260.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(220.000000, 261.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(222.000000, 260.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(221.000000, 267.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(220.000000, 268.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(220.000000, 274.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(222.000000, 274.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(223.000000, 280.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(222.000000, 282.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(225.000000, 287.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(227.000000, 292.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(229.000000, 293.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(228.000000, 297.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(226.000000, 299.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(222.000000, 298.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(218.000000, 294.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(204.000000, 294.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(199.000000, 290.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(193.000000, 289.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(189.000000, 285.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(182.000000, 285.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(182.000000, 282.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(180.000000, 281.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(178.000000, 273.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(175.000000, 269.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(173.000000, 267.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(173.000000, 262.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(171.000000, 259.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(172.000000, 257.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(172.000000, 254.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(171.000000, 251.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(167.000000, 249.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(162.000000, 245.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(161.000000, 242.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(157.000000, 236.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(154.000000, 234.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(152.000000, 231.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(150.000000, 224.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(147.000000, 220.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(146.000000, 217.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(143.000000, 213.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(143.000000, 208.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(140.000000, 206.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(140.000000, 204.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(133.000000, 200.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(133.000000, 198.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(129.000000, 197.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(129.000000, 194.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(127.000000, 194.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(124.000000, 189.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(117.000000, 189.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(111.000000, 188.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(106.000000, 188.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(102.000000, 186.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(100.000000, 189.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(93.000000, 190.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(89.000000, 196.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(88.000000, 201.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(86.000000, 204.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(81.000000, 209.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(81.000000, 211.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(75.000000, 209.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(72.000000, 206.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(68.000000, 206.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(65.000000, 202.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(60.000000, 201.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(54.000000, 195.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(51.000000, 194.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(48.000000, 191.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(47.000000, 187.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(45.000000, 183.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(44.000000, 180.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(45.000000, 177.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(41.000000, 170.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(41.000000, 167.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(38.000000, 162.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(33.000000, 158.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(29.000000, 157.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(24.000000, 151.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(24.000000, 149.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(20.000000, 146.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(16.000000, 142.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(13.000000, 140.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(10.000000, 138.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(7.000000, 135.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(7.000000, 131.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(5.000000, 130.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(3.000000, 129.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(0.000000, 126.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(0.000000, 123.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(85.000000, 127.000000));
  ShapeObjectTexastTXt.addLineToPoint(CGPointMake(89.000000, 0.000000));
  ShapeObjectTexastTXt.closePath;
  ShapeObjectTexastTXt.moveToPoint(CGPointMake(89.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 433.000000, 390.000000);

  // Shape Fill
  ShapeObjectTexastTXt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectTexastTXt.addClip;
  FillLinearGradient(context,
    CGPointMake(157.500000, 0.000000),
    CGPointMake(157.500000, 299.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectTexastTXt.setLineWidth(3);
  ShapeObjectTexastTXt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectTexastTXt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectTexastTXt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectTennesseetTNt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectTennesseetTNt(context: CGContextRef);
var
  ShapeObjectTennesseetTNt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectTennesseetTNt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectTennesseetTNt.moveToPoint(CGPointMake(0.000000, 70.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(137.000000, 54.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(137.000000, 47.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(138.000000, 46.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(142.000000, 47.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(143.000000, 41.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(149.000000, 36.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(154.000000, 36.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(161.000000, 28.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(165.000000, 28.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(166.000000, 23.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(168.000000, 23.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(169.000000, 20.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(172.000000, 19.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(173.000000, 21.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(175.000000, 21.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(177.000000, 16.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(182.000000, 15.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(184.000000, 16.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(187.000000, 9.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(189.000000, 7.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(190.000000, 7.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(190.000000, 0.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(146.000000, 7.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(144.000000, 9.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(52.000000, 18.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(46.000000, 18.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(47.000000, 21.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(47.000000, 23.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(16.000000, 26.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(15.000000, 27.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(13.000000, 25.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(13.000000, 27.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(14.000000, 31.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(12.000000, 31.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(13.000000, 34.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(11.000000, 34.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(13.000000, 37.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(11.000000, 38.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(10.000000, 41.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(12.000000, 42.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(13.000000, 43.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(10.000000, 43.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(10.000000, 45.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(11.000000, 46.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(6.000000, 49.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(7.000000, 53.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(7.000000, 55.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(5.000000, 55.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(4.000000, 59.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(3.000000, 62.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(5.000000, 66.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(2.000000, 66.000000));
  ShapeObjectTennesseetTNt.addLineToPoint(CGPointMake(0.000000, 70.000000));
  ShapeObjectTennesseetTNt.closePath;
  ShapeObjectTennesseetTNt.moveToPoint(CGPointMake(0.000000, 70.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 816.000000, 353.000000);

  // Shape Fill
  ShapeObjectTennesseetTNt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectTennesseetTNt.addClip;
  FillLinearGradient(context,
    CGPointMake(95.000000, 0.000000),
    CGPointMake(95.000000, 70.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectTennesseetTNt.setLineWidth(3);
  ShapeObjectTennesseetTNt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectTennesseetTNt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectTennesseetTNt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectSouthDakotatSDt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectSouthDakotatSDt(context: CGContextRef);
var
  ShapeObjectSouthDakotatSDt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectSouthDakotatSDt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectSouthDakotatSDt.moveToPoint(CGPointMake(45.258253, 81.773645));
  ShapeObjectSouthDakotatSDt.addCurveToPoint(CGPointMake(0.000000, 80.000000), CGPointMake(30.172169, 81.515764), CGPointMake(0.000000, 80.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(1.000000, 25.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(2.000000, 25.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(3.000000, 0.000000));
  ShapeObjectSouthDakotatSDt.addCurveToPoint(CGPointMake(87.000000, 1.000000), CGPointMake(3.000000, 0.000000), CGPointMake(58.711458, 1.000000));
  ShapeObjectSouthDakotatSDt.addCurveToPoint(CGPointMake(155.000000, 0.000000), CGPointMake(109.378125, 1.000000), CGPointMake(155.000000, 0.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(154.000000, 3.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(152.000000, 6.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(149.000000, 8.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(152.000000, 14.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(156.000000, 15.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(158.000000, 18.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(159.000000, 67.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(156.000000, 67.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(156.000000, 69.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(158.000000, 71.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(157.000000, 74.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(159.000000, 76.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(158.000000, 84.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(156.000000, 87.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(159.000000, 94.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(157.000000, 94.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(155.000000, 91.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(155.000000, 89.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(152.000000, 89.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(151.000000, 88.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(148.000000, 87.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(145.000000, 87.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(142.000000, 84.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(137.000000, 85.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(130.000000, 85.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(128.000000, 87.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(125.000000, 87.000000));
  ShapeObjectSouthDakotatSDt.addLineToPoint(CGPointMake(117.000000, 82.000000));
  ShapeObjectSouthDakotatSDt.addCurveToPoint(CGPointMake(45.258253, 81.773645), CGPointMake(117.000000, 82.000000), CGPointMake(69.172169, 82.182430));
  ShapeObjectSouthDakotatSDt.closePath;
  ShapeObjectSouthDakotatSDt.moveToPoint(CGPointMake(45.258253, 81.773645));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 507.000000, 128.000000);

  // Shape Fill
  ShapeObjectSouthDakotatSDt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectSouthDakotatSDt.addClip;
  FillLinearGradient(context,
    CGPointMake(79.500000, 0.000000),
    CGPointMake(79.500000, 94.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectSouthDakotatSDt.setLineWidth(3);
  ShapeObjectSouthDakotatSDt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectSouthDakotatSDt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectSouthDakotatSDt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectSouthCarolinatSCt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectSouthCarolinatSCt(context: CGContextRef);
var
  ShapeObjectSouthCarolinatSCt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectSouthCarolinatSCt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectSouthCarolinatSCt.moveToPoint(CGPointMake(12.000000, 9.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(5.000000, 12.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(3.000000, 15.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(0.000000, 21.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(5.000000, 23.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(6.000000, 24.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(9.000000, 26.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(13.000000, 25.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(13.000000, 28.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(16.000000, 30.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(17.000000, 33.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(18.000000, 34.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(21.000000, 36.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(22.000000, 39.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(24.000000, 39.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(25.000000, 41.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(30.000000, 43.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(33.000000, 48.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(36.000000, 48.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(39.000000, 51.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(39.000000, 53.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(42.000000, 54.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(42.000000, 56.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(44.000000, 57.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(44.000000, 59.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(47.000000, 59.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(52.000000, 62.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(52.000000, 64.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(54.000000, 67.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(55.000000, 71.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(56.000000, 73.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(59.000000, 73.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(60.000000, 75.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(63.000000, 79.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(63.000000, 83.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(65.000000, 86.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(66.000000, 85.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(68.000000, 85.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(70.000000, 85.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(71.000000, 82.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(71.000000, 79.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(73.000000, 81.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(70.000000, 76.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(68.000000, 72.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(69.000000, 71.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(72.000000, 76.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(74.000000, 77.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(73.000000, 73.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(75.000000, 75.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(76.000000, 78.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(78.000000, 76.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(77.000000, 73.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(75.000000, 72.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(73.000000, 71.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(77.000000, 70.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(80.000000, 71.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(82.000000, 69.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(82.000000, 67.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(85.000000, 67.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(88.000000, 65.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(90.000000, 63.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(88.000000, 61.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(88.000000, 59.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(90.000000, 59.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(91.000000, 61.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(93.000000, 59.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(95.000000, 57.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(95.000000, 53.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(97.000000, 52.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(99.000000, 53.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(101.000000, 50.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(100.000000, 48.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(104.000000, 46.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(101.000000, 45.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(101.000000, 42.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(103.000000, 39.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(103.000000, 44.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(106.000000, 35.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(109.000000, 30.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(114.000000, 25.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(85.000000, 4.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(59.000000, 8.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(58.000000, 4.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(54.000000, 1.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(52.000000, 3.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(51.000000, 0.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(21.000000, 4.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(17.000000, 6.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(14.000000, 7.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(13.000000, 9.000000));
  ShapeObjectSouthCarolinatSCt.addLineToPoint(CGPointMake(12.000000, 9.000000));
  ShapeObjectSouthCarolinatSCt.closePath;
  ShapeObjectSouthCarolinatSCt.moveToPoint(CGPointMake(12.000000, 9.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 976.000000, 391.000000);

  // Shape Fill
  ShapeObjectSouthCarolinatSCt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectSouthCarolinatSCt.addClip;
  FillLinearGradient(context,
    CGPointMake(57.000000, 0.000000),
    CGPointMake(57.000000, 86.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectSouthCarolinatSCt.setLineWidth(3);
  ShapeObjectSouthCarolinatSCt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectSouthCarolinatSCt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectSouthCarolinatSCt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectRhodeIslandtRIt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectRhodeIslandtRIt(context: CGContextRef);
var
  ShapeObjectRhodeIslandtRIt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectRhodeIslandtRIt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectRhodeIslandtRIt.moveToPoint(CGPointMake(0.000000, 3.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(4.000000, 17.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(4.000000, 21.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(6.000000, 20.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(8.000000, 18.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(11.000000, 18.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(11.000000, 16.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(11.000000, 14.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(10.000000, 12.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(11.000000, 10.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(9.000000, 10.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(10.000000, 8.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(9.000000, 6.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(10.000000, 5.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(10.000000, 3.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(9.000000, 3.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(8.000000, 0.000000));
  ShapeObjectRhodeIslandtRIt.addLineToPoint(CGPointMake(0.000000, 3.000000));
  ShapeObjectRhodeIslandtRIt.closePath;
  ShapeObjectRhodeIslandtRIt.moveToPoint(CGPointMake(0.000000, 3.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1188.000000, 158.000000);

  // Shape Fill
  ShapeObjectRhodeIslandtRIt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectRhodeIslandtRIt.addClip;
  FillLinearGradient(context,
    CGPointMake(5.500000, 0.000000),
    CGPointMake(5.500000, 21.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectRhodeIslandtRIt.setLineWidth(3);
  ShapeObjectRhodeIslandtRIt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectRhodeIslandtRIt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectRhodeIslandtRIt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectPennsylvaniatPAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectPennsylvaniatPAt(context: CGContextRef);
var
  ShapeObjectPennsylvaniatPAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectPennsylvaniatPAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectPennsylvaniatPAt.moveToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(6.000000, 59.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(11.000000, 84.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(113.000000, 64.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(114.000000, 61.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(116.000000, 59.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(121.000000, 59.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(122.000000, 57.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(125.000000, 55.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(125.000000, 53.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(132.000000, 47.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(132.000000, 45.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(126.000000, 41.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(124.000000, 41.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(123.000000, 37.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(120.000000, 38.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(119.000000, 34.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(120.000000, 31.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(121.000000, 29.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(119.000000, 27.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(119.000000, 25.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(121.000000, 23.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(123.000000, 19.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(123.000000, 17.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(126.000000, 14.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(124.000000, 12.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(121.000000, 12.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(118.000000, 12.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(116.000000, 9.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(116.000000, 7.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(116.000000, 4.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(113.000000, 2.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(111.000000, 3.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(110.000000, 1.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(107.000000, 0.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(16.000000, 19.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(15.000000, 12.000000));
  ShapeObjectPennsylvaniatPAt.addLineToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectPennsylvaniatPAt.closePath;
  ShapeObjectPennsylvaniatPAt.moveToPoint(CGPointMake(0.000000, 22.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1006.000000, 179.000000);

  // Shape Fill
  ShapeObjectPennsylvaniatPAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectPennsylvaniatPAt.addClip;
  FillLinearGradient(context,
    CGPointMake(66.000000, 0.000000),
    CGPointMake(66.000000, 84.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectPennsylvaniatPAt.setLineWidth(3);
  ShapeObjectPennsylvaniatPAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectPennsylvaniatPAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectPennsylvaniatPAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectOregontORt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectOregontORt(context: CGContextRef);
var
  ShapeObjectOregontORt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectOregontORt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectOregontORt.moveToPoint(CGPointMake(153.000000, 139.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(161.000000, 89.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(163.000000, 85.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(163.000000, 82.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(165.000000, 80.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(163.000000, 78.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(159.000000, 77.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(160.000000, 71.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(165.000000, 65.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(169.000000, 61.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(170.000000, 58.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(174.000000, 52.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(175.000000, 50.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(180.000000, 44.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(179.000000, 39.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(173.000000, 34.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(173.000000, 31.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(131.000000, 24.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(128.000000, 26.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(119.000000, 24.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(116.000000, 25.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(107.000000, 26.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(102.000000, 27.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(97.000000, 26.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(90.000000, 27.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(89.000000, 26.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(85.000000, 27.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(84.000000, 24.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(79.000000, 22.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(73.000000, 21.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(63.000000, 24.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(60.000000, 22.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(53.000000, 20.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(53.000000, 18.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(54.000000, 11.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(52.000000, 6.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(49.000000, 3.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(46.000000, 4.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(43.000000, 4.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(42.000000, 1.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(38.000000, 2.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(36.000000, 1.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(35.000000, 3.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(32.000000, 0.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(32.000000, 5.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(30.000000, 7.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(30.000000, 11.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(31.000000, 13.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(29.000000, 15.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(30.000000, 19.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(28.000000, 19.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(22.000000, 36.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(21.000000, 39.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(22.000000, 41.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(21.000000, 43.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(20.000000, 45.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(20.000000, 47.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(18.000000, 49.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(16.000000, 58.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(14.000000, 63.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(15.000000, 65.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(13.000000, 66.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(10.000000, 71.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(12.000000, 71.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(12.000000, 74.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(10.000000, 73.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(8.000000, 76.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(7.000000, 74.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(4.000000, 81.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(1.000000, 87.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(2.000000, 91.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(1.000000, 97.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(0.000000, 103.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(0.000000, 107.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(2.000000, 111.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(90.000000, 129.000000));
  ShapeObjectOregontORt.addLineToPoint(CGPointMake(153.000000, 139.000000));
  ShapeObjectOregontORt.closePath;
  ShapeObjectOregontORt.moveToPoint(CGPointMake(153.000000, 139.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 76.000000, 70.000000);

  // Shape Fill
  ShapeObjectOregontORt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectOregontORt.addClip;
  FillLinearGradient(context,
    CGPointMake(90.000000, 0.000000),
    CGPointMake(90.000000, 139.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectOregontORt.setLineWidth(3);
  ShapeObjectOregontORt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectOregontORt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectOregontORt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectOklahomatOKt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectOklahomatOKt(context: CGContextRef);
var
  ShapeObjectOklahomatOKt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectOklahomatOKt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectOklahomatOKt.moveToPoint(CGPointMake(0.000000, 1.000000));
  ShapeObjectOklahomatOKt.addCurveToPoint(CGPointMake(92.448682, 2.510854), CGPointMake(0.000000, 1.000000), CGPointMake(61.632455, 2.673902));
  ShapeObjectOklahomatOKt.addCurveToPoint(CGPointMake(189.000000, 0.000000), CGPointMake(124.632455, 2.340569), CGPointMake(189.000000, 0.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(190.000000, 15.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(195.000000, 44.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(197.000000, 94.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(191.000000, 93.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(188.000000, 91.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(185.000000, 88.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(182.000000, 87.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(179.000000, 86.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(175.000000, 88.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(171.000000, 87.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(165.000000, 89.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(163.000000, 89.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(158.000000, 90.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(157.000000, 93.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(155.000000, 93.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(152.000000, 92.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(149.000000, 91.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(147.000000, 89.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(144.000000, 90.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(139.000000, 87.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(135.000000, 94.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(133.000000, 89.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(129.000000, 91.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(126.000000, 89.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(124.000000, 89.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(123.000000, 86.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(117.000000, 91.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(115.000000, 87.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(112.000000, 86.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(112.000000, 83.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(106.000000, 83.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(103.000000, 85.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(100.000000, 82.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(97.000000, 83.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(91.000000, 81.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(86.000000, 81.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(86.000000, 78.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(82.000000, 74.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(81.000000, 76.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(79.000000, 76.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(76.000000, 77.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(73.000000, 74.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(70.000000, 71.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(67.000000, 71.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(67.000000, 17.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(0.000000, 16.000000));
  ShapeObjectOklahomatOKt.addLineToPoint(CGPointMake(0.000000, 1.000000));
  ShapeObjectOklahomatOKt.closePath;
  ShapeObjectOklahomatOKt.moveToPoint(CGPointMake(0.000000, 1.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 524.000000, 374.000000);

  // Shape Fill
  ShapeObjectOklahomatOKt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectOklahomatOKt.addClip;
  FillLinearGradient(context,
    CGPointMake(98.500000, 0.000000),
    CGPointMake(98.500000, 94.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectOklahomatOKt.setLineWidth(3);
  ShapeObjectOklahomatOKt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectOklahomatOKt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectOklahomatOKt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectOhiotOHt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectOhiotOHt(context: CGContextRef);
var
  ShapeObjectOhiotOHt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectOhiotOHt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectOhiotOHt.moveToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(9.000000, 94.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(11.000000, 92.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(14.000000, 94.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(16.000000, 92.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(18.000000, 94.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(20.000000, 94.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(23.000000, 100.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(26.000000, 101.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(31.000000, 100.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(34.000000, 103.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(36.000000, 104.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(38.000000, 101.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(42.000000, 101.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(44.000000, 103.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(45.000000, 102.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(48.000000, 102.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(49.000000, 100.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(53.000000, 97.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(55.000000, 102.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(59.000000, 103.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(61.000000, 106.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(63.000000, 105.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(67.000000, 103.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(67.000000, 100.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(69.000000, 99.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(68.000000, 94.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(68.000000, 92.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(69.000000, 89.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(71.000000, 87.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(73.000000, 88.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(73.000000, 90.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(74.000000, 90.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(76.000000, 88.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(76.000000, 86.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(75.000000, 85.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(76.000000, 83.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(77.000000, 79.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(79.000000, 78.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(79.000000, 76.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(82.000000, 74.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(84.000000, 76.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(88.000000, 72.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(88.000000, 69.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(93.000000, 66.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(93.000000, 62.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(94.000000, 56.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(94.000000, 51.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(95.000000, 47.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(94.000000, 44.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(95.000000, 41.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(92.000000, 39.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(95.000000, 37.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(89.000000, 0.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(73.000000, 10.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(66.000000, 18.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(63.000000, 19.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(59.000000, 19.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(55.000000, 21.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(52.000000, 22.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(51.000000, 24.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(45.000000, 23.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(43.000000, 23.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(41.000000, 24.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(38.000000, 23.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(44.000000, 20.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(42.000000, 20.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(40.000000, 21.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(35.000000, 19.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(30.000000, 18.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(28.000000, 17.000000));
  ShapeObjectOhiotOHt.addLineToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectOhiotOHt.closePath;
  ShapeObjectOhiotOHt.moveToPoint(CGPointMake(0.000000, 22.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 917.000000, 201.000000);

  // Shape Fill
  ShapeObjectOhiotOHt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectOhiotOHt.addClip;
  FillLinearGradient(context,
    CGPointMake(47.500000, 0.000000),
    CGPointMake(47.500000, 106.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectOhiotOHt.setLineWidth(3);
  ShapeObjectOhiotOHt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectOhiotOHt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectOhiotOHt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNorthDakotatNDt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNorthDakotatNDt(context: CGContextRef);
var
  ShapeObjectNorthDakotatNDt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNorthDakotatNDt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNorthDakotatNDt.moveToPoint(CGPointMake(77.000000, 83.000000));
  ShapeObjectNorthDakotatNDt.addCurveToPoint(CGPointMake(0.000000, 82.000000), CGPointMake(51.182129, 83.000000), CGPointMake(0.000000, 82.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(2.000000, 0.000000));
  ShapeObjectNorthDakotatNDt.addCurveToPoint(CGPointMake(58.498566, 1.421631), CGPointMake(2.000000, 0.000000), CGPointMake(39.665711, 1.281087));
  ShapeObjectNorthDakotatNDt.addCurveToPoint(CGPointMake(136.000000, 1.000000), CGPointMake(84.332377, 1.614421), CGPointMake(136.000000, 1.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(139.000000, 9.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(138.000000, 12.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(138.000000, 23.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(144.000000, 37.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(145.000000, 42.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(145.000000, 50.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(146.000000, 55.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(146.000000, 57.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(147.000000, 64.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(148.000000, 68.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(151.000000, 72.000000));
  ShapeObjectNorthDakotatNDt.addLineToPoint(CGPointMake(152.000000, 82.000000));
  ShapeObjectNorthDakotatNDt.addCurveToPoint(CGPointMake(77.000000, 83.000000), CGPointMake(152.000000, 82.000000), CGPointMake(101.848796, 83.000000));
  ShapeObjectNorthDakotatNDt.closePath;
  ShapeObjectNorthDakotatNDt.moveToPoint(CGPointMake(77.000000, 83.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 510.000000, 46.000000);

  // Shape Fill
  ShapeObjectNorthDakotatNDt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNorthDakotatNDt.addClip;
  FillLinearGradient(context,
    CGPointMake(76.000000, 0.000000),
    CGPointMake(76.000000, 83.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNorthDakotatNDt.setLineWidth(3);
  ShapeObjectNorthDakotatNDt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNorthDakotatNDt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNorthDakotatNDt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNorthCarolinatNCt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNorthCarolinatNCt(context: CGContextRef);
var
  ShapeObjectNorthCarolinatNCt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNorthCarolinatNCt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNorthCarolinatNCt.moveToPoint(CGPointMake(53.000000, 23.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(179.000000, 0.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(183.000000, 4.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(187.000000, 10.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(182.000000, 6.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(183.000000, 9.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(178.000000, 6.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(176.000000, 7.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(181.000000, 10.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(179.000000, 11.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(175.000000, 10.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(178.000000, 13.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(172.000000, 10.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(172.000000, 12.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(175.000000, 14.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(172.000000, 16.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(168.000000, 16.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(167.000000, 12.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(167.000000, 8.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(165.000000, 8.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(165.000000, 14.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(167.000000, 17.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(167.000000, 20.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(172.000000, 19.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(174.000000, 17.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(176.000000, 19.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(179.000000, 18.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(181.000000, 15.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(183.000000, 18.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(182.000000, 21.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(184.000000, 22.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(182.000000, 24.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(185.000000, 24.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(186.000000, 20.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(185.000000, 17.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(188.000000, 17.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(189.000000, 15.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(191.000000, 19.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(191.000000, 22.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(191.000000, 25.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(189.000000, 24.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(188.000000, 25.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(186.000000, 31.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(184.000000, 33.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(180.000000, 33.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(178.000000, 31.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(176.000000, 33.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(175.000000, 31.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(177.000000, 29.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(171.000000, 30.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(173.000000, 33.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(167.000000, 33.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(163.000000, 32.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(165.000000, 35.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(171.000000, 36.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(177.000000, 36.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(177.000000, 38.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(173.000000, 40.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(176.000000, 41.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(173.000000, 45.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(170.000000, 45.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(164.000000, 42.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(168.000000, 47.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(172.000000, 48.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(174.000000, 48.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(176.000000, 45.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(178.000000, 47.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(183.000000, 44.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(179.000000, 52.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(176.000000, 50.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(173.000000, 52.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(168.000000, 55.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(165.000000, 53.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(165.000000, 56.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(162.000000, 60.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(161.000000, 56.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(159.000000, 56.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(160.000000, 58.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(159.000000, 59.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(161.000000, 61.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(157.000000, 64.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(154.000000, 69.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(152.000000, 74.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(152.000000, 77.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(150.000000, 73.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(150.000000, 82.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(143.000000, 82.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(142.000000, 82.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(140.000000, 84.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(137.000000, 85.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(108.000000, 64.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(82.000000, 68.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(81.000000, 64.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(77.000000, 61.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(75.000000, 63.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(74.000000, 60.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(44.000000, 64.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(37.000000, 67.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(36.000000, 69.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(35.000000, 69.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(28.000000, 72.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(0.000000, 76.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(0.000000, 69.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(1.000000, 68.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(5.000000, 69.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(6.000000, 63.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(12.000000, 58.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(17.000000, 58.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(24.000000, 50.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(28.000000, 50.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(29.000000, 45.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(31.000000, 45.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(32.000000, 42.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(35.000000, 41.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(36.000000, 43.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(38.000000, 43.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(40.000000, 38.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(45.000000, 37.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(47.000000, 38.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(50.000000, 31.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(52.000000, 29.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(53.000000, 29.000000));
  ShapeObjectNorthCarolinatNCt.addLineToPoint(CGPointMake(53.000000, 23.000000));
  ShapeObjectNorthCarolinatNCt.closePath;
  ShapeObjectNorthCarolinatNCt.moveToPoint(CGPointMake(53.000000, 23.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 953.000000, 331.000000);

  // Shape Fill
  ShapeObjectNorthCarolinatNCt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNorthCarolinatNCt.addClip;
  FillLinearGradient(context,
    CGPointMake(95.500000, 0.000000),
    CGPointMake(95.500000, 85.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNorthCarolinatNCt.setLineWidth(3);
  ShapeObjectNorthCarolinatNCt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNorthCarolinatNCt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNorthCarolinatNCt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewYorktNYt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNewYorktNYt(context: CGContextRef);
var
  ShapeObjectNewYorktNYt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewYorktNYt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(0.000000, 102.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(1.000000, 109.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(92.000000, 90.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(95.000000, 91.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(96.000000, 93.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(98.000000, 92.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(101.000000, 94.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(101.000000, 99.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(103.000000, 102.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(109.000000, 102.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(111.000000, 104.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(129.000000, 110.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(129.000000, 109.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(128.000000, 106.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(126.000000, 104.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(126.000000, 101.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(127.000000, 101.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(128.000000, 103.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(129.000000, 105.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(130.000000, 106.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(131.000000, 114.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(134.000000, 111.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(135.000000, 109.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(133.000000, 106.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(137.000000, 101.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(135.000000, 99.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(132.000000, 79.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(131.000000, 79.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(132.000000, 59.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(131.000000, 58.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(127.000000, 40.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(127.000000, 38.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(125.000000, 36.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(124.000000, 37.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(123.000000, 38.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(123.000000, 36.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(123.000000, 32.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(122.000000, 31.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(122.000000, 30.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(121.000000, 29.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(120.000000, 26.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(119.000000, 26.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(119.000000, 21.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(120.000000, 19.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(118.000000, 16.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(117.000000, 12.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(116.000000, 10.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(116.000000, 7.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(116.000000, 5.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(115.000000, 4.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(115.000000, 0.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(87.000000, 7.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(84.000000, 7.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(79.000000, 11.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(77.000000, 14.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(71.000000, 22.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(70.000000, 24.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(70.000000, 27.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(67.000000, 30.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(60.000000, 37.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(61.000000, 38.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(64.000000, 38.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(66.000000, 38.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(67.000000, 39.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(66.000000, 41.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(64.000000, 44.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(63.000000, 44.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(65.000000, 46.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(65.000000, 48.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(67.000000, 49.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(66.000000, 50.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(66.000000, 52.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(64.000000, 53.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(62.000000, 53.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(58.000000, 58.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(57.000000, 60.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(53.000000, 62.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(52.000000, 63.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(49.000000, 63.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(46.000000, 63.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(44.000000, 64.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(40.000000, 66.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(38.000000, 66.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(36.000000, 64.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(27.000000, 65.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(25.000000, 66.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(21.000000, 66.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(9.000000, 71.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(10.000000, 73.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(10.000000, 75.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(10.000000, 76.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(14.000000, 76.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(14.000000, 78.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(13.000000, 80.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(15.000000, 82.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(15.000000, 84.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(13.000000, 87.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(11.000000, 91.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(7.000000, 94.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(5.000000, 97.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(0.000000, 102.000000));
  ShapeObjectNewYorktNYt.closePath;
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(0.000000, 102.000000));
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(128.000000, 120.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(127.000000, 121.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(126.000000, 124.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(128.000000, 123.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(129.000000, 121.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(128.000000, 120.000000));
  ShapeObjectNewYorktNYt.closePath;
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(128.000000, 120.000000));
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(130.000000, 119.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(130.000000, 120.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(131.000000, 121.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(132.000000, 120.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(133.000000, 119.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(134.000000, 118.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(136.000000, 119.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(137.000000, 118.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(145.000000, 114.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(148.000000, 114.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(148.000000, 112.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(150.000000, 112.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(154.000000, 109.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(159.000000, 108.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(160.000000, 106.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(159.000000, 105.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(158.000000, 106.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(157.000000, 105.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(161.000000, 100.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(160.000000, 99.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(156.000000, 104.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(155.000000, 105.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(150.000000, 106.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(148.000000, 106.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(147.000000, 107.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(146.000000, 107.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(146.000000, 108.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(142.000000, 109.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(141.000000, 110.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(139.000000, 109.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(139.000000, 111.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(138.000000, 110.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(137.000000, 111.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(137.000000, 113.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(135.000000, 114.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(134.000000, 115.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(132.000000, 115.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(131.000000, 116.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(130.000000, 119.000000));
  ShapeObjectNewYorktNYt.closePath;
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(130.000000, 119.000000));
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(161.000000, 104.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(161.000000, 105.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(162.000000, 105.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(165.000000, 103.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(166.000000, 101.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(168.000000, 101.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(171.000000, 98.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(167.000000, 100.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(166.000000, 100.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(165.000000, 100.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(163.000000, 101.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(162.000000, 102.000000));
  ShapeObjectNewYorktNYt.addLineToPoint(CGPointMake(161.000000, 104.000000));
  ShapeObjectNewYorktNYt.closePath;
  ShapeObjectNewYorktNYt.moveToPoint(CGPointMake(161.000000, 104.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1021.000000, 89.000000);

  // Shape Fill
  ShapeObjectNewYorktNYt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNewYorktNYt.addClip;
  FillLinearGradient(context,
    CGPointMake(85.500000, 0.000000),
    CGPointMake(85.500000, 124.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewYorktNYt.setLineWidth(3);
  ShapeObjectNewYorktNYt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewYorktNYt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewYorktNYt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewMexicotNMt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNewMexicotNMt(context: CGContextRef);
var
  ShapeObjectNewMexicotNMt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewMexicotNMt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewMexicotNMt.moveToPoint(CGPointMake(13.000000, 0.000000));
  ShapeObjectNewMexicotNMt.addCurveToPoint(CGPointMake(67.366389, 4.174680), CGPointMake(13.000000, 0.000000), CGPointMake(49.244260, 3.116453));
  ShapeObjectNewMexicotNMt.addCurveToPoint(CGPointMake(150.000000, 8.000000), CGPointMake(94.910926, 5.783120), CGPointMake(150.000000, 8.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(150.000000, 22.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(148.000000, 22.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(144.000000, 149.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(59.000000, 145.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(59.000000, 148.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(62.000000, 151.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(21.000000, 148.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(20.000000, 161.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(0.000000, 159.000000));
  ShapeObjectNewMexicotNMt.addLineToPoint(CGPointMake(13.000000, 0.000000));
  ShapeObjectNewMexicotNMt.closePath;
  ShapeObjectNewMexicotNMt.moveToPoint(CGPointMake(13.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 374.000000, 368.000000);

  // Shape Fill
  ShapeObjectNewMexicotNMt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNewMexicotNMt.addClip;
  FillLinearGradient(context,
    CGPointMake(75.000000, 0.000000),
    CGPointMake(75.000000, 161.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewMexicotNMt.setLineWidth(3);
  ShapeObjectNewMexicotNMt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewMexicotNMt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewMexicotNMt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewJerseytNJt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNewJerseytNJt(context: CGContextRef);
var
  ShapeObjectNewJerseytNJt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewJerseytNJt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewJerseytNJt.moveToPoint(CGPointMake(7.000000, 0.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(25.000000, 6.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(26.000000, 7.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(25.000000, 11.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(25.000000, 14.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(23.000000, 15.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(22.000000, 17.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(21.000000, 20.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(22.000000, 22.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(26.000000, 23.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(28.000000, 23.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(29.000000, 28.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(28.000000, 33.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(28.000000, 36.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(28.000000, 39.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(27.000000, 40.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(28.000000, 42.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(27.000000, 46.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(26.000000, 47.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(24.000000, 47.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(26.000000, 50.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(24.000000, 50.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(24.000000, 52.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(25.000000, 53.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(23.000000, 53.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(22.000000, 55.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(20.000000, 56.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(22.000000, 57.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(20.000000, 61.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(20.000000, 62.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(19.000000, 63.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(19.000000, 65.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(17.000000, 67.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(17.000000, 65.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(17.000000, 60.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(15.000000, 60.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(13.000000, 60.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(11.000000, 61.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(10.000000, 59.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(7.000000, 59.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(6.000000, 57.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(4.000000, 57.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(1.000000, 55.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(1.000000, 52.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(0.000000, 51.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(1.000000, 48.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(1.000000, 46.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(2.000000, 46.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(4.000000, 43.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(6.000000, 41.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(6.000000, 39.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(13.000000, 33.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(13.000000, 31.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(7.000000, 27.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(5.000000, 27.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(4.000000, 23.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(1.000000, 24.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(0.000000, 20.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(1.000000, 17.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(2.000000, 15.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(0.000000, 13.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(0.000000, 11.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(2.000000, 9.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(4.000000, 5.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(4.000000, 3.000000));
  ShapeObjectNewJerseytNJt.addLineToPoint(CGPointMake(7.000000, 0.000000));
  ShapeObjectNewJerseytNJt.closePath;
  ShapeObjectNewJerseytNJt.moveToPoint(CGPointMake(7.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1125.000000, 193.000000);

  // Shape Fill
  ShapeObjectNewJerseytNJt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNewJerseytNJt.addClip;
  FillLinearGradient(context,
    CGPointMake(14.500000, 0.000000),
    CGPointMake(14.500000, 67.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewJerseytNJt.setLineWidth(3);
  ShapeObjectNewJerseytNJt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewJerseytNJt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewJerseytNJt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewHampshiretNHt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNewHampshiretNHt(context: CGContextRef);
var
  ShapeObjectNewHampshiretNHt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewHampshiretNHt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewHampshiretNHt.moveToPoint(CGPointMake(5.000000, 75.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(26.000000, 70.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(29.000000, 69.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(31.000000, 65.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(32.000000, 65.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(33.000000, 63.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(35.000000, 62.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(37.000000, 62.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(37.000000, 59.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(38.000000, 57.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(34.000000, 55.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(34.000000, 52.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(30.000000, 50.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(30.000000, 47.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(28.000000, 42.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(14.000000, 0.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(13.000000, 2.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(10.000000, 1.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(9.000000, 2.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(9.000000, 4.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(8.000000, 7.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(8.000000, 10.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(9.000000, 12.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(7.000000, 16.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(10.000000, 20.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(9.000000, 21.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(9.000000, 23.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(6.000000, 28.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(5.000000, 29.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(3.000000, 29.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(2.000000, 31.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(3.000000, 34.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(3.000000, 41.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(2.000000, 42.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(2.000000, 46.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(1.000000, 48.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(1.000000, 51.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(0.000000, 52.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(1.000000, 58.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(2.000000, 59.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(1.000000, 63.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(2.000000, 65.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(2.000000, 68.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(1.000000, 69.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(1.000000, 72.000000));
  ShapeObjectNewHampshiretNHt.addLineToPoint(CGPointMake(5.000000, 75.000000));
  ShapeObjectNewHampshiretNHt.closePath;
  ShapeObjectNewHampshiretNHt.moveToPoint(CGPointMake(5.000000, 75.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1165.000000, 70.000000);

  // Shape Fill
  ShapeObjectNewHampshiretNHt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNewHampshiretNHt.addClip;
  FillLinearGradient(context,
    CGPointMake(19.000000, 0.000000),
    CGPointMake(19.000000, 75.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewHampshiretNHt.setLineWidth(3);
  ShapeObjectNewHampshiretNHt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewHampshiretNHt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewHampshiretNHt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNevadatNVt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNevadatNVt(context: CGContextRef);
var
  ShapeObjectNevadatNVt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNevadatNVt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNevadatNVt.moveToPoint(CGPointMake(78.760244, 10.539557));
  ShapeObjectNevadatNVt.addCurveToPoint(CGPointMake(141.000000, 19.000000), CGPointMake(99.506830, 13.693038), CGPointMake(141.000000, 19.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(121.000000, 178.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(120.000000, 180.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(118.000000, 184.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(115.000000, 184.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(114.000000, 180.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(112.000000, 181.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(109.000000, 179.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(105.000000, 181.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(104.000000, 185.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(105.000000, 188.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(104.000000, 190.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(105.000000, 195.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(104.000000, 198.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(105.000000, 203.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(105.000000, 207.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(103.000000, 208.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(103.000000, 212.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(0.000000, 81.000000));
  ShapeObjectNevadatNVt.addLineToPoint(CGPointMake(15.000000, 0.000000));
  ShapeObjectNevadatNVt.addCurveToPoint(CGPointMake(78.760244, 10.539557), CGPointMake(15.000000, 0.000000), CGPointMake(57.840163, 7.359705));
  ShapeObjectNevadatNVt.closePath;
  ShapeObjectNevadatNVt.moveToPoint(CGPointMake(78.760244, 10.539557));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 151.000000, 199.000000);

  // Shape Fill
  ShapeObjectNevadatNVt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNevadatNVt.addClip;
  FillLinearGradient(context,
    CGPointMake(70.500000, 0.000000),
    CGPointMake(70.500000, 212.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNevadatNVt.setLineWidth(3);
  ShapeObjectNevadatNVt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNevadatNVt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNevadatNVt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNebraskatNEt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectNebraskatNEt(context: CGContextRef);
var
  ShapeObjectNebraskatNEt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNebraskatNEt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNebraskatNEt.moveToPoint(CGPointMake(43.000000, 55.823863));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(43.000000, 84.732650));
  ShapeObjectNebraskatNEt.addCurveToPoint(CGPointMake(102.804274, 84.912844), CGPointMake(43.000000, 84.732650), CGPointMake(82.869516, 85.185064));
  ShapeObjectNebraskatNEt.addCurveToPoint(CGPointMake(189.000000, 82.738940), CGPointMake(131.536183, 84.520495), CGPointMake(189.000000, 82.738940));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(187.000000, 80.745231));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(187.000000, 78.751521));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(185.000000, 75.760957));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(182.000000, 73.767248));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(180.000000, 68.782974));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(178.000000, 67.786120));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(178.000000, 63.798701));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(176.000000, 61.804991));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(176.000000, 57.817573));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(176.000000, 49.842735));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(174.000000, 47.849026));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(176.000000, 46.852171));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(173.000000, 44.858462));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(173.000000, 41.867897));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(170.000000, 38.877333));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(171.000000, 32.896205));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(169.000000, 30.902496));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(169.000000, 27.911932));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(167.000000, 26.915077));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(166.000000, 23.924513));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(164.000000, 22.927658));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(164.000000, 18.940239));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(163.000000, 13.955966));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(159.000000, 13.955966));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(157.000000, 10.965402));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(157.000000, 8.971692));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(154.000000, 8.971692));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(153.000000, 7.974838));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(150.000000, 6.977983));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(147.000000, 6.977983));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(144.000000, 3.987419));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(139.000000, 4.984274));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(137.000000, 4.984274));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(132.000000, 4.984274));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(130.000000, 6.977983));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(127.000000, 6.977983));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(119.000000, 1.993709));
  ShapeObjectNebraskatNEt.addCurveToPoint(CGPointMake(45.478786, 1.737744), CGPointMake(119.000000, 1.993709), CGPointMake(69.985857, 2.155351));
  ShapeObjectNebraskatNEt.addCurveToPoint(CGPointMake(2.000000, 0.000000), CGPointMake(30.985857, 1.490781), CGPointMake(2.000000, 0.000000));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(0.000000, 55.823863));
  ShapeObjectNebraskatNEt.addLineToPoint(CGPointMake(43.000000, 55.823863));
  ShapeObjectNebraskatNEt.closePath;
  ShapeObjectNebraskatNEt.moveToPoint(CGPointMake(43.000000, 55.823863));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 505.000000, 208.000000);

  // Shape Fill
  ShapeObjectNebraskatNEt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectNebraskatNEt.addClip;
  FillLinearGradient(context,
    CGPointMake(94.500000, 0.000000),
    CGPointMake(94.500000, 85.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNebraskatNEt.setLineWidth(3);
  ShapeObjectNebraskatNEt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNebraskatNEt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNebraskatNEt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMontanatMTt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMontanatMTt(context: CGContextRef);
var
  ShapeObjectMontanatMTt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMontanatMTt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMontanatMTt.moveToPoint(CGPointMake(161.382111, 125.129801));
  ShapeObjectMontanatMTt.addCurveToPoint(CGPointMake(236.000000, 128.000000), CGPointMake(184.921407, 126.753201), CGPointMake(236.000000, 128.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(239.000000, 21.000000));
  ShapeObjectMontanatMTt.addCurveToPoint(CGPointMake(163.049124, 16.943768), CGPointMake(239.000000, 21.000000), CGPointMake(202.154484, 19.725427));
  ShapeObjectMontanatMTt.addCurveToPoint(CGPointMake(97.864827, 10.787346), CGPointMake(139.663701, 15.280305), CGPointMake(115.470121, 12.435501));
  ShapeObjectMontanatMTt.addCurveToPoint(CGPointMake(4.000000, 0.000000), CGPointMake(66.576551, 7.858230), CGPointMake(4.000000, 0.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(0.000000, 25.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(4.000000, 31.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(6.000000, 36.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(5.000000, 38.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(6.000000, 41.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(5.000000, 41.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(9.000000, 46.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(12.000000, 48.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(19.000000, 57.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(18.000000, 59.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(22.000000, 63.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(24.000000, 63.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(24.000000, 66.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(30.000000, 66.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(26.000000, 78.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(24.000000, 79.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(25.000000, 87.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(22.000000, 88.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(22.000000, 94.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(26.000000, 98.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(34.000000, 92.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(36.000000, 96.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(38.000000, 104.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(42.000000, 112.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(41.000000, 116.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(44.000000, 119.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(47.000000, 119.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(49.000000, 127.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(53.000000, 131.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(55.000000, 128.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(62.000000, 130.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(64.000000, 127.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(73.000000, 128.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(74.000000, 129.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(80.000000, 129.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(82.000000, 125.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(84.000000, 125.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(89.000000, 132.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(90.000000, 131.000000));
  ShapeObjectMontanatMTt.addLineToPoint(CGPointMake(91.000000, 118.000000));
  ShapeObjectMontanatMTt.addCurveToPoint(CGPointMake(161.382111, 125.129801), CGPointMake(91.000000, 118.000000), CGPointMake(136.588074, 123.419867));
  ShapeObjectMontanatMTt.closePath;
  ShapeObjectMontanatMTt.moveToPoint(CGPointMake(161.382111, 125.129801));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 273.000000, 25.000000);

  // Shape Fill
  ShapeObjectMontanatMTt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMontanatMTt.addClip;
  FillLinearGradient(context,
    CGPointMake(119.500000, 0.000000),
    CGPointMake(119.500000, 132.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMontanatMTt.setLineWidth(3);
  ShapeObjectMontanatMTt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMontanatMTt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMontanatMTt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMissouritMOt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMissouritMOt(context: CGContextRef);
var
  ShapeObjectMissouritMOt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMissouritMOt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMissouritMOt.moveToPoint(CGPointMake(35.965225, 3.956521));
  ShapeObjectMissouritMOt.addCurveToPoint(CGPointMake(0.000000, 5.000000), CGPointMake(23.976817, 4.637681), CGPointMake(0.000000, 5.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(2.000000, 8.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(4.000000, 13.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(7.000000, 15.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(9.000000, 18.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(9.000000, 20.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(11.000000, 22.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(16.000000, 25.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(18.000000, 24.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(20.000000, 25.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(21.000000, 28.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(19.000000, 29.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(18.000000, 31.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(16.000000, 34.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(18.000000, 36.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(21.000000, 38.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(21.000000, 40.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(23.000000, 43.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(26.000000, 43.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(28.000000, 44.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(30.000000, 105.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(31.000000, 119.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(132.000000, 112.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(135.000000, 115.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(135.000000, 117.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(130.000000, 124.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(129.000000, 125.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(129.000000, 126.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(129.000000, 127.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(143.000000, 125.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(144.000000, 122.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(146.000000, 121.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(144.000000, 118.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(146.000000, 118.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(145.000000, 115.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(147.000000, 115.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(146.000000, 111.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(146.000000, 109.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(148.000000, 111.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(149.000000, 110.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(150.000000, 107.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(150.000000, 106.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(153.000000, 108.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(154.000000, 105.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(155.000000, 102.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(154.000000, 100.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(155.000000, 96.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(153.000000, 96.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(151.000000, 94.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(151.000000, 96.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(148.000000, 95.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(148.000000, 93.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(145.000000, 89.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(145.000000, 88.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(146.000000, 85.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(146.000000, 84.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(144.000000, 82.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(144.000000, 78.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(140.000000, 76.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(138.000000, 73.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(137.000000, 73.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(133.000000, 71.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(131.000000, 70.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(123.000000, 64.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(123.000000, 60.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(126.000000, 52.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(126.000000, 49.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(127.000000, 47.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(124.000000, 44.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(120.000000, 44.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(117.000000, 47.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(115.000000, 45.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(113.000000, 40.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(113.000000, 37.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(111.000000, 34.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(105.000000, 31.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(104.000000, 29.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(98.000000, 24.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(97.000000, 22.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(96.000000, 20.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(95.000000, 18.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(93.000000, 12.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(94.000000, 8.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(95.000000, 6.000000));
  ShapeObjectMissouritMOt.addLineToPoint(CGPointMake(88.000000, 0.000000));
  ShapeObjectMissouritMOt.addCurveToPoint(CGPointMake(35.965225, 3.956521), CGPointMake(88.000000, 0.000000), CGPointMake(53.310150, 2.971014));
  ShapeObjectMissouritMOt.closePath;
  ShapeObjectMissouritMOt.moveToPoint(CGPointMake(35.965225, 3.956521));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 683.000000, 269.000000);

  // Shape Fill
  ShapeObjectMissouritMOt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMissouritMOt.addClip;
  FillLinearGradient(context,
    CGPointMake(77.500000, 0.000000),
    CGPointMake(77.500000, 127.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMissouritMOt.setLineWidth(3);
  ShapeObjectMissouritMOt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMissouritMOt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMissouritMOt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMississippitMSt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMississippitMSt(context: CGContextRef);
var
  ShapeObjectMississippitMSt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMississippitMSt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMississippitMSt.moveToPoint(CGPointMake(71.000000, 0.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(72.000000, 2.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(74.000000, 3.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(74.000000, 72.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(74.000000, 89.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(80.000000, 129.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(79.000000, 132.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(75.000000, 130.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(74.000000, 131.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(71.000000, 131.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(67.000000, 129.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(63.000000, 132.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(60.000000, 134.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(57.000000, 132.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(57.000000, 134.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(56.000000, 137.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(51.000000, 138.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(51.000000, 136.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(49.000000, 131.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(46.000000, 128.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(45.000000, 125.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(46.000000, 118.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(46.000000, 116.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(1.000000, 120.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(1.000000, 116.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(0.000000, 112.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(2.000000, 112.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(3.000000, 110.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(2.000000, 106.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(4.000000, 103.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(6.000000, 96.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(12.000000, 91.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(11.000000, 87.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(12.000000, 87.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(14.000000, 81.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(10.000000, 78.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(10.000000, 75.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(8.000000, 72.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(10.000000, 71.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(9.000000, 70.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(8.000000, 68.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(10.000000, 65.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(7.000000, 63.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(7.000000, 60.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(9.000000, 58.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(7.000000, 55.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(7.000000, 50.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(5.000000, 48.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(7.000000, 46.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(5.000000, 44.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(8.000000, 40.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(7.000000, 35.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(11.000000, 33.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(12.000000, 32.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(10.000000, 30.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(14.000000, 26.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(14.000000, 24.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(17.000000, 22.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(17.000000, 13.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(20.000000, 13.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(20.000000, 10.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(23.000000, 8.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(23.000000, 5.000000));
  ShapeObjectMississippitMSt.addLineToPoint(CGPointMake(71.000000, 0.000000));
  ShapeObjectMississippitMSt.closePath;
  ShapeObjectMississippitMSt.moveToPoint(CGPointMake(71.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 793.000000, 418.000000);

  // Shape Fill
  ShapeObjectMississippitMSt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMississippitMSt.addClip;
  FillLinearGradient(context,
    CGPointMake(40.000000, 0.000000),
    CGPointMake(40.000000, 138.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMississippitMSt.setLineWidth(3);
  ShapeObjectMississippitMSt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMississippitMSt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMississippitMSt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMinnesotatMNt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMinnesotatMNt(context: CGContextRef);
var
  ShapeObjectMinnesotatMNt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMinnesotatMNt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMinnesotatMNt.moveToPoint(CGPointMake(129.000000, 154.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(20.000000, 160.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(19.000000, 111.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(17.000000, 108.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(13.000000, 107.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(10.000000, 101.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(13.000000, 99.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(15.000000, 96.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(16.000000, 93.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(15.000000, 83.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(12.000000, 79.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(11.000000, 75.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(10.000000, 68.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(10.000000, 66.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(9.000000, 61.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(9.000000, 53.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(8.000000, 47.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(2.000000, 34.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(2.000000, 23.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(3.000000, 20.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(0.000000, 12.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(41.000000, 10.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(41.000000, 0.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(45.000000, 1.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(47.000000, 4.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(49.000000, 10.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(49.000000, 14.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(52.000000, 17.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(58.000000, 17.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(59.000000, 18.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(67.000000, 19.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(68.000000, 22.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(71.000000, 21.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(75.000000, 21.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(76.000000, 19.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(79.000000, 18.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(85.000000, 18.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(87.000000, 19.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(91.000000, 19.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(91.000000, 21.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(89.000000, 21.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(90.000000, 22.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(94.000000, 22.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(95.000000, 26.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(97.000000, 27.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(98.000000, 28.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(99.000000, 24.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(103.000000, 24.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(104.000000, 27.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(106.000000, 27.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(109.000000, 27.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(110.000000, 30.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(112.000000, 30.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(113.000000, 32.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(118.000000, 30.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(120.000000, 29.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(126.000000, 25.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(129.000000, 29.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(133.000000, 28.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(142.000000, 27.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(145.000000, 30.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(147.000000, 29.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(151.000000, 29.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(144.000000, 34.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(133.000000, 38.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(126.000000, 44.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(118.000000, 53.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(110.000000, 61.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(105.000000, 64.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(104.000000, 67.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(103.000000, 69.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(101.000000, 69.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(102.000000, 79.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(102.000000, 85.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(99.000000, 87.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(94.000000, 90.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(93.000000, 93.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(91.000000, 96.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(91.000000, 99.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(94.000000, 100.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(96.000000, 103.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(95.000000, 107.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(94.000000, 110.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(95.000000, 112.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(94.000000, 113.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(95.000000, 115.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(94.000000, 121.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(99.000000, 125.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(103.000000, 125.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(106.000000, 128.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(110.000000, 129.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(114.000000, 133.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(117.000000, 137.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(120.000000, 139.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(124.000000, 139.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(128.000000, 143.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(129.000000, 146.000000));
  ShapeObjectMinnesotatMNt.addLineToPoint(CGPointMake(129.000000, 154.000000));
  ShapeObjectMinnesotatMNt.closePath;
  ShapeObjectMinnesotatMNt.moveToPoint(CGPointMake(129.000000, 154.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 646.000000, 35.000000);

  // Shape Fill
  ShapeObjectMinnesotatMNt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMinnesotatMNt.addClip;
  FillLinearGradient(context,
    CGPointMake(75.500000, 0.000000),
    CGPointMake(75.500000, 160.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMinnesotatMNt.setLineWidth(3);
  ShapeObjectMinnesotatMNt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMinnesotatMNt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMinnesotatMNt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMichigantMIt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMichigantMIt(context: CGContextRef);
var
  ShapeObjectMichigantMIt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMichigantMIt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMichigantMIt.moveToPoint(CGPointMake(89.000000, 152.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(132.000000, 146.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(132.000000, 148.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(160.000000, 143.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(160.000000, 140.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(164.000000, 135.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(164.000000, 128.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(166.000000, 124.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(169.000000, 123.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(168.000000, 119.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(171.000000, 117.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(170.000000, 115.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(172.000000, 114.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(175.000000, 117.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(177.000000, 105.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(173.000000, 100.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(170.000000, 90.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(167.000000, 82.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(165.000000, 78.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(161.000000, 78.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(157.000000, 81.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(155.000000, 81.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(152.000000, 89.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(150.000000, 89.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(149.000000, 92.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(146.000000, 92.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(141.000000, 91.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(142.000000, 83.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(146.000000, 81.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(148.000000, 79.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(148.000000, 75.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(150.000000, 73.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(152.000000, 71.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(151.000000, 60.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(149.000000, 56.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(146.000000, 54.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(147.000000, 51.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(150.000000, 52.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(148.000000, 49.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(146.000000, 49.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(146.000000, 45.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(142.000000, 45.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(139.000000, 44.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(136.000000, 43.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(130.000000, 43.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(129.000000, 40.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(126.000000, 39.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(123.000000, 39.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(117.000000, 37.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(114.000000, 39.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(111.000000, 42.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(111.000000, 45.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(112.000000, 46.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(116.000000, 47.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(115.000000, 48.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(109.000000, 50.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(106.000000, 52.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(107.000000, 57.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(107.000000, 63.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(105.000000, 67.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(103.000000, 66.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(102.000000, 64.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(102.000000, 59.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(102.000000, 55.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(99.000000, 61.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(98.000000, 63.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(96.000000, 63.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(93.000000, 65.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(94.000000, 68.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(90.000000, 70.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(92.000000, 73.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(92.000000, 80.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(90.000000, 84.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(87.000000, 88.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(90.000000, 92.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(90.000000, 95.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(88.000000, 99.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(90.000000, 104.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(93.000000, 108.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(94.000000, 109.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(96.000000, 109.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(95.000000, 112.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(97.000000, 117.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(98.000000, 120.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(98.000000, 133.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(95.000000, 140.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(93.000000, 145.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(92.000000, 150.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(89.000000, 152.000000));
  ShapeObjectMichigantMIt.closePath;
  ShapeObjectMichigantMIt.moveToPoint(CGPointMake(89.000000, 152.000000));
  ShapeObjectMichigantMIt.moveToPoint(CGPointMake(61.000000, 63.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(67.000000, 49.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(70.000000, 44.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(71.000000, 38.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(73.000000, 41.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(73.000000, 44.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(76.000000, 40.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(80.000000, 38.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(81.000000, 42.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(78.000000, 45.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(79.000000, 46.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(84.000000, 40.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(86.000000, 37.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(90.000000, 35.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(93.000000, 36.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(98.000000, 34.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(100.000000, 31.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(107.000000, 30.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(113.000000, 32.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(116.000000, 35.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(118.000000, 29.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(123.000000, 29.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(131.000000, 30.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(134.000000, 29.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(137.000000, 29.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(141.000000, 29.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(141.000000, 27.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(139.000000, 25.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(137.000000, 28.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(133.000000, 28.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(130.000000, 26.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(128.000000, 25.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(126.000000, 24.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(126.000000, 22.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(127.000000, 19.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(126.000000, 15.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(123.000000, 17.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(119.000000, 19.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(117.000000, 19.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(116.000000, 18.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(113.000000, 19.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(108.000000, 18.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(108.000000, 11.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(104.000000, 12.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(98.000000, 16.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(91.000000, 15.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(85.000000, 17.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(79.000000, 22.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(77.000000, 24.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(74.000000, 23.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(72.000000, 25.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(69.000000, 22.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(64.000000, 25.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(61.000000, 24.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(55.000000, 16.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(49.000000, 15.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(45.000000, 16.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(39.000000, 20.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(38.000000, 13.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(42.000000, 8.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(47.000000, 3.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(46.000000, 2.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(52.000000, 0.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(49.000000, 0.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(43.000000, 1.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(37.000000, 5.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(35.000000, 8.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(32.000000, 9.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(30.000000, 12.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(28.000000, 15.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(25.000000, 15.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(21.000000, 19.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(12.000000, 21.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(10.000000, 24.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(7.000000, 26.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(0.000000, 29.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(4.000000, 30.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(7.000000, 34.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(31.000000, 39.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(35.000000, 41.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(40.000000, 40.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(46.000000, 41.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(49.000000, 42.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(49.000000, 45.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(52.000000, 45.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(55.000000, 47.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(57.000000, 52.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(55.000000, 56.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(56.000000, 56.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(59.000000, 55.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(60.000000, 55.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(58.000000, 61.000000));
  ShapeObjectMichigantMIt.addLineToPoint(CGPointMake(61.000000, 63.000000));
  ShapeObjectMichigantMIt.closePath;
  ShapeObjectMichigantMIt.moveToPoint(CGPointMake(61.000000, 63.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 785.000000, 75.000000);

  // Shape Fill
  ShapeObjectMichigantMIt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMichigantMIt.addClip;
  FillLinearGradient(context,
    CGPointMake(88.500000, 0.000000),
    CGPointMake(88.500000, 152.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMichigantMIt.setLineWidth(3);
  ShapeObjectMichigantMIt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMichigantMIt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMichigantMIt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMassachusettstMAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMassachusettstMAt(context: CGContextRef);
var
  ShapeObjectMassachusettstMAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMassachusettstMAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(0.000000, 36.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(1.000000, 36.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(14.000000, 33.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(15.000000, 34.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(36.000000, 28.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(36.000000, 29.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(44.000000, 26.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(45.000000, 29.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(46.000000, 29.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(47.000000, 29.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(47.000000, 32.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(50.000000, 33.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(51.000000, 30.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(52.000000, 30.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(52.000000, 32.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(51.000000, 34.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(52.000000, 38.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(53.000000, 39.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(54.000000, 37.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(55.000000, 36.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(56.000000, 37.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(57.000000, 35.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(57.000000, 33.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(58.000000, 33.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(60.000000, 31.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(60.000000, 29.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(62.000000, 29.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(63.000000, 31.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(63.000000, 34.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(65.000000, 34.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(66.000000, 32.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(67.000000, 31.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(70.000000, 30.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(76.000000, 27.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(76.000000, 24.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(75.000000, 23.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(74.000000, 21.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(72.000000, 18.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(71.000000, 18.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(72.000000, 20.000000));
  ShapeObjectMassachusettstMAt.addCurveToPoint(CGPointMake(74.963903, 23.273172), CGPointMake(72.000000, 20.000000), CGPointMake(74.309269, 22.182115));
  ShapeObjectMassachusettstMAt.addCurveToPoint(CGPointMake(75.000000, 25.000000), CGPointMake(75.309269, 23.848781), CGPointMake(75.000000, 25.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(72.000000, 26.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(71.000000, 27.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(70.000000, 28.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(68.000000, 28.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(64.000000, 28.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(63.000000, 26.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(63.000000, 23.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(61.000000, 24.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(58.000000, 23.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(59.000000, 20.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(55.000000, 16.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(53.000000, 17.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(52.000000, 18.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(50.000000, 17.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(49.000000, 16.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(49.000000, 14.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(50.000000, 13.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(50.000000, 12.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(52.000000, 11.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(51.000000, 10.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(51.000000, 8.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(55.000000, 7.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(56.000000, 5.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(54.000000, 6.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(52.000000, 5.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(51.000000, 4.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(51.000000, 2.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(49.000000, 2.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(50.000000, 0.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(48.000000, 0.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(46.000000, 1.000000));
  ShapeObjectMassachusettstMAt.addCurveToPoint(CGPointMake(45.000000, 3.000000), CGPointMake(46.000000, 1.000000), CGPointMake(45.333333, 2.333333));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(44.000000, 3.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(42.000000, 7.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(39.000000, 8.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(18.000000, 13.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(1.000000, 16.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(0.000000, 36.000000));
  ShapeObjectMassachusettstMAt.closePath;
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(0.000000, 36.000000));
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(62.000000, 39.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(62.000000, 41.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(64.000000, 39.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(68.000000, 38.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(65.000000, 36.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(64.000000, 38.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(62.000000, 39.000000));
  ShapeObjectMassachusettstMAt.closePath;
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(62.000000, 39.000000));
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(75.000000, 38.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(76.000000, 39.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(78.000000, 39.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(79.000000, 38.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(78.000000, 36.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(77.000000, 38.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(75.000000, 38.000000));
  ShapeObjectMassachusettstMAt.closePath;
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(75.000000, 38.000000));
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(50.000000, 35.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(49.000000, 37.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(50.000000, 40.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(51.000000, 39.000000));
  ShapeObjectMassachusettstMAt.addLineToPoint(CGPointMake(50.000000, 35.000000));
  ShapeObjectMassachusettstMAt.closePath;
  ShapeObjectMassachusettstMAt.moveToPoint(CGPointMake(50.000000, 35.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1152.000000, 132.000000);

  // Shape Fill
  ShapeObjectMassachusettstMAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMassachusettstMAt.addClip;
  FillLinearGradient(context,
    CGPointMake(39.500000, 0.000000),
    CGPointMake(39.500000, 41.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMassachusettstMAt.setLineWidth(3);
  ShapeObjectMassachusettstMAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMassachusettstMAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMassachusettstMAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMarylandtMDt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMarylandtMDt(context: CGContextRef);
var
  ShapeObjectMarylandtMDt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMarylandtMDt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMarylandtMDt.moveToPoint(CGPointMake(0.000000, 16.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(3.000000, 30.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(7.000000, 26.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(9.000000, 23.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(10.000000, 21.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(13.000000, 21.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(16.000000, 18.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(16.000000, 15.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(18.000000, 18.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(21.000000, 18.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(23.000000, 17.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(24.000000, 14.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(27.000000, 14.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(28.000000, 12.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(29.000000, 11.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(33.000000, 13.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(37.000000, 12.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(36.000000, 14.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(37.000000, 14.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(38.000000, 16.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(40.000000, 17.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(40.000000, 19.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(44.000000, 19.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(47.000000, 20.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(46.000000, 23.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(48.000000, 25.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(52.000000, 25.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(53.000000, 27.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(56.000000, 27.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(57.000000, 25.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(60.000000, 28.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(59.000000, 30.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(59.000000, 32.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(58.000000, 34.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(58.000000, 36.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(56.000000, 39.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(56.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(58.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(58.000000, 39.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(60.000000, 40.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(61.000000, 39.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(63.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(65.000000, 43.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(64.000000, 40.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(66.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(67.000000, 44.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(70.000000, 43.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(72.000000, 44.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(73.000000, 45.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(75.000000, 44.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 47.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(78.000000, 45.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(75.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(74.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(71.000000, 40.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 39.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(67.000000, 36.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(67.000000, 32.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 36.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(71.000000, 38.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(75.000000, 40.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(75.000000, 39.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(71.000000, 35.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(71.000000, 32.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 30.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 28.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 25.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(67.000000, 24.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 23.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(66.000000, 22.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 19.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(65.000000, 16.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(67.000000, 15.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(68.000000, 16.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(68.000000, 14.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(70.000000, 12.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(69.000000, 11.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(71.000000, 10.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(72.000000, 12.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(72.000000, 8.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(73.000000, 10.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(75.000000, 9.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(74.000000, 7.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(75.000000, 5.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 3.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(78.000000, 6.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(80.000000, 4.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(80.000000, 6.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(78.000000, 8.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(81.000000, 9.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(80.000000, 10.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(76.000000, 11.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(74.000000, 14.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(74.000000, 18.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(76.000000, 17.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 17.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(76.000000, 21.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(75.000000, 22.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(73.000000, 22.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(73.000000, 24.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 22.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(78.000000, 24.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 26.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(79.000000, 26.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(78.000000, 28.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 29.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(80.000000, 31.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(82.000000, 30.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(83.000000, 32.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 33.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(78.000000, 35.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(77.000000, 37.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(81.000000, 38.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(83.000000, 41.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(83.000000, 38.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(85.000000, 38.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(87.000000, 35.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(87.000000, 38.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(87.000000, 40.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(88.000000, 40.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(87.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(89.000000, 42.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(90.000000, 44.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(89.000000, 47.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(94.000000, 46.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(99.000000, 44.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(101.000000, 40.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(100.000000, 37.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(103.000000, 36.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(103.000000, 34.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(101.000000, 31.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(89.000000, 34.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(80.000000, 0.000000));
  ShapeObjectMarylandtMDt.addLineToPoint(CGPointMake(0.000000, 16.000000));
  ShapeObjectMarylandtMDt.closePath;
  ShapeObjectMarylandtMDt.moveToPoint(CGPointMake(0.000000, 16.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1039.000000, 243.000000);

  // Shape Fill
  ShapeObjectMarylandtMDt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMarylandtMDt.addClip;
  FillLinearGradient(context,
    CGPointMake(51.500000, 0.000000),
    CGPointMake(51.500000, 47.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMarylandtMDt.setLineWidth(3);
  ShapeObjectMarylandtMDt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMarylandtMDt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMarylandtMDt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMainetMEt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectMainetMEt(context: CGContextRef);
var
  ShapeObjectMainetMEt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMainetMEt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMainetMEt.moveToPoint(CGPointMake(20.000000, 4.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(11.000000, 27.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(12.000000, 34.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(10.000000, 37.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(10.000000, 39.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(9.000000, 42.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(11.000000, 43.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(10.000000, 44.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(10.000000, 48.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(12.000000, 48.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(10.000000, 52.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(10.000000, 55.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(7.000000, 59.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(6.000000, 62.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(8.000000, 64.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(7.000000, 66.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(5.000000, 65.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(5.000000, 66.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(5.000000, 70.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(2.000000, 67.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(-0.000000, 70.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(16.000000, 117.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(16.000000, 120.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(20.000000, 122.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(20.000000, 125.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(24.000000, 127.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(25.000000, 122.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(24.000000, 118.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(27.000000, 116.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(28.000000, 115.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(27.000000, 111.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(30.000000, 110.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(28.000000, 106.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(32.000000, 101.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(34.000000, 101.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(34.000000, 104.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(35.000000, 102.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(37.000000, 104.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(38.000000, 102.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(33.000000, 96.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(38.000000, 100.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(38.000000, 95.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(41.000000, 100.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(43.000000, 93.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(46.000000, 95.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(48.000000, 93.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(49.000000, 89.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(48.000000, 82.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(49.000000, 80.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(51.000000, 77.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(52.000000, 79.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(54.000000, 82.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(57.000000, 82.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(58.000000, 78.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(61.000000, 79.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(63.000000, 81.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(65.000000, 75.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(63.000000, 73.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(67.000000, 75.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(70.000000, 73.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(73.000000, 67.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(75.000000, 67.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(79.000000, 65.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(84.000000, 61.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(85.000000, 57.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(82.000000, 58.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(82.000000, 54.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(78.000000, 51.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(76.000000, 52.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(72.000000, 50.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(71.000000, 48.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(70.000000, 45.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(71.000000, 42.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(69.000000, 41.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(64.000000, 41.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(62.000000, 40.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(61.000000, 34.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(51.000000, 5.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(46.000000, 3.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(43.000000, 0.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(39.000000, 1.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(37.000000, 4.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(33.000000, 6.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(29.000000, 8.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(26.000000, 7.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(25.000000, 3.000000));
  ShapeObjectMainetMEt.addLineToPoint(CGPointMake(20.000000, 4.000000));
  ShapeObjectMainetMEt.closePath;
  ShapeObjectMainetMEt.moveToPoint(CGPointMake(20.000000, 4.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1179.000000, 0.000000);

  // Shape Fill
  ShapeObjectMainetMEt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectMainetMEt.addClip;
  FillLinearGradient(context,
    CGPointMake(42.500000, 0.000000),
    CGPointMake(42.500000, 127.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMainetMEt.setLineWidth(3);
  ShapeObjectMainetMEt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMainetMEt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMainetMEt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectLouisianatLAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectLouisianatLAt(context: CGContextRef);
var
  ShapeObjectLouisianatLAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectLouisianatLAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectLouisianatLAt.moveToPoint(CGPointMake(0.000000, 4.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(67.000000, 0.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(70.000000, 2.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(68.000000, 5.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(69.000000, 7.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(70.000000, 8.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(68.000000, 9.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(70.000000, 12.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(70.000000, 15.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(74.000000, 18.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(72.000000, 24.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(71.000000, 24.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(72.000000, 28.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(66.000000, 33.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(64.000000, 40.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(62.000000, 43.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(63.000000, 47.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(62.000000, 49.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(60.000000, 49.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(61.000000, 53.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(61.000000, 57.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(106.000000, 53.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(106.000000, 55.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(105.000000, 62.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(106.000000, 65.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(109.000000, 68.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(111.000000, 74.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(111.000000, 75.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(108.000000, 75.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(103.000000, 74.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(100.000000, 71.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(96.000000, 71.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(91.000000, 77.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(92.000000, 80.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(96.000000, 81.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(100.000000, 82.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(106.000000, 78.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(110.000000, 78.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(109.000000, 80.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(106.000000, 81.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(107.000000, 83.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(109.000000, 83.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(111.000000, 85.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(113.000000, 83.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(115.000000, 79.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(117.000000, 83.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(118.000000, 85.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(115.000000, 85.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(113.000000, 89.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(110.000000, 88.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(111.000000, 91.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(109.000000, 92.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(116.000000, 97.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(124.000000, 99.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(128.000000, 104.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(125.000000, 107.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(122.000000, 104.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(121.000000, 105.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(118.000000, 102.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(114.000000, 101.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(113.000000, 99.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(110.000000, 100.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(107.000000, 96.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(101.000000, 94.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(98.000000, 94.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(99.000000, 96.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(102.000000, 98.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(102.000000, 101.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(102.000000, 104.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(100.000000, 107.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(98.000000, 105.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(98.000000, 103.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(94.000000, 101.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(91.000000, 102.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(89.000000, 103.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(88.000000, 107.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(81.000000, 106.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(78.000000, 106.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(73.000000, 105.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(73.000000, 103.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(77.000000, 104.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(76.000000, 102.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(73.000000, 99.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(74.000000, 96.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(73.000000, 95.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(71.000000, 98.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(67.000000, 97.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(66.000000, 96.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(65.000000, 94.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(64.000000, 95.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(63.000000, 92.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(58.000000, 93.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(58.000000, 90.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(55.000000, 90.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(51.000000, 92.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(49.000000, 93.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(52.000000, 96.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(48.000000, 99.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(38.000000, 99.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(29.000000, 94.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(23.000000, 93.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(19.000000, 94.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 96.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(9.000000, 96.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(8.000000, 94.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 93.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 90.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 88.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 86.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(12.000000, 82.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(10.000000, 78.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 76.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 73.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(13.000000, 69.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(14.000000, 66.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(14.000000, 60.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(15.000000, 59.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(14.000000, 58.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(14.000000, 55.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 52.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(11.000000, 49.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(9.000000, 47.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(9.000000, 46.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(7.000000, 44.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(7.000000, 40.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(4.000000, 36.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(1.000000, 33.000000));
  ShapeObjectLouisianatLAt.addLineToPoint(CGPointMake(0.000000, 4.000000));
  ShapeObjectLouisianatLAt.closePath;
  ShapeObjectLouisianatLAt.moveToPoint(CGPointMake(0.000000, 4.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 733.000000, 481.000000);

  // Shape Fill
  ShapeObjectLouisianatLAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectLouisianatLAt.addClip;
  FillLinearGradient(context,
    CGPointMake(64.000000, 0.000000),
    CGPointMake(64.000000, 107.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectLouisianatLAt.setLineWidth(3);
  ShapeObjectLouisianatLAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectLouisianatLAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectLouisianatLAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectKentuckytKYt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectKentuckytKYt(context: CGContextRef);
var
  ShapeObjectKentuckytKYt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectKentuckytKYt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectKentuckytKYt.moveToPoint(CGPointMake(0.000000, 86.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(31.000000, 83.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(31.000000, 81.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(30.000000, 78.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(36.000000, 78.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(128.000000, 69.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(130.000000, 67.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(141.000000, 61.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(142.000000, 58.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(147.000000, 56.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(147.000000, 54.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(149.000000, 52.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(149.000000, 49.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(156.000000, 45.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(163.000000, 36.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(163.000000, 35.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(160.000000, 35.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(155.000000, 32.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(151.000000, 27.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(150.000000, 25.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(146.000000, 21.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(147.000000, 17.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(146.000000, 14.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(144.000000, 11.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(140.000000, 10.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(138.000000, 5.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(134.000000, 8.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(133.000000, 10.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(130.000000, 10.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(129.000000, 11.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(127.000000, 9.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(123.000000, 9.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(121.000000, 12.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(119.000000, 11.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(116.000000, 8.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(111.000000, 9.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(108.000000, 8.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(107.000000, 6.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(105.000000, 2.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(103.000000, 2.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(101.000000, 0.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(99.000000, 2.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(96.000000, 0.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(93.000000, 3.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(94.000000, 5.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(94.000000, 7.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(96.000000, 8.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(96.000000, 11.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(93.000000, 11.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(88.000000, 14.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(86.000000, 13.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(82.000000, 14.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(83.000000, 19.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(81.000000, 22.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(79.000000, 22.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(79.000000, 26.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(77.000000, 27.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(75.000000, 27.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(74.000000, 31.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(74.000000, 35.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(71.000000, 37.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(68.000000, 35.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(65.000000, 34.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(64.000000, 32.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(62.000000, 35.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(60.000000, 39.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(59.000000, 42.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(57.000000, 41.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(54.000000, 39.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(51.000000, 40.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(50.000000, 41.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(48.000000, 45.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(46.000000, 43.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(41.000000, 41.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(38.000000, 43.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(37.000000, 41.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(37.000000, 44.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(36.000000, 45.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(35.000000, 43.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(33.000000, 44.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(30.000000, 43.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(30.000000, 47.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(27.000000, 47.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(26.000000, 49.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(25.000000, 52.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(27.000000, 54.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(27.000000, 56.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(19.000000, 59.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(18.000000, 62.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(20.000000, 65.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(21.000000, 67.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(19.000000, 68.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(18.000000, 68.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(11.000000, 65.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(8.000000, 65.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(6.000000, 67.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(4.000000, 70.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(5.000000, 71.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(4.000000, 72.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(6.000000, 72.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(5.000000, 76.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(6.000000, 78.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(4.000000, 84.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(1.000000, 82.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(1.000000, 83.000000));
  ShapeObjectKentuckytKYt.addLineToPoint(CGPointMake(0.000000, 86.000000));
  ShapeObjectKentuckytKYt.closePath;
  ShapeObjectKentuckytKYt.moveToPoint(CGPointMake(0.000000, 86.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 832.000000, 293.000000);

  // Shape Fill
  ShapeObjectKentuckytKYt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectKentuckytKYt.addClip;
  FillLinearGradient(context,
    CGPointMake(81.500000, 0.000000),
    CGPointMake(81.500000, 86.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectKentuckytKYt.setLineWidth(3);
  ShapeObjectKentuckytKYt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectKentuckytKYt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectKentuckytKYt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectKansastKSt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectKansastKSt(context: CGContextRef);
var
  ShapeObjectKansastKSt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectKansastKSt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectKansastKSt.moveToPoint(CGPointMake(79.304736, 1.939270));
  ShapeObjectKansastKSt.addCurveToPoint(CGPointMake(2.000000, 1.998186), CGPointMake(53.536491, 2.291940), CGPointMake(2.000000, 1.998186));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(0.000000, 84.922903));
  ShapeObjectKansastKSt.addCurveToPoint(CGPointMake(81.168935, 85.949888), CGPointMake(0.000000, 84.922903), CGPointMake(54.112623, 86.273622));
  ShapeObjectKansastKSt.addCurveToPoint(CGPointMake(167.000000, 82.924717), CGPointMake(109.779290, 85.607560), CGPointMake(167.000000, 82.924717));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(165.000000, 21.980046));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(163.000000, 20.980953));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(160.000000, 20.980953));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(158.000000, 17.983674));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(158.000000, 15.985488));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(155.000000, 13.987302));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(153.000000, 11.989116));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(155.000000, 8.991837));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(156.000000, 6.993651));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(158.000000, 5.994558));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(157.000000, 2.997279));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(155.000000, 1.998186));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(153.000000, 2.997279));
  ShapeObjectKansastKSt.addLineToPoint(CGPointMake(148.000000, 0.000000));
  ShapeObjectKansastKSt.addCurveToPoint(CGPointMake(79.304736, 1.939270), CGPointMake(148.000000, 0.000000), CGPointMake(102.203157, 1.625878));
  ShapeObjectKansastKSt.closePath;
  ShapeObjectKansastKSt.moveToPoint(CGPointMake(79.304736, 1.939270));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 546.000000, 291.000000);

  // Shape Fill
  ShapeObjectKansastKSt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectKansastKSt.addClip;
  FillLinearGradient(context,
    CGPointMake(83.500000, 0.000000),
    CGPointMake(83.500000, 86.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectKansastKSt.setLineWidth(3);
  ShapeObjectKansastKSt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectKansastKSt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectKansastKSt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIowatIAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectIowatIAt(context: CGContextRef);
var
  ShapeObjectIowatIAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIowatIAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIowatIAt.moveToPoint(CGPointMake(20.000000, 85.000000));
  ShapeObjectIowatIAt.addCurveToPoint(CGPointMake(62.987491, 83.557529), CGPointMake(20.000000, 85.000000), CGPointMake(48.658327, 84.371686));
  ShapeObjectIowatIAt.addCurveToPoint(CGPointMake(108.000000, 80.000000), CGPointMake(77.991661, 82.705019), CGPointMake(108.000000, 80.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(115.000000, 86.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(116.000000, 85.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(115.000000, 81.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(121.000000, 77.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(121.000000, 73.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(125.000000, 69.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(124.000000, 66.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(120.000000, 62.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(122.000000, 56.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(130.000000, 54.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(136.000000, 50.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(136.000000, 46.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(139.000000, 43.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(138.000000, 35.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(132.000000, 33.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(132.000000, 30.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(127.000000, 26.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(125.000000, 21.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(119.000000, 21.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(116.000000, 15.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(115.000000, 8.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(117.000000, 5.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(114.000000, 3.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(113.000000, 0.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(0.000000, 6.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(2.000000, 10.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(1.000000, 13.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(3.000000, 15.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(2.000000, 23.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(0.000000, 26.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(3.000000, 33.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(5.000000, 33.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(6.000000, 38.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(6.000000, 42.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(8.000000, 43.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(9.000000, 46.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(11.000000, 47.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(11.000000, 50.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(13.000000, 52.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(12.000000, 58.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(15.000000, 61.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(15.000000, 64.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(18.000000, 66.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(16.000000, 67.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(18.000000, 69.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(18.000000, 81.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(20.000000, 83.000000));
  ShapeObjectIowatIAt.addLineToPoint(CGPointMake(20.000000, 85.000000));
  ShapeObjectIowatIAt.closePath;
  ShapeObjectIowatIAt.moveToPoint(CGPointMake(20.000000, 85.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 663.000000, 189.000000);

  // Shape Fill
  ShapeObjectIowatIAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectIowatIAt.addClip;
  FillLinearGradient(context,
    CGPointMake(69.500000, 0.000000),
    CGPointMake(69.500000, 86.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIowatIAt.setLineWidth(3);
  ShapeObjectIowatIAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIowatIAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIowatIAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIndianatINt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectIndianatINt(context: CGContextRef);
var
  ShapeObjectIndianatINt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIndianatINt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIndianatINt.moveToPoint(CGPointMake(1.000000, 9.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(4.000000, 11.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(7.000000, 11.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(16.000000, 6.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(59.000000, 0.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(59.000000, 2.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(68.000000, 74.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(67.000000, 75.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(68.000000, 77.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(68.000000, 79.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(70.000000, 80.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(70.000000, 83.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(67.000000, 83.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(62.000000, 86.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(60.000000, 85.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(56.000000, 86.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(57.000000, 91.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(55.000000, 94.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(53.000000, 94.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(53.000000, 98.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(51.000000, 99.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(49.000000, 99.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(48.000000, 103.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(48.000000, 107.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(45.000000, 109.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(42.000000, 107.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(39.000000, 106.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(38.000000, 104.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(36.000000, 107.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(35.000000, 109.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(34.000000, 111.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(33.000000, 114.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(31.000000, 113.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(28.000000, 111.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(25.000000, 112.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(24.000000, 113.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(22.000000, 117.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(20.000000, 115.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(15.000000, 113.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(12.000000, 115.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(11.000000, 113.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(11.000000, 116.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(10.000000, 117.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(9.000000, 115.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(7.000000, 116.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(4.000000, 115.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(4.000000, 117.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(4.000000, 119.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(1.000000, 119.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(0.000000, 116.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(1.000000, 115.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(1.000000, 111.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(3.000000, 109.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(1.000000, 107.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(2.000000, 105.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(4.000000, 104.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(6.000000, 100.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(8.000000, 98.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(8.000000, 95.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(10.000000, 92.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(10.000000, 90.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(9.000000, 87.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(9.000000, 85.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(7.000000, 82.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(5.000000, 80.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(7.000000, 79.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(6.000000, 76.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(8.000000, 74.000000));
  ShapeObjectIndianatINt.addLineToPoint(CGPointMake(1.000000, 9.000000));
  ShapeObjectIndianatINt.closePath;
  ShapeObjectIndianatINt.moveToPoint(CGPointMake(1.000000, 9.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 858.000000, 221.000000);

  // Shape Fill
  ShapeObjectIndianatINt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectIndianatINt.addClip;
  FillLinearGradient(context,
    CGPointMake(35.000000, 0.000000),
    CGPointMake(35.000000, 119.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIndianatINt.setLineWidth(3);
  ShapeObjectIndianatINt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIndianatINt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIndianatINt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIllinoistILt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectIllinoistILt(context: CGContextRef);
var
  ShapeObjectIllinoistILt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIllinoistILt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIllinoistILt.moveToPoint(CGPointMake(74.000000, 0.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(14.000000, 6.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(19.000000, 10.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(19.000000, 13.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(25.000000, 15.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(26.000000, 23.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(23.000000, 26.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(23.000000, 30.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(17.000000, 34.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(9.000000, 36.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(7.000000, 42.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(11.000000, 46.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(12.000000, 49.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(8.000000, 53.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(8.000000, 57.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(2.000000, 61.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(3.000000, 65.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(2.000000, 66.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(1.000000, 68.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(0.000000, 72.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(2.000000, 78.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(5.000000, 84.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(11.000000, 89.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(12.000000, 91.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(18.000000, 94.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(20.000000, 97.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(20.000000, 100.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(22.000000, 105.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(24.000000, 107.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(27.000000, 104.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(31.000000, 104.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(34.000000, 107.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(33.000000, 108.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(33.000000, 112.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(30.000000, 120.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(30.000000, 124.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(38.000000, 130.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(44.000000, 133.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(45.000000, 133.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(47.000000, 136.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(51.000000, 138.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(51.000000, 142.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(53.000000, 144.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(53.000000, 145.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(52.000000, 148.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(52.000000, 149.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(55.000000, 153.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(55.000000, 155.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(58.000000, 156.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(58.000000, 154.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(60.000000, 156.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(61.000000, 155.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(60.000000, 154.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(62.000000, 151.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(64.000000, 149.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(67.000000, 149.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(74.000000, 152.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(75.000000, 152.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(77.000000, 151.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(76.000000, 149.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(74.000000, 146.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(75.000000, 143.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(78.000000, 142.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(83.000000, 140.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(83.000000, 138.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(81.000000, 136.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(82.000000, 133.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(83.000000, 131.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(82.000000, 128.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(83.000000, 127.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(83.000000, 123.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(85.000000, 121.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(83.000000, 119.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(84.000000, 117.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(86.000000, 116.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(88.000000, 112.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(90.000000, 110.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(90.000000, 107.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(92.000000, 104.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(92.000000, 102.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(91.000000, 99.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(91.000000, 97.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(89.000000, 94.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(87.000000, 92.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(89.000000, 91.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(88.000000, 88.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(90.000000, 86.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(83.000000, 21.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(80.000000, 18.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(79.000000, 15.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(79.000000, 12.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(76.000000, 10.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(75.000000, 7.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(74.000000, 6.000000));
  ShapeObjectIllinoistILt.addLineToPoint(CGPointMake(74.000000, 0.000000));
  ShapeObjectIllinoistILt.closePath;
  ShapeObjectIllinoistILt.moveToPoint(CGPointMake(74.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 776.000000, 209.000000);

  // Shape Fill
  ShapeObjectIllinoistILt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectIllinoistILt.addClip;
  FillLinearGradient(context,
    CGPointMake(46.000000, 0.000000),
    CGPointMake(46.000000, 156.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIllinoistILt.setLineWidth(3);
  ShapeObjectIllinoistILt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIllinoistILt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIllinoistILt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIdahotIDt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectIdahotIDt(context: CGContextRef);
var
  ShapeObjectIdahotIDt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIdahotIDt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIdahotIDt.moveToPoint(CGPointMake(127.000000, 204.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(133.000000, 135.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(128.000000, 128.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(126.000000, 128.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(124.000000, 132.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(118.000000, 132.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(117.000000, 131.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(108.000000, 130.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(106.000000, 133.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(99.000000, 131.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(97.000000, 134.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(93.000000, 130.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(91.000000, 122.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(88.000000, 122.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(85.000000, 119.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(86.000000, 115.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(82.000000, 107.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(80.000000, 99.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(78.000000, 95.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(70.000000, 101.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(66.000000, 97.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(66.000000, 91.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(69.000000, 90.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(68.000000, 82.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(70.000000, 81.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(74.000000, 69.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(68.000000, 69.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(68.000000, 66.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(66.000000, 66.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(62.000000, 62.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(63.000000, 60.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(56.000000, 51.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(53.000000, 49.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(49.000000, 44.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(50.000000, 44.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(49.000000, 41.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(50.000000, 39.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(48.000000, 34.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(44.000000, 28.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(48.000000, 3.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(29.000000, 0.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(18.000000, 69.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(20.000000, 73.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(20.000000, 75.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(19.000000, 76.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(20.000000, 82.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(26.000000, 87.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(27.000000, 92.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(22.000000, 98.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(21.000000, 100.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(17.000000, 106.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(16.000000, 109.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(12.000000, 113.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(7.000000, 119.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(6.000000, 125.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(10.000000, 126.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(12.000000, 128.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(10.000000, 130.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(10.000000, 133.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(8.000000, 137.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(0.000000, 187.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(63.000000, 196.000000));
  ShapeObjectIdahotIDt.addLineToPoint(CGPointMake(127.000000, 204.000000));
  ShapeObjectIdahotIDt.closePath;
  ShapeObjectIdahotIDt.moveToPoint(CGPointMake(127.000000, 204.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 229.000000, 22.000000);

  // Shape Fill
  ShapeObjectIdahotIDt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectIdahotIDt.addClip;
  FillLinearGradient(context,
    CGPointMake(66.500000, 0.000000),
    CGPointMake(66.500000, 204.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIdahotIDt.setLineWidth(3);
  ShapeObjectIdahotIDt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIdahotIDt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIdahotIDt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectHawaiitHIt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectHawaiitHIt(context: CGContextRef);
var
  ShapeObjectHawaiitHIt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectHawaiitHIt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(141.000000, 102.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(143.000000, 101.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(144.000000, 98.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(149.000000, 94.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(153.000000, 92.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(157.000000, 91.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(162.000000, 90.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(166.000000, 87.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(168.000000, 83.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(163.000000, 81.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(162.000000, 77.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(159.000000, 77.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(159.000000, 73.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(155.000000, 69.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(144.000000, 65.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(143.000000, 66.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(138.000000, 63.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(136.000000, 61.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(133.000000, 63.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(135.000000, 67.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(136.000000, 69.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(132.000000, 74.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(129.000000, 78.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(131.000000, 82.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(133.000000, 87.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(134.000000, 91.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(133.000000, 97.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(135.000000, 100.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(139.000000, 100.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(141.000000, 102.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(141.000000, 102.000000));
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(5.000000, 7.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(2.000000, 10.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(0.000000, 12.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(0.000000, 14.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(1.000000, 15.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(3.000000, 12.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(6.000000, 11.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(6.000000, 8.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(5.000000, 7.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(5.000000, 7.000000));
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(21.000000, 0.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(16.000000, 3.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(14.000000, 6.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(15.000000, 9.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(18.000000, 9.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(21.000000, 12.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(23.000000, 12.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(27.000000, 11.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(28.000000, 7.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(30.000000, 4.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(27.000000, 1.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(23.000000, 2.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(21.000000, 0.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(21.000000, 0.000000));
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(70.000000, 17.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(74.000000, 22.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(74.000000, 26.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(78.000000, 24.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(79.000000, 27.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(80.000000, 30.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(77.000000, 30.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(72.000000, 29.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(69.000000, 27.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(69.000000, 29.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(67.000000, 30.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(64.000000, 27.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(62.000000, 24.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(61.000000, 20.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(65.000000, 21.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(70.000000, 17.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(70.000000, 17.000000));
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(92.000000, 31.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(94.000000, 32.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(97.000000, 33.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(101.000000, 33.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(101.000000, 32.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(103.000000, 34.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(110.000000, 34.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(106.000000, 37.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(102.000000, 37.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(99.000000, 35.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(93.000000, 36.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(91.000000, 36.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(90.000000, 34.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(92.000000, 33.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(92.000000, 31.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(92.000000, 31.000000));
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(102.000000, 41.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(106.000000, 44.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(103.000000, 47.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(100.000000, 46.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(100.000000, 43.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(98.000000, 42.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(113.000000, 51.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(109.000000, 52.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(109.000000, 53.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(111.000000, 54.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(114.000000, 53.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(113.000000, 51.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(113.000000, 51.000000));
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(115.000000, 45.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(117.000000, 47.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(117.000000, 50.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(118.000000, 52.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(120.000000, 51.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(123.000000, 51.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(125.000000, 49.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(127.000000, 50.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(130.000000, 47.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(130.000000, 45.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(127.000000, 43.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(122.000000, 40.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(118.000000, 42.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(116.000000, 41.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(111.000000, 36.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(110.000000, 39.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(109.000000, 41.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(112.000000, 45.000000));
  ShapeObjectHawaiitHIt.addLineToPoint(CGPointMake(115.000000, 45.000000));
  ShapeObjectHawaiitHIt.closePath;
  ShapeObjectHawaiitHIt.moveToPoint(CGPointMake(115.000000, 45.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 496.000000, 742.000000);

  // Shape Fill
  ShapeObjectHawaiitHIt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectHawaiitHIt.addClip;
  FillLinearGradient(context,
    CGPointMake(84.000000, 0.000000),
    CGPointMake(84.000000, 102.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectHawaiitHIt.setLineWidth(1);
  ShapeObjectHawaiitHIt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectHawaiitHIt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectHawaiitHIt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectGeorgiatGAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectGeorgiatGAt(context: CGContextRef);
var
  ShapeObjectGeorgiatGAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectGeorgiatGAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectGeorgiatGAt.moveToPoint(CGPointMake(58.000000, 0.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(18.000000, 64.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(22.000000, 73.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(25.000000, 77.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(25.000000, 81.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(28.000000, 82.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(25.000000, 85.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(25.000000, 90.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(23.000000, 92.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(23.000000, 97.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(27.000000, 102.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(26.000000, 112.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(29.000000, 115.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(30.000000, 118.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(32.000000, 121.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(33.000000, 125.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(92.000000, 121.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(98.000000, 120.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(98.000000, 122.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(100.000000, 125.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(103.000000, 125.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(104.000000, 119.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(102.000000, 118.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(102.000000, 114.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(104.000000, 112.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(109.000000, 113.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(115.000000, 113.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(113.000000, 110.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(115.000000, 106.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(113.000000, 106.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(114.000000, 104.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(113.000000, 102.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(113.000000, 101.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(113.000000, 98.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(115.000000, 98.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(115.000000, 101.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(117.000000, 97.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(112.000000, 96.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(112.000000, 94.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(117.000000, 95.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(116.000000, 93.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(119.000000, 90.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(116.000000, 91.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(114.000000, 89.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(118.000000, 88.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(116.000000, 86.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(117.000000, 84.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(115.000000, 83.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(119.000000, 83.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(120.000000, 81.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(117.000000, 80.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(118.000000, 78.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(122.000000, 79.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(122.000000, 77.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(124.000000, 75.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(121.000000, 74.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(119.000000, 73.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(118.000000, 74.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(116.000000, 71.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(116.000000, 67.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(113.000000, 63.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(112.000000, 61.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(109.000000, 61.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(108.000000, 59.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(107.000000, 55.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(105.000000, 52.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(105.000000, 50.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(100.000000, 47.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(97.000000, 47.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(97.000000, 45.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(95.000000, 44.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(95.000000, 42.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(92.000000, 41.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(92.000000, 39.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(89.000000, 36.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(86.000000, 36.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(83.000000, 31.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(78.000000, 29.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(77.000000, 27.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(75.000000, 27.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(74.000000, 24.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(71.000000, 22.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(70.000000, 21.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(69.000000, 18.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(66.000000, 16.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(66.000000, 13.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(62.000000, 14.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(59.000000, 12.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(58.000000, 11.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(55.000000, 10.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(53.000000, 9.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(55.000000, 5.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(56.000000, 3.000000));
  ShapeObjectGeorgiatGAt.addLineToPoint(CGPointMake(58.000000, 0.000000));
  ShapeObjectGeorgiatGAt.closePath;
  ShapeObjectGeorgiatGAt.moveToPoint(CGPointMake(58.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 923.000000, 403.000000);

  // Shape Fill
  ShapeObjectGeorgiatGAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectGeorgiatGAt.addClip;
  FillLinearGradient(context,
    CGPointMake(62.000000, 0.000000),
    CGPointMake(62.000000, 125.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectGeorgiatGAt.setLineWidth(3);
  ShapeObjectGeorgiatGAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectGeorgiatGAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectGeorgiatGAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectFloridatFLt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectFloridatFLt(context: CGContextRef);
var
  ShapeObjectFloridatFLt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectFloridatFLt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectFloridatFLt.moveToPoint(CGPointMake(63.000000, 6.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(1.000000, 13.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(0.000000, 18.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(3.000000, 21.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(6.000000, 22.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(6.000000, 26.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(7.000000, 28.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(9.000000, 28.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(7.000000, 32.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(8.000000, 33.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(13.000000, 27.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(12.000000, 24.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(15.000000, 26.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(16.000000, 24.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(18.000000, 24.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(17.000000, 26.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(20.000000, 27.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(18.000000, 28.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(27.000000, 27.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(29.000000, 24.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(31.000000, 24.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(36.000000, 23.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(39.000000, 26.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(34.000000, 27.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(42.000000, 29.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(48.000000, 32.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(45.000000, 29.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(48.000000, 27.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(49.000000, 29.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(52.000000, 26.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(53.000000, 28.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(50.000000, 31.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(52.000000, 32.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(55.000000, 32.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(57.000000, 34.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(55.000000, 35.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(52.000000, 34.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(57.000000, 37.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(60.000000, 40.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(60.000000, 43.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(63.000000, 43.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(67.000000, 41.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(71.000000, 38.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(72.000000, 40.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(79.000000, 34.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(83.000000, 34.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(79.000000, 32.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(83.000000, 29.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(86.000000, 28.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(91.000000, 28.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(95.000000, 30.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(98.000000, 30.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(102.000000, 34.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(103.000000, 36.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(107.000000, 37.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(108.000000, 41.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(110.000000, 43.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(113.000000, 44.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(115.000000, 47.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(118.000000, 49.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(124.000000, 49.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(126.000000, 54.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(129.000000, 56.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(129.000000, 60.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(130.000000, 62.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(130.000000, 72.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(128.000000, 77.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(130.000000, 79.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(129.000000, 86.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(133.000000, 89.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(134.000000, 85.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(131.000000, 83.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(132.000000, 80.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(136.000000, 82.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(136.000000, 85.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(138.000000, 82.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(139.000000, 84.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(140.000000, 86.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(136.000000, 92.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(135.000000, 96.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(138.000000, 99.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(139.000000, 102.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(142.000000, 106.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(144.000000, 109.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(147.000000, 112.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(150.000000, 112.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(146.000000, 108.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(149.000000, 108.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(153.000000, 107.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(154.000000, 108.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(152.000000, 109.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(153.000000, 116.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(154.000000, 119.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(156.000000, 118.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(156.000000, 116.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(160.000000, 113.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(160.000000, 115.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(158.000000, 117.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(156.000000, 120.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(158.000000, 121.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(159.000000, 120.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(161.000000, 124.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(162.000000, 129.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(165.000000, 133.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(173.000000, 135.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(176.000000, 137.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(176.000000, 139.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(177.000000, 140.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(180.000000, 143.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(182.000000, 147.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(187.000000, 148.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(189.000000, 150.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(187.000000, 152.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(182.000000, 149.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(182.000000, 152.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(184.000000, 154.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(189.000000, 153.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(190.000000, 151.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(194.000000, 152.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(197.000000, 148.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(200.000000, 148.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(203.000000, 143.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(201.000000, 141.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(203.000000, 134.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(204.000000, 128.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(204.000000, 123.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(204.000000, 117.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(203.000000, 116.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(203.000000, 108.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(202.000000, 102.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(200.000000, 100.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(200.000000, 98.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(196.000000, 94.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(194.000000, 94.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(193.000000, 92.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(196.000000, 93.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(194.000000, 89.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(193.000000, 88.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(189.000000, 81.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(185.000000, 75.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(180.000000, 67.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(175.000000, 60.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(173.000000, 53.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(175.000000, 52.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(176.000000, 56.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(179.000000, 56.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(170.000000, 45.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(161.000000, 33.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(155.000000, 19.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(154.000000, 17.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(152.000000, 13.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(151.000000, 8.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(148.000000, 6.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(148.000000, 3.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(150.000000, 3.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(150.000000, 1.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(142.000000, 1.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(137.000000, 0.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(135.000000, 2.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(135.000000, 6.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(137.000000, 7.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(136.000000, 13.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(133.000000, 13.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(131.000000, 10.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(131.000000, 8.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(125.000000, 9.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(66.000000, 13.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(65.000000, 9.000000));
  ShapeObjectFloridatFLt.addLineToPoint(CGPointMake(63.000000, 6.000000));
  ShapeObjectFloridatFLt.closePath;
  ShapeObjectFloridatFLt.moveToPoint(CGPointMake(63.000000, 6.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 890.000000, 515.000000);

  // Shape Fill
  ShapeObjectFloridatFLt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectFloridatFLt.addClip;
  FillLinearGradient(context,
    CGPointMake(102.000000, 0.000000),
    CGPointMake(102.000000, 154.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectFloridatFLt.setLineWidth(3);
  ShapeObjectFloridatFLt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectFloridatFLt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectFloridatFLt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectDelawaretDEt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectDelawaretDEt(context: CGContextRef);
var
  ShapeObjectDelawaretDEt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectDelawaretDEt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectDelawaretDEt.moveToPoint(CGPointMake(9.000000, 39.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(21.000000, 36.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(23.000000, 35.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(23.000000, 34.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(22.000000, 32.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(19.000000, 33.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(20.000000, 31.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(20.000000, 29.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(22.000000, 28.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(20.000000, 27.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(18.000000, 26.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(15.000000, 24.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(15.000000, 22.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(11.000000, 20.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(11.000000, 16.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(5.000000, 11.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(5.000000, 8.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(4.000000, 7.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(4.000000, 5.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(6.000000, 3.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(7.000000, 0.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(3.000000, 0.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(1.000000, 2.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(0.000000, 5.000000));
  ShapeObjectDelawaretDEt.addLineToPoint(CGPointMake(9.000000, 39.000000));
  ShapeObjectDelawaretDEt.closePath;
  ShapeObjectDelawaretDEt.moveToPoint(CGPointMake(9.000000, 39.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1119.000000, 238.000000);

  // Shape Fill
  ShapeObjectDelawaretDEt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectDelawaretDEt.addClip;
  FillLinearGradient(context,
    CGPointMake(11.500000, 0.000000),
    CGPointMake(11.500000, 39.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectDelawaretDEt.setLineWidth(3);
  ShapeObjectDelawaretDEt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectDelawaretDEt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectDelawaretDEt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectConnecticuttCTt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectConnecticuttCTt(context: CGContextRef);
var
  ShapeObjectConnecticuttCTt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectConnecticuttCTt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectConnecticuttCTt.moveToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(3.000000, 28.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(5.000000, 30.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(1.000000, 35.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(3.000000, 36.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(6.000000, 36.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(11.000000, 30.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(14.000000, 29.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(16.000000, 26.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(18.000000, 26.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(23.000000, 24.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(28.000000, 23.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(27.000000, 21.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(30.000000, 22.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(32.000000, 21.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(35.000000, 20.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(37.000000, 19.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(39.000000, 19.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(39.000000, 15.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(35.000000, 0.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(14.000000, 6.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(13.000000, 5.000000));
  ShapeObjectConnecticuttCTt.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectConnecticuttCTt.closePath;
  ShapeObjectConnecticuttCTt.moveToPoint(CGPointMake(0.000000, 8.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1153.000000, 160.000000);

  // Shape Fill
  ShapeObjectConnecticuttCTt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectConnecticuttCTt.addClip;
  FillLinearGradient(context,
    CGPointMake(19.500000, 0.000000),
    CGPointMake(19.500000, 36.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectConnecticuttCTt.setLineWidth(3);
  ShapeObjectConnecticuttCTt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectConnecticuttCTt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectConnecticuttCTt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectColoradotCOt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectColoradotCOt(context: CGContextRef);
var
  ShapeObjectColoradotCOt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectColoradotCOt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectColoradotCOt.moveToPoint(CGPointMake(91.000000, 6.000000));
  ShapeObjectColoradotCOt.addCurveToPoint(CGPointMake(9.000000, 0.000000), CGPointMake(66.690092, 4.880465), CGPointMake(9.000000, 0.000000));
  ShapeObjectColoradotCOt.addLineToPoint(CGPointMake(0.000000, 111.000000));
  ShapeObjectColoradotCOt.addCurveToPoint(CGPointMake(60.537121, 115.398094), CGPointMake(0.000000, 111.000000), CGPointMake(38.024747, 114.265396));
  ShapeObjectColoradotCOt.addCurveToPoint(CGPointMake(159.000000, 119.000000), CGPointMake(91.024747, 116.932063), CGPointMake(159.000000, 119.000000));
  ShapeObjectColoradotCOt.addLineToPoint(CGPointMake(161.000000, 7.000000));
  ShapeObjectColoradotCOt.addCurveToPoint(CGPointMake(91.000000, 6.000000), CGPointMake(161.000000, 7.000000), CGPointMake(117.356759, 7.213798));
  ShapeObjectColoradotCOt.closePath;
  ShapeObjectColoradotCOt.moveToPoint(CGPointMake(91.000000, 6.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 387.000000, 257.000000);

  // Shape Fill
  ShapeObjectColoradotCOt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectColoradotCOt.addClip;
  FillLinearGradient(context,
    CGPointMake(80.500000, 0.000000),
    CGPointMake(80.500000, 119.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectColoradotCOt.setLineWidth(3);
  ShapeObjectColoradotCOt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectColoradotCOt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectColoradotCOt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectCaliforniatCAt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectCaliforniatCAt(context: CGContextRef);
var
  ShapeObjectCaliforniatCAt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectCaliforniatCAt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectCaliforniatCAt.moveToPoint(CGPointMake(101.000000, 18.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(13.000000, 0.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(13.000000, 3.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(11.000000, 6.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(13.000000, 8.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(13.000000, 17.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(9.000000, 25.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(9.000000, 27.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(8.000000, 31.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(9.000000, 32.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(6.000000, 33.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(5.000000, 35.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(3.000000, 36.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(0.000000, 41.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(0.000000, 46.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(4.000000, 52.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(5.000000, 54.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(8.000000, 60.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(8.000000, 69.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(5.000000, 74.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(6.000000, 77.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(7.000000, 84.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(5.000000, 85.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(12.000000, 97.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(16.000000, 101.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(16.000000, 105.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(18.000000, 108.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(20.000000, 112.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(20.000000, 114.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(17.000000, 110.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(17.000000, 112.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(21.000000, 118.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(22.000000, 118.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(25.000000, 121.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(27.000000, 113.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(30.000000, 112.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(34.000000, 116.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(36.000000, 115.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(38.000000, 114.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(39.000000, 116.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(41.000000, 117.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(44.000000, 117.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(47.000000, 118.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(50.000000, 121.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(49.000000, 121.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(46.000000, 119.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(44.000000, 120.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(41.000000, 119.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(36.000000, 117.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(34.000000, 118.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(32.000000, 116.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(29.000000, 118.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(29.000000, 119.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(30.000000, 121.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(30.000000, 123.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(32.000000, 125.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(32.000000, 129.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(32.000000, 132.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(34.000000, 133.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(33.000000, 134.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(30.000000, 132.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(27.000000, 128.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(27.000000, 126.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(27.000000, 123.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(25.000000, 123.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(24.000000, 125.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(25.000000, 127.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(24.000000, 130.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(25.000000, 134.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(24.000000, 138.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(27.000000, 144.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(30.000000, 147.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(34.000000, 148.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(36.000000, 152.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(35.000000, 156.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(32.000000, 158.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(31.000000, 158.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(31.000000, 166.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(32.000000, 168.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(35.000000, 171.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(36.000000, 175.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(38.000000, 176.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(38.000000, 180.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(40.000000, 183.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(40.000000, 186.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(44.000000, 188.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(45.000000, 192.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(49.000000, 194.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(49.000000, 197.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(47.000000, 199.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(48.000000, 201.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(52.000000, 203.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(52.000000, 206.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(51.000000, 210.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(51.000000, 214.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(51.000000, 217.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(49.000000, 219.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(52.000000, 220.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(53.000000, 223.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(60.000000, 223.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(61.000000, 225.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(64.000000, 225.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(66.000000, 227.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(69.000000, 228.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(72.000000, 227.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(78.000000, 232.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(80.000000, 237.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(87.000000, 241.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(89.000000, 242.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(95.000000, 242.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(98.000000, 246.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(97.000000, 251.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(99.000000, 252.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(101.000000, 251.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(104.000000, 252.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(108.000000, 257.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(114.000000, 264.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(117.000000, 267.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(119.000000, 273.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(120.000000, 278.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(119.000000, 282.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(120.000000, 284.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(122.000000, 286.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(122.000000, 289.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(178.000000, 293.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(179.000000, 292.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(182.000000, 293.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(183.000000, 293.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(184.000000, 291.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(185.000000, 289.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(185.000000, 285.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(181.000000, 284.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(180.000000, 282.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(181.000000, 279.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(181.000000, 273.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(184.000000, 273.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(186.000000, 269.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(187.000000, 265.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(188.000000, 261.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(188.000000, 259.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(190.000000, 257.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(191.000000, 255.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(195.000000, 253.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(198.000000, 250.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(193.000000, 245.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(192.000000, 239.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(190.000000, 235.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(189.000000, 233.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(189.000000, 230.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(86.000000, 99.000000));
  ShapeObjectCaliforniatCAt.addLineToPoint(CGPointMake(101.000000, 18.000000));
  ShapeObjectCaliforniatCAt.closePath;
  ShapeObjectCaliforniatCAt.moveToPoint(CGPointMake(101.000000, 18.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 65.000000, 181.000000);

  // Shape Fill
  ShapeObjectCaliforniatCAt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectCaliforniatCAt.addClip;
  FillLinearGradient(context,
    CGPointMake(99.000000, 0.000000),
    CGPointMake(99.000000, 293.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectCaliforniatCAt.setLineWidth(3);
  ShapeObjectCaliforniatCAt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectCaliforniatCAt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectCaliforniatCAt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectArkansastARt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectArkansastARt(context: CGContextRef);
var
  ShapeObjectArkansastARt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectArkansastARt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectArkansastARt.moveToPoint(CGPointMake(7.000000, 87.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(5.000000, 37.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(101.000000, 0.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(104.000000, 3.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(104.000000, 5.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(99.000000, 12.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(98.000000, 13.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(98.000000, 15.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(112.000000, 13.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(114.000000, 14.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(115.000000, 15.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(112.000000, 15.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(112.000000, 17.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(113.000000, 18.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(108.000000, 21.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(109.000000, 25.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(109.000000, 27.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(107.000000, 27.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(106.000000, 31.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(105.000000, 34.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(107.000000, 38.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(104.000000, 38.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(102.000000, 42.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(102.000000, 45.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(99.000000, 47.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(99.000000, 50.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(96.000000, 50.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(96.000000, 59.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(93.000000, 61.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(93.000000, 63.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(89.000000, 67.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(91.000000, 69.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(90.000000, 70.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(86.000000, 72.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(87.000000, 77.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(84.000000, 81.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(86.000000, 83.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(84.000000, 85.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(86.000000, 87.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(86.000000, 92.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(88.000000, 95.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(86.000000, 97.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(86.000000, 100.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(18.000000, 104.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(18.000000, 89.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(17.000000, 88.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(12.000000, 88.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(11.000000, 89.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(9.000000, 88.000000));
  ShapeObjectArkansastARt.addLineToPoint(CGPointMake(7.000000, 87.000000));
  ShapeObjectArkansastARt.closePath;
  ShapeObjectArkansastARt.moveToPoint(CGPointMake(7.000000, 87.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 714.000000, 381.000000);

  // Shape Fill
  ShapeObjectArkansastARt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectArkansastARt.addClip;
  FillLinearGradient(context,
    CGPointMake(57.500000, 0.000000),
    CGPointMake(57.500000, 104.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectArkansastARt.setLineWidth(3);
  ShapeObjectArkansastARt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectArkansastARt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectArkansastARt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectArizonatAZt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectArizonatAZt(context: CGContextRef);
var
  ShapeObjectArizonatAZt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectArizonatAZt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectArizonatAZt.moveToPoint(CGPointMake(76.043977, 5.397569));
  ShapeObjectArizonatAZt.addCurveToPoint(CGPointMake(147.000000, 12.000000), CGPointMake(99.695985, 7.931713), CGPointMake(147.000000, 12.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(134.000000, 171.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(86.000000, 167.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(0.000000, 124.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(1.000000, 121.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(3.000000, 118.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(4.000000, 117.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(7.000000, 118.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(8.000000, 118.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(10.000000, 114.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(10.000000, 110.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(6.000000, 109.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(5.000000, 107.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(6.000000, 104.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(6.000000, 98.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(9.000000, 98.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(11.000000, 94.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(13.000000, 86.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(13.000000, 84.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(15.000000, 82.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(16.000000, 80.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(20.000000, 78.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(23.000000, 75.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(18.000000, 70.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(17.000000, 64.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(14.000000, 58.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(14.000000, 51.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(16.000000, 50.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(16.000000, 46.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(15.000000, 41.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(16.000000, 38.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(15.000000, 33.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(16.000000, 31.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(15.000000, 28.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(16.000000, 24.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(20.000000, 22.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(23.000000, 24.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(25.000000, 23.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(26.000000, 27.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(29.000000, 27.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(32.000000, 21.000000));
  ShapeObjectArizonatAZt.addLineToPoint(CGPointMake(35.000000, 0.000000));
  ShapeObjectArizonatAZt.addCurveToPoint(CGPointMake(76.043977, 5.397569), CGPointMake(35.000000, 0.000000), CGPointMake(62.362652, 3.931713));
  ShapeObjectArizonatAZt.closePath;
  ShapeObjectArizonatAZt.moveToPoint(CGPointMake(76.043977, 5.397569));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 240.000000, 356.000000);

  // Shape Fill
  ShapeObjectArizonatAZt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectArizonatAZt.addClip;
  FillLinearGradient(context,
    CGPointMake(73.500000, 0.000000),
    CGPointMake(73.500000, 171.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectArizonatAZt.setLineWidth(3);
  ShapeObjectArizonatAZt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectArizonatAZt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectArizonatAZt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectAlaskatAKt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectAlaskatAKt(context: CGContextRef);
var
  ShapeObjectAlaskatAKt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectAlaskatAKt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(348.000000, 140.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(324.000000, 16.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(322.000000, 17.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(318.000000, 15.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(315.000000, 13.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(311.000000, 13.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(307.000000, 14.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(305.000000, 15.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(301.000000, 15.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(299.000000, 14.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(294.000000, 14.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(290.000000, 13.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(287.000000, 12.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(284.000000, 10.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(279.000000, 12.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(278.000000, 11.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(274.000000, 13.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(271.000000, 12.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(271.000000, 10.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(268.000000, 9.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(270.000000, 7.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(265.000000, 6.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(261.000000, 7.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(258.000000, 7.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(259.000000, 5.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(257.000000, 3.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(254.000000, 8.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(252.000000, 5.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(255.000000, 3.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(250.000000, 0.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(247.000000, 3.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(243.000000, 6.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(237.000000, 6.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(234.000000, 8.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(231.000000, 11.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(227.000000, 13.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(225.000000, 12.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(220.000000, 18.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(217.000000, 22.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(216.000000, 25.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(213.000000, 28.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(207.000000, 28.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(202.000000, 27.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(201.000000, 32.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(199.000000, 34.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(203.000000, 39.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(209.000000, 45.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(211.000000, 49.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(210.000000, 52.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(216.000000, 55.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(221.000000, 55.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(222.000000, 56.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(220.000000, 58.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(220.000000, 61.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(222.000000, 61.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(225.000000, 61.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(228.000000, 62.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(228.000000, 65.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(225.000000, 65.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(223.000000, 62.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(219.000000, 63.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(222.000000, 64.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(223.000000, 67.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(221.000000, 66.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(219.000000, 69.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(215.000000, 68.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(213.000000, 67.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(208.000000, 66.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(207.000000, 64.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(210.000000, 60.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(206.000000, 59.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(203.000000, 61.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(200.000000, 61.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(198.000000, 62.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(199.000000, 64.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(195.000000, 63.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(190.000000, 66.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(184.000000, 67.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(186.000000, 71.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(193.000000, 75.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(190.000000, 77.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(191.000000, 80.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(190.000000, 83.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(194.000000, 86.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(199.000000, 87.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(202.000000, 86.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(207.000000, 87.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(208.000000, 89.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(211.000000, 90.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(213.000000, 87.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(218.000000, 85.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(221.000000, 84.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(223.000000, 87.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(221.000000, 90.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(218.000000, 90.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(220.000000, 93.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(221.000000, 99.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(219.000000, 103.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(213.000000, 104.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(211.000000, 101.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(210.000000, 104.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(206.000000, 107.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(204.000000, 107.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(201.000000, 104.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(198.000000, 106.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(195.000000, 109.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(195.000000, 113.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(192.000000, 114.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(188.000000, 119.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(188.000000, 121.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(185.000000, 122.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(187.000000, 124.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(185.000000, 125.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(186.000000, 128.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(187.000000, 132.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(189.000000, 131.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(191.000000, 134.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(200.000000, 137.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(200.000000, 139.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(198.000000, 140.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(196.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(194.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(191.000000, 136.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(187.000000, 139.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(191.000000, 144.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(194.000000, 149.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(197.000000, 151.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(202.000000, 149.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(205.000000, 147.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(206.000000, 143.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(206.000000, 147.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(208.000000, 154.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(209.000000, 157.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(207.000000, 159.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(208.000000, 163.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(206.000000, 168.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(209.000000, 169.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(218.000000, 163.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(219.000000, 166.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(222.000000, 167.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(227.000000, 173.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(229.000000, 172.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(228.000000, 167.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(231.000000, 164.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(231.000000, 169.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(232.000000, 171.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(241.000000, 167.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(243.000000, 165.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(239.000000, 171.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(236.000000, 176.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(239.000000, 177.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(236.000000, 178.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(236.000000, 184.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(236.000000, 187.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(234.000000, 186.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(229.000000, 190.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(228.000000, 192.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(227.000000, 196.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(225.000000, 195.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(219.000000, 198.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(213.000000, 202.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(212.000000, 205.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(214.000000, 208.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(211.000000, 207.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(207.000000, 204.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(201.000000, 206.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(196.000000, 211.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(192.000000, 213.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(190.000000, 215.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(186.000000, 214.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(183.000000, 216.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(180.000000, 215.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(178.000000, 218.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(177.000000, 219.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(178.000000, 222.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(181.000000, 221.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(183.000000, 220.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(187.000000, 221.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(191.000000, 217.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(194.000000, 217.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(196.000000, 215.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(199.000000, 215.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(203.000000, 211.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(205.000000, 209.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(207.000000, 210.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(205.000000, 213.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(209.000000, 211.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(209.000000, 214.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(211.000000, 216.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(212.000000, 214.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(211.000000, 211.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(215.000000, 209.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(220.000000, 207.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(225.000000, 206.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(228.000000, 202.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(230.000000, 199.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(236.000000, 197.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(239.000000, 194.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(243.000000, 193.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(244.000000, 189.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(248.000000, 185.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(253.000000, 183.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(255.000000, 179.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(260.000000, 178.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(261.000000, 173.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(266.000000, 170.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(267.000000, 168.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(263.000000, 165.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(260.000000, 166.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(262.000000, 161.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(265.000000, 157.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(268.000000, 157.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(271.000000, 152.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(269.000000, 149.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(273.000000, 147.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(276.000000, 142.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(278.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(280.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(283.000000, 135.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(287.000000, 135.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(292.000000, 139.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(287.000000, 140.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(285.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(281.000000, 143.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(279.000000, 143.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(280.000000, 147.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(277.000000, 152.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(277.000000, 157.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(279.000000, 158.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(282.000000, 156.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(276.000000, 161.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(276.000000, 164.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(281.000000, 163.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(284.000000, 161.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(287.000000, 157.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(294.000000, 151.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(299.000000, 152.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(301.000000, 146.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(298.000000, 142.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(301.000000, 136.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(302.000000, 139.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(307.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(312.000000, 139.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(317.000000, 142.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(312.000000, 145.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(320.000000, 145.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(323.000000, 141.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(323.000000, 145.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(329.000000, 147.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(334.000000, 146.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(340.000000, 145.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(345.000000, 145.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(348.000000, 146.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(353.000000, 148.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(357.000000, 144.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(360.000000, 143.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(360.000000, 147.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(358.000000, 149.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(367.000000, 152.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(375.000000, 156.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(380.000000, 159.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(383.000000, 160.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(387.000000, 158.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(382.000000, 153.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(386.000000, 151.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(389.000000, 156.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(392.000000, 157.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(394.000000, 158.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(386.000000, 145.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(396.000000, 155.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(398.000000, 159.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(396.000000, 159.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(393.000000, 159.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(387.000000, 160.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(386.000000, 165.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(390.000000, 169.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(395.000000, 174.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(401.000000, 180.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(406.000000, 183.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(402.000000, 174.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(397.000000, 168.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(402.000000, 172.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(406.000000, 166.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(402.000000, 160.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(407.000000, 162.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(410.000000, 167.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(413.000000, 170.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(408.000000, 171.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(405.000000, 174.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(409.000000, 180.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(411.000000, 183.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(413.000000, 179.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(417.000000, 174.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(418.000000, 180.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(416.000000, 187.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(421.000000, 194.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(425.000000, 198.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(427.000000, 194.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(431.000000, 195.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(428.000000, 190.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(420.000000, 182.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(420.000000, 178.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(425.000000, 183.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(430.000000, 187.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(435.000000, 192.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(435.000000, 185.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(440.000000, 192.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(443.000000, 184.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(440.000000, 178.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(439.000000, 174.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(435.000000, 174.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(426.000000, 171.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(422.000000, 171.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(418.000000, 165.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(405.000000, 153.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(401.000000, 149.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(396.000000, 147.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(391.000000, 143.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(387.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(381.000000, 142.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(381.000000, 148.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(376.000000, 152.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(374.000000, 148.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(364.000000, 143.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(361.000000, 141.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(361.000000, 136.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(356.000000, 138.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(355.000000, 140.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(351.000000, 140.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(348.000000, 140.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(348.000000, 140.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(5.000000, 185.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(3.000000, 182.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(0.000000, 181.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(0.000000, 183.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(2.000000, 184.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(5.000000, 185.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(5.000000, 185.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(37.000000, 214.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(37.000000, 216.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(39.000000, 216.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(37.000000, 214.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(37.000000, 214.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(31.000000, 209.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(29.000000, 211.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(27.000000, 213.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(32.000000, 212.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(31.000000, 209.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(31.000000, 209.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(38.000000, 219.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(41.000000, 223.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(42.000000, 225.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(40.000000, 224.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(37.000000, 220.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(38.000000, 219.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(38.000000, 219.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(47.000000, 218.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(45.000000, 218.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(45.000000, 220.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(48.000000, 219.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(47.000000, 218.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(47.000000, 218.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(66.000000, 228.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(64.000000, 226.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(63.000000, 226.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(64.000000, 229.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(66.000000, 228.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(66.000000, 228.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(81.000000, 232.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(77.000000, 232.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(76.000000, 229.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(73.000000, 231.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(71.000000, 233.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(77.000000, 233.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(81.000000, 232.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(81.000000, 232.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(104.000000, 236.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(101.000000, 235.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(98.000000, 234.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(99.000000, 231.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(95.000000, 231.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(92.000000, 233.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(85.000000, 232.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(88.000000, 234.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(94.000000, 234.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(100.000000, 236.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(104.000000, 236.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(104.000000, 236.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(125.000000, 234.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(124.000000, 236.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(127.000000, 236.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(125.000000, 234.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(125.000000, 234.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(134.000000, 233.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(132.000000, 233.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(131.000000, 233.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(133.000000, 235.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(134.000000, 233.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(134.000000, 233.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(149.000000, 228.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(146.000000, 229.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(146.000000, 231.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(143.000000, 231.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(141.000000, 234.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(138.000000, 236.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(144.000000, 234.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(146.000000, 232.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(151.000000, 231.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(149.000000, 228.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(149.000000, 228.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(161.000000, 224.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(157.000000, 224.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(157.000000, 227.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(156.000000, 230.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(152.000000, 231.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(154.000000, 233.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(159.000000, 232.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(161.000000, 229.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(165.000000, 228.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(163.000000, 226.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(161.000000, 224.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(161.000000, 224.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(170.000000, 222.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(168.000000, 224.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(166.000000, 223.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(167.000000, 226.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(170.000000, 225.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(174.000000, 227.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(176.000000, 225.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(171.000000, 224.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(170.000000, 222.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(170.000000, 222.000000));
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(273.000000, 171.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(272.000000, 175.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(277.000000, 175.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(278.000000, 177.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(273.000000, 178.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(271.000000, 180.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(274.000000, 180.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(273.000000, 185.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(275.000000, 185.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(273.000000, 188.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(268.000000, 186.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(272.000000, 189.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(269.000000, 189.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(269.000000, 191.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(266.000000, 194.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(264.000000, 194.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(261.000000, 197.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(262.000000, 200.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(257.000000, 200.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(261.000000, 195.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(258.000000, 194.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(257.000000, 190.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(256.000000, 187.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(260.000000, 185.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(263.000000, 187.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(261.000000, 182.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(265.000000, 182.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(266.000000, 179.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(270.000000, 176.000000));
  ShapeObjectAlaskatAKt.addLineToPoint(CGPointMake(273.000000, 171.000000));
  ShapeObjectAlaskatAKt.closePath;
  ShapeObjectAlaskatAKt.moveToPoint(CGPointMake(273.000000, 171.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.000000, 554.000000);

  // Shape Fill
  ShapeObjectAlaskatAKt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectAlaskatAKt.addClip;
  FillLinearGradient(context,
    CGPointMake(221.500000, 0.000000),
    CGPointMake(221.500000, 236.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectAlaskatAKt.setLineWidth(1);
  ShapeObjectAlaskatAKt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectAlaskatAKt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectAlaskatAKt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectAlabamatALt
//
procedure TArtboardUSStatesGradient.DrawShapeObjectAlabamatALt(context: CGContextRef);
var
  ShapeObjectAlabamatALt : UIBezierPath;
begin
  // Shape Path
  ShapeObjectAlabamatALt := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectAlabamatALt.moveToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(1.000000, 9.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(3.000000, 10.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(3.000000, 96.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(9.000000, 136.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(13.000000, 136.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(15.000000, 138.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(16.000000, 138.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(16.000000, 132.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(17.000000, 126.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(21.000000, 129.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(20.000000, 133.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(22.000000, 135.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(26.000000, 139.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(29.000000, 138.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(28.000000, 136.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(30.000000, 136.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(33.000000, 132.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(32.000000, 130.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(32.000000, 126.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(29.000000, 125.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(26.000000, 122.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(27.000000, 117.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(89.000000, 110.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(88.000000, 107.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(85.000000, 104.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(86.000000, 94.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(82.000000, 89.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(82.000000, 84.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(84.000000, 82.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(84.000000, 77.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(87.000000, 74.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(84.000000, 73.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(84.000000, 69.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(81.000000, 65.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(77.000000, 56.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(59.000000, 0.000000));
  ShapeObjectAlabamatALt.addLineToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectAlabamatALt.closePath;
  ShapeObjectAlabamatALt.moveToPoint(CGPointMake(0.000000, 7.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 864.000000, 411.000000);

  // Shape Fill
  ShapeObjectAlabamatALt.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  ShapeObjectAlabamatALt.addClip;
  FillLinearGradient(context,
    CGPointMake(44.500000, 0.000000),
    CGPointMake(44.500000, 139.000000),
    [0.000000, 1.000000],
    [
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.128127, 0.708671, 0.984324, 1.000000)).CGColor,
      TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.103629, 0.855942, 0.961711, 1.000000)).CGColor
    ]);
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectAlabamatALt.setLineWidth(3);
  ShapeObjectAlabamatALt.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectAlabamatALt.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithHue(0.000000, 0.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectAlabamatALt.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

function TArtboardUSStatesGradient.GenerateArtboardUSStatesBitmap: TBitmap;
var
  NativeImage: UIImage;
  PNGRepresentation: NSData;
  PNGMemoryStream: TMemoryStream;
begin
    NativeImage := nil;
    Result := nil;

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(ArtboardUSStatesBitmapWidth, ArtboardUSStatesBitmapHeight), False, 0);
    DrawArtboardUSStates(TRectF.Create(TPointF.Create(0, 0), ArtboardUSStatesBitmapWidth, ArtboardUSStatesBitmapHeight), ArtboardUSStatesFillMode);
    NativeImage := TUIImage.Wrap(UIGraphicsGetImageFromCurrentImageContext());

    if Assigned(NativeImage) then
    begin
      PNGRepresentation := TNSData.Wrap(UIImagePNGRepresentation((NativeImage as ILocalObject).GetObjectID));
      if Assigned(PNGRepresentation) then
      begin
        Result := TBitmap.Create(0, 0);
        PNGMemoryStream := TMemoryStream.Create;
        PNGMemoryStream.Write(PNGRepresentation.bytes^, PNGRepresentation.length);
        Result.LoadFromStream(PNGMemoryStream);
        PNGMemoryStream.Free;
      end;
    end;

    UIGraphicsEndImageContext();
end;

procedure TArtboardUSStatesGradient.SeTArtboardUSStatesGradientFillMode(const Value: TArtboardUSStatesGradientFillMode);
begin
  FArtboardUSStatesBitmapFillMode := Value;
end;

procedure TArtboardUSStatesGradient.SeTArtboardUSStatesGradientBitmapHeight(const Value: Single);
begin
  FArtboardUSStatesBitmapHeight := Value;
end;

procedure TArtboardUSStatesGradient.SeTArtboardUSStatesGradientBitmapWidth(const Value: Single);
begin
  FArtboardUSStatesBitmapWidth := Value;
end;

//
// Resizing logic for ArtboardUSStates
//
function TArtboardUSStatesGradient.GetNewArtboardSize(FillMode: TArtboardUSStatesGradientFillMode; SourceRect, TargetRect: CGRect): CGRect;
var
  Scales: CGSize;
  SizeZero: CGSize;
  RectZero: CGRect;
  NewLeft: Single;
  NewTop: Single;
  NewWidth: Single;
  NewHeight: Single;
begin
  RectZero := CGRectMake(0, 0, 0, 0);
  SizeZero.width := 0;
  SizeZero.height := 0;

  if (CGRectEqualToRect(SourceRect, TargetRect) > 0) or (CGRectEqualToRect(TargetRect, RectZero) > 0) Then
  begin
    Result := SourceRect;
  end
  else
  begin
    Scales := SizeZero;
    Scales.Width := Abs(TargetRect.size.width / SourceRect.size.width);
    Scales.Height := Abs(TargetRect.size.height / SourceRect.size.height);

    if FillMode = TArtboardUSStatesGradientFillMode.ArtboardUSStatesGradientFit then
    begin
      Scales.Width := Min(Scales.Width, Scales.Height);
      Scales.Height := Scales.Width;
    end
    else if FillMode = TArtboardUSStatesGradientFillMode.ArtboardUSStatesGradientFill then
    begin
      Scales.Width := Max(Scales.Width, Scales.Height);
      Scales.Height := Scales.Width;
    end
    else if FillMode = TArtboardUSStatesGradientFillMode.ArtboardUSStatesGradientOriginal then
    begin
      Scales.Width := 1;
      Scales.Height := 1;
    end;

    if SourceRect.size.width < 0 Then
    begin
      SourceRect.origin.x := SourceRect.origin.x + SourceRect.size.width;
      SourceRect.size.width := Abs(SourceRect.size.width);
    end;
    if SourceRect.size.height < 0 Then
    begin
      SourceRect.origin.y := SourceRect.origin.y + SourceRect.size.height;
      SourceRect.size.height := Abs(SourceRect.size.height);
    end;

    NewWidth  := SourceRect.size.width * Scales.width;
    NewHeight := SourceRect.size.height * Scales.height;
    NewLeft   := TargetRect.origin.x + (TargetRect.size.width - NewWidth) / 2;
    NewTop    := TargetRect.origin.y + (TargetRect.size.height - NewHeight) / 2;
    Result := CGRectMake(NewLeft, NewTop, NewWidth, NewHeight);
  end;
end;

//
// Gradient Fill Utility
//
procedure TArtboardUSStatesGradient.FillLinearGradient(context: CGContextRef; StartPoint, EndPoint: CGPoint; Stops: array of CGFloat; GradientColors: array of CGColorRef);
var
  gradient: CGGradientRef;
  colorSpace: CGColorSpaceRef;
  colors: CFArrayRef;
begin
  colorSpace := CGColorSpaceCreateDeviceRGB;

  colors := TNSArray.OCClass.arrayWithObjects(@GradientColors[0], Length(GradientColors));
  gradient := CGGradientCreateWithColors(nil, colors, @Stops[0]);

  CGContextDrawLinearGradient(context, gradient, StartPoint, EndPoint, kCGGradientDrawsBeforeStartLocation or kCGGradientDrawsAfterEndLocation);

  CFRelease(colorSpace);
  CFRelease(gradient);
end;


end.

