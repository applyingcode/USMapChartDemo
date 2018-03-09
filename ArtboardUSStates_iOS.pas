// +----------------------------------------------------+
// | Petra Plugin For Sketch                            |
// | Copyright(c) 2016 www.applyingcode.com             |
// +----------------------------------------------------+
// | Pascal Edition                                     |
// +----------------------------------------------------+
//   5/17/17 10:09:19 AM

unit ArtboardUSStates_iOS;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Math,
  System.Variants,
  iOSApi.UIKit, iOSApi.Foundation, iOSApi.CocoaTypes, iOSApi.CoreGraphics,
  MacApi.ObjectiveC, iOSApi.QuartzCore, MacApi.ObjcRuntime, MacApi.Helpers,
  MacApi.CoreFoundation, FMX.Graphics;

type
  TArtboardUSStatesFillMode = (
    ArtboardUSStatesFit,
    ArtboardUSStatesFill,
    ArtboardUSStatesStretch,
    ArtboardUSStatesOriginal);

  TArtboardUSStates = class(TObject)
  private
    FAlabamaColor: TAlphaColorF;
    FAlaskaColor: TAlphaColorF;
    FArizonaColor: TAlphaColorF;
    FArkansasColor: TAlphaColorF;
    { Private declarations }
    FArtboardUSStatesBitmapFillMode: TArtboardUSStatesFillMode;
    FArtboardUSStatesBitmapHeight: Single;
    FArtboardUSStatesBitmapWidth: Single;
    FCaliforniaColor: TAlphaColorF;
    FColoradoColor: TAlphaColorF;
    FConnecticutColor: TAlphaColorF;
    FDelawareColor: TAlphaColorF;
    FFloridaColor: TAlphaColorF;
    FGeorgiaColor: TAlphaColorF;
    FHawaiiColor: TAlphaColorF;
    FIdahoColor: TAlphaColorF;
    FIllinoisColor: TAlphaColorF;
    FIndianaColor: TAlphaColorF;
    FIowaColor: TAlphaColorF;
    FKansasColor: TAlphaColorF;
    FKentuckyColor: TAlphaColorF;
    FLouisianaColor: TAlphaColorF;
    FMaineColor: TAlphaColorF;
    FMarylandColor: TAlphaColorF;
    FMassachusettsColor: TAlphaColorF;
    FMichiganColor: TAlphaColorF;
    FMinnesotaColor: TAlphaColorF;
    FMississippiColor: TAlphaColorF;
    FMissouriColor: TAlphaColorF;
    FMontanaColor: TAlphaColorF;
    FNebraskaColor: TAlphaColorF;
    FNevadaColor: TAlphaColorF;
    FNewHampshireColor: TAlphaColorF;
    FNewJerseyColor: TAlphaColorF;
    FNewMexicoColor: TAlphaColorF;
    FNewYorkColor: TAlphaColorF;
    FNorthCarolinaColor: TAlphaColorF;
    FNorthDakotaColor: TAlphaColorF;
    FOhioColor: TAlphaColorF;
    FOklahomaColor: TAlphaColorF;
    FOregonColor: TAlphaColorF;
    FPennsylvaniaColor: TAlphaColorF;
    FRhodeIslandColor: TAlphaColorF;
    FSouthCarolinaColor: TAlphaColorF;
    FSouthDakotaColor: TAlphaColorF;
    FTennesseeColor: TAlphaColorF;
    FTexasColor: TAlphaColorF;
    FUtahColor: TAlphaColorF;
    FVermontColor: TAlphaColorF;
    FVirginiaColor: TAlphaColorF;
    FWashingtonColor: TAlphaColorF;
    FWashingtonDCColor: TAlphaColorF;
    FWestVirginiaColor: TAlphaColorF;
    FWisconsinColor: TAlphaColorF;
    { Public declarations }
    FWyomingColor: TAlphaColorF;
    NewArtboardSize: CGRect;
    ResizedScale: CGSize;

    function GetNewArtboardSize(FillMode: TArtboardUSStatesFillMode; SourceRect, TargetRect: CGRect): CGRect;
    function GenerateArtboardUSStatesBitmap: TBitmap;
    procedure SetArtboardUSStatesFillMode(const Value: TArtboardUSStatesFillMode);
    procedure SetArtboardUSStatesBitmapHeight(const Value: Single);
    procedure SetArtboardUSStatesBitmapWidth(const Value: Single);
    procedure DrawShapeObjectBackground(context: CGContextRef);
    procedure DrawGroupObjectUnitedStates(context: CGContextRef);
    procedure DrawShapeObjectWyoming(context: CGContextRef);
    procedure DrawShapeObjectWisconsin(context: CGContextRef);
    procedure DrawShapeObjectWestVirginia(context: CGContextRef);
    procedure DrawShapeObjectWashingtonDC(context: CGContextRef);
    procedure DrawShapeObjectWashington(context: CGContextRef);
    procedure DrawShapeObjectVirginia(context: CGContextRef);
    procedure DrawShapeObjectVermont(context: CGContextRef);
    procedure DrawShapeObjectUtah(context: CGContextRef);
    procedure DrawShapeObjectTexas(context: CGContextRef);
    procedure DrawShapeObjectTennessee(context: CGContextRef);
    procedure DrawShapeObjectSouthDakota(context: CGContextRef);
    procedure DrawShapeObjectSouthCarolina(context: CGContextRef);
    procedure DrawShapeObjectRhodeIsland(context: CGContextRef);
    procedure DrawShapeObjectPennsylvania(context: CGContextRef);
    procedure DrawShapeObjectOregon(context: CGContextRef);
    procedure DrawShapeObjectOklahoma(context: CGContextRef);
    procedure DrawShapeObjectOhio(context: CGContextRef);
    procedure DrawShapeObjectNorthDakota(context: CGContextRef);
    procedure DrawShapeObjectNorthCarolina(context: CGContextRef);
    procedure DrawShapeObjectNewYork(context: CGContextRef);
    procedure DrawShapeObjectNewMexico(context: CGContextRef);
    procedure DrawShapeObjectNewJersey(context: CGContextRef);
    procedure DrawShapeObjectNewHampshire(context: CGContextRef);
    procedure DrawShapeObjectNevada(context: CGContextRef);
    procedure DrawShapeObjectNebraska(context: CGContextRef);
    procedure DrawShapeObjectMontana(context: CGContextRef);
    procedure DrawShapeObjectMissouri(context: CGContextRef);
    procedure DrawShapeObjectMississippi(context: CGContextRef);
    procedure DrawShapeObjectMinnesota(context: CGContextRef);
    procedure DrawShapeObjectMichigan(context: CGContextRef);
    procedure DrawShapeObjectMassachusetts(context: CGContextRef);
    procedure DrawShapeObjectMaryland(context: CGContextRef);
    procedure DrawShapeObjectMaine(context: CGContextRef);
    procedure DrawShapeObjectLouisiana(context: CGContextRef);
    procedure DrawShapeObjectKentucky(context: CGContextRef);
    procedure DrawShapeObjectKansas(context: CGContextRef);
    procedure DrawShapeObjectIowa(context: CGContextRef);
    procedure DrawShapeObjectIndiana(context: CGContextRef);
    procedure DrawShapeObjectIllinois(context: CGContextRef);
    procedure DrawShapeObjectIdaho(context: CGContextRef);
    procedure DrawShapeObjectHawaii(context: CGContextRef);
    procedure DrawShapeObjectGeorgia(context: CGContextRef);
    procedure DrawShapeObjectFlorida(context: CGContextRef);
    procedure DrawShapeObjectDelaware(context: CGContextRef);
    procedure DrawShapeObjectConnecticut(context: CGContextRef);
    procedure DrawShapeObjectColorado(context: CGContextRef);
    procedure DrawShapeObjectCalifornia(context: CGContextRef);
    procedure DrawShapeObjectArkansas(context: CGContextRef);
    procedure DrawShapeObjectArizona(context: CGContextRef);
    procedure DrawShapeObjectAlaska(context: CGContextRef);
    procedure DrawShapeObjectAlabama(context: CGContextRef);
  public
    constructor Create;
    procedure DrawArtboardUSStates(Bounds: TRectF; FillMode: TArtboardUSStatesFillMode);
    property AlabamaColor: TAlphaColorF read FAlabamaColor write FAlabamaColor;
    property AlaskaColor: TAlphaColorF read FAlaskaColor write FAlaskaColor;
    property ArizonaColor: TAlphaColorF read FArizonaColor write FArizonaColor;
    property ArkansasColor: TAlphaColorF read FArkansasColor write FArkansasColor;
    property ArtboardUSStatesFillMode: TArtboardUSStatesFillMode read FArtboardUSStatesBitmapFillMode write SetArtboardUSStatesFillMode;
    property ArtboardUSStatesBitmap: TBitmap read GenerateArtboardUSStatesBitmap;
    property ArtboardUSStatesBitmapHeight: Single read FArtboardUSStatesBitmapHeight write SetArtboardUSStatesBitmapHeight;
    property ArtboardUSStatesBitmapWidth: Single read FArtboardUSStatesBitmapWidth write SetArtboardUSStatesBitmapWidth;
    property CaliforniaColor: TAlphaColorF read FCaliforniaColor write
        FCaliforniaColor;
    property ColoradoColor: TAlphaColorF read FColoradoColor write FColoradoColor;
    property ConnecticutColor: TAlphaColorF read FConnecticutColor write
        FConnecticutColor;
    property DelawareColor: TAlphaColorF read FDelawareColor write FDelawareColor;
    property FloridaColor: TAlphaColorF read FFloridaColor write FFloridaColor;
    property GeorgiaColor: TAlphaColorF read FGeorgiaColor write FGeorgiaColor;
    property HawaiiColor: TAlphaColorF read FHawaiiColor write FHawaiiColor;
    property IdahoColor: TAlphaColorF read FIdahoColor write FIdahoColor;
    property IllinoisColor: TAlphaColorF read FIllinoisColor write FIllinoisColor;
    property IndianaColor: TAlphaColorF read FIndianaColor write FIndianaColor;
    property IowaColor: TAlphaColorF read FIowaColor write FIowaColor;
    property KansasColor: TAlphaColorF read FKansasColor write FKansasColor;
    property KentuckyColor: TAlphaColorF read FKentuckyColor write FKentuckyColor;
    property LouisianaColor: TAlphaColorF read FLouisianaColor write
        FLouisianaColor;
    property MaineColor: TAlphaColorF read FMaineColor write FMaineColor;
    property MarylandColor: TAlphaColorF read FMarylandColor write FMarylandColor;
    property MassachusettsColor: TAlphaColorF read FMassachusettsColor write
        FMassachusettsColor;
    property MichiganColor: TAlphaColorF read FMichiganColor write FMichiganColor;
    property MinnesotaColor: TAlphaColorF read FMinnesotaColor write
        FMinnesotaColor;
    property MississippiColor: TAlphaColorF read FMississippiColor write
        FMississippiColor;
    property MissouriColor: TAlphaColorF read FMissouriColor write FMissouriColor;
    property MontanaColor: TAlphaColorF read FMontanaColor write FMontanaColor;
    property NebraskaColor: TAlphaColorF read FNebraskaColor write FNebraskaColor;
    property NevadaColor: TAlphaColorF read FNevadaColor write FNevadaColor;
    property NewHampshireColor: TAlphaColorF read FNewHampshireColor write
        FNewHampshireColor;
    property NewJerseyColor: TAlphaColorF read FNewJerseyColor write
        FNewJerseyColor;
    property NewMexicoColor: TAlphaColorF read FNewMexicoColor write
        FNewMexicoColor;
    property NewYorkColor: TAlphaColorF read FNewYorkColor write FNewYorkColor;
    property NorthCarolinaColor: TAlphaColorF read FNorthCarolinaColor write
        FNorthCarolinaColor;
    property NorthDakotaColor: TAlphaColorF read FNorthDakotaColor write
        FNorthDakotaColor;
    property OhioColor: TAlphaColorF read FOhioColor write FOhioColor;
    property OklahomaColor: TAlphaColorF read FOklahomaColor write FOklahomaColor;
    property OregonColor: TAlphaColorF read FOregonColor write FOregonColor;
    property PennsylvaniaColor: TAlphaColorF read FPennsylvaniaColor write
        FPennsylvaniaColor;
    property RhodeIslandColor: TAlphaColorF read FRhodeIslandColor write
        FRhodeIslandColor;
    property SouthCarolinaColor: TAlphaColorF read FSouthCarolinaColor write
        FSouthCarolinaColor;
    property SouthDakotaColor: TAlphaColorF read FSouthDakotaColor write
        FSouthDakotaColor;
    property TennesseeColor: TAlphaColorF read FTennesseeColor write
        FTennesseeColor;
    property TexasColor: TAlphaColorF read FTexasColor write FTexasColor;
    property UtahColor: TAlphaColorF read FUtahColor write FUtahColor;
    property VermontColor: TAlphaColorF read FVermontColor write FVermontColor;
    property VirginiaColor: TAlphaColorF read FVirginiaColor write FVirginiaColor;
    property WashingtonColor: TAlphaColorF read FWashingtonColor write
        FWashingtonColor;
    property WashingtonDCColor: TAlphaColorF read FWashingtonDCColor write
        FWashingtonDCColor;
    property WestVirginiaColor: TAlphaColorF read FWestVirginiaColor write
        FWestVirginiaColor;
    property WisconsinColor: TAlphaColorF read FWisconsinColor write
        FWisconsinColor;
    property WyomingColor: TAlphaColorF read FWyomingColor write FWyomingColor;
  end;

implementation


// Initialize defaults

constructor TArtboardUSStates.Create;
begin
  inherited;
  FArtboardUSStatesBitmapWidth := 1400.000000;
  FArtboardUSStatesBitmapHeight := 1400.000000;
  FArtboardUSStatesBitmapFillMode := TArtboardUSStatesFillMode.ArtboardUSStatesFit;

  // Initialize states colors
  FWyomingColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FWisconsinColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FWestVirginiaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FWashingtonDCColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FWashingtonColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FVirginiaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FVermontColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FUtahColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FTexasColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FTennesseeColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FSouthDakotaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FSouthCarolinaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FRhodeIslandColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FPennsylvaniaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FOregonColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FOklahomaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FOhioColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNorthDakotaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNorthCarolinaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNewYorkColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNewMexicoColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNewJerseyColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNewHampshireColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNevadaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FNebraskaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMontanaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMissouriColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMississippiColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMinnesotaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMichiganColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMassachusettsColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMarylandColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FMaineColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FLouisianaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FKentuckyColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FKansasColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FIowaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FIndianaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FIllinoisColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FIdahoColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FHawaiiColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FGeorgiaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FFloridaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FDelawareColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FConnecticutColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FColoradoColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FCaliforniaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FArkansasColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FArizonaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FAlaskaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
  FAlabamaColor := TAlphaColorF.Create(0.103629, 0.855942, 0.961711, 1.0);
end;

//
// ArtboardUSStates
//
procedure TArtboardUSStates.DrawArtboardUSStates(Bounds: TRectF; FillMode: TArtboardUSStatesFillMode);
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
procedure TArtboardUSStates.DrawShapeObjectBackground(context: CGContextRef);
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
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(0.000000, 0.000000, 0.000000, 1.000000)).setFill;
  ShapeObjectBackground.fill;
  CGContextRestoreGState(context);

  CGContextRestoreGState(context);

End;

//
// GroupObjectUnitedStates
//
procedure TArtboardUSStates.DrawGroupObjectUnitedStates(context: CGContextRef);
begin
  CGContextSaveGState(context);

  CGContextTranslateCTM(context, 68.000000, 278.000000);

  DrawShapeObjectWyoming(context);
  DrawShapeObjectWisconsin(context);
  DrawShapeObjectWestVirginia(context);
  DrawShapeObjectWashingtonDC(context);
  DrawShapeObjectWashington(context);
  DrawShapeObjectVirginia(context);
  DrawShapeObjectVermont(context);
  DrawShapeObjectUtah(context);
  DrawShapeObjectTexas(context);
  DrawShapeObjectTennessee(context);
  DrawShapeObjectSouthDakota(context);
  DrawShapeObjectSouthCarolina(context);
  DrawShapeObjectRhodeIsland(context);
  DrawShapeObjectPennsylvania(context);
  DrawShapeObjectOregon(context);
  DrawShapeObjectOklahoma(context);
  DrawShapeObjectOhio(context);
  DrawShapeObjectNorthDakota(context);
  DrawShapeObjectNorthCarolina(context);
  DrawShapeObjectNewYork(context);
  DrawShapeObjectNewMexico(context);
  DrawShapeObjectNewJersey(context);
  DrawShapeObjectNewHampshire(context);
  DrawShapeObjectNevada(context);
  DrawShapeObjectNebraska(context);
  DrawShapeObjectMontana(context);
  DrawShapeObjectMissouri(context);
  DrawShapeObjectMississippi(context);
  DrawShapeObjectMinnesota(context);
  DrawShapeObjectMichigan(context);
  DrawShapeObjectMassachusetts(context);
  DrawShapeObjectMaryland(context);
  DrawShapeObjectMaine(context);
  DrawShapeObjectLouisiana(context);
  DrawShapeObjectKentucky(context);
  DrawShapeObjectKansas(context);
  DrawShapeObjectIowa(context);
  DrawShapeObjectIndiana(context);
  DrawShapeObjectIllinois(context);
  DrawShapeObjectIdaho(context);
  DrawShapeObjectHawaii(context);
  DrawShapeObjectGeorgia(context);
  DrawShapeObjectFlorida(context);
  DrawShapeObjectDelaware(context);
  DrawShapeObjectConnecticut(context);
  DrawShapeObjectColorado(context);
  DrawShapeObjectCalifornia(context);
  DrawShapeObjectArkansas(context);
  DrawShapeObjectArizona(context);
  DrawShapeObjectAlaska(context);
  DrawShapeObjectAlabama(context);

  // ~ End GroupObjectUnitedStates
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWyoming
//
procedure TArtboardUSStates.DrawShapeObjectWyoming(context: CGContextRef);
var
  ShapeObjectWyoming : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWyoming := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWyoming.moveToPoint(CGPointMake(66.181355, 5.832039));
  ShapeObjectWyoming.addCurveToPoint(CGPointMake(11.000000, 0.000000), CGPointMake(47.787570, 4.554692), CGPointMake(11.000000, 0.000000));
  ShapeObjectWyoming.addLineToPoint(CGPointMake(0.000000, 110.000000));
  ShapeObjectWyoming.addCurveToPoint(CGPointMake(61.293707, 115.435729), CGPointMake(0.000000, 110.000000), CGPointMake(40.862472, 113.957153));
  ShapeObjectWyoming.addCurveToPoint(CGPointMake(152.000000, 121.000000), CGPointMake(91.529138, 117.623819), CGPointMake(152.000000, 121.000000));
  ShapeObjectWyoming.addLineToPoint(CGPointMake(155.000000, 10.000000));
  ShapeObjectWyoming.addCurveToPoint(CGPointMake(66.181355, 5.832039), CGPointMake(155.000000, 10.000000), CGPointMake(95.787570, 7.888026));
  ShapeObjectWyoming.closePath;
  ShapeObjectWyoming.moveToPoint(CGPointMake(66.181355, 5.832039));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 353.000000, 143.000000);

  // Shape Fill
  ShapeObjectWyoming.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(WyomingColor.R, WyomingColor.G, WyomingColor.B, 1.000000)).setFill;
  ShapeObjectWyoming.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWyoming.setLineWidth(3);
  ShapeObjectWyoming.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWyoming.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWyoming.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWisconsin
//
procedure TArtboardUSStates.DrawShapeObjectWisconsin(context: CGContextRef);
var
  ShapeObjectWisconsin : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWisconsin := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWisconsin.moveToPoint(CGPointMake(13.000000, 7.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(12.000000, 10.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(10.000000, 10.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(11.000000, 20.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(11.000000, 26.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(3.000000, 31.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(2.000000, 34.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(0.000000, 37.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(0.000000, 40.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(3.000000, 41.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(5.000000, 44.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(4.000000, 48.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(3.000000, 51.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(4.000000, 53.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(3.000000, 54.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(4.000000, 56.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(3.000000, 62.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(8.000000, 66.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(12.000000, 66.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(15.000000, 69.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(19.000000, 70.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(23.000000, 74.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(26.000000, 78.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(29.000000, 80.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(33.000000, 80.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(37.000000, 84.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(38.000000, 87.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(38.000000, 95.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(39.000000, 95.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(40.000000, 98.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(43.000000, 100.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(41.000000, 103.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(42.000000, 110.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(45.000000, 116.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(51.000000, 116.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(53.000000, 121.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(113.000000, 115.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(112.000000, 111.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(113.000000, 109.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(113.000000, 106.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(111.000000, 105.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(110.000000, 101.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(109.000000, 95.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(109.000000, 91.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(110.000000, 88.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(110.000000, 85.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(112.000000, 81.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(110.000000, 79.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(111.000000, 73.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(112.000000, 70.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(115.000000, 68.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(113.000000, 65.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(113.000000, 59.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(116.000000, 54.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(115.000000, 51.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(118.000000, 48.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(119.000000, 43.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(120.000000, 39.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(122.000000, 36.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(120.000000, 36.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(119.000000, 39.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(117.000000, 42.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(116.000000, 42.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(116.000000, 45.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(114.000000, 47.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(115.000000, 49.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(114.000000, 50.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(113.000000, 50.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(110.000000, 51.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(108.000000, 55.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(106.000000, 57.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(104.000000, 60.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(102.000000, 59.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(102.000000, 56.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(104.000000, 51.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(106.000000, 48.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(109.000000, 46.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(109.000000, 44.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(106.000000, 42.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(108.000000, 36.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(107.000000, 36.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(104.000000, 37.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(103.000000, 37.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(105.000000, 33.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(103.000000, 28.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(100.000000, 26.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(97.000000, 26.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(97.000000, 23.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(94.000000, 22.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(87.000000, 21.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(83.000000, 22.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(79.000000, 20.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(66.000000, 17.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(55.000000, 15.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(52.000000, 11.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(49.000000, 10.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(42.000000, 8.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(38.000000, 10.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(38.000000, 8.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(40.000000, 1.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(38.000000, 0.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(33.000000, 3.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(30.000000, 4.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(23.000000, 8.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(17.000000, 9.000000));
  ShapeObjectWisconsin.addLineToPoint(CGPointMake(13.000000, 7.000000));
  ShapeObjectWisconsin.closePath;
  ShapeObjectWisconsin.moveToPoint(CGPointMake(13.000000, 7.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 737.000000, 94.000000);

  // Shape Fill
  ShapeObjectWisconsin.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(WisconsinColor.R, WisconsinColor.G, WisconsinColor.B, 1.000000)).setFill;
  ShapeObjectWisconsin.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWisconsin.setLineWidth(3);
  ShapeObjectWisconsin.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWisconsin.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWisconsin.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWestVirginia
//
procedure TArtboardUSStates.DrawShapeObjectWestVirginia(context: CGContextRef);
var
  ShapeObjectWestVirginia : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWestVirginia := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWestVirginia.moveToPoint(CGPointMake(17.000000, 90.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(17.000000, 91.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(18.000000, 91.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(18.000000, 93.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(19.000000, 93.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(19.000000, 95.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(20.000000, 95.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(21.000000, 97.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(24.000000, 97.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(25.000000, 98.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(28.000000, 99.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(31.000000, 96.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(32.000000, 94.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(36.000000, 96.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(38.000000, 94.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(42.000000, 94.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(43.000000, 92.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(42.000000, 90.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(44.000000, 89.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(46.000000, 90.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(50.000000, 87.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(51.000000, 88.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(55.000000, 85.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(54.000000, 84.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(56.000000, 82.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(56.000000, 81.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(54.000000, 81.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(54.000000, 79.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(55.000000, 76.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(59.000000, 70.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(60.000000, 66.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(59.000000, 65.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(62.000000, 62.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(61.000000, 61.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(63.000000, 58.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(63.000000, 54.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(64.000000, 53.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(66.000000, 53.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(68.000000, 55.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(72.000000, 55.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(74.000000, 53.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(74.000000, 50.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(75.000000, 49.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(75.000000, 46.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(76.000000, 44.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(77.000000, 43.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(80.000000, 44.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(81.000000, 40.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(83.000000, 40.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(83.000000, 39.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(85.000000, 37.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(85.000000, 35.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(87.000000, 32.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(87.000000, 29.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(88.000000, 27.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(87.000000, 25.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(88.000000, 24.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(100.000000, 30.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(101.000000, 24.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(101.000000, 22.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(99.000000, 21.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(98.000000, 19.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(97.000000, 19.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(98.000000, 17.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(94.000000, 18.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(90.000000, 16.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(89.000000, 17.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(88.000000, 19.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(85.000000, 19.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(84.000000, 22.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(82.000000, 23.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(79.000000, 23.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(77.000000, 20.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(77.000000, 23.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(74.000000, 26.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(71.000000, 26.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(70.000000, 28.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(68.000000, 31.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(64.000000, 35.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(61.000000, 21.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(39.000000, 25.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(34.000000, 0.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(31.000000, 2.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(34.000000, 4.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(33.000000, 7.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(34.000000, 10.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(33.000000, 14.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(33.000000, 19.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(32.000000, 25.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(32.000000, 29.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(27.000000, 32.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(27.000000, 35.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(23.000000, 39.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(21.000000, 37.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(18.000000, 39.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(18.000000, 41.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(16.000000, 42.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(15.000000, 46.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(14.000000, 48.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(15.000000, 49.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(15.000000, 51.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(13.000000, 53.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(12.000000, 53.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(12.000000, 51.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(10.000000, 50.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(8.000000, 52.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(7.000000, 55.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(7.000000, 57.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(8.000000, 62.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(6.000000, 63.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(6.000000, 66.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(0.000000, 69.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(1.000000, 72.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(0.000000, 76.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(4.000000, 80.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(5.000000, 82.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(9.000000, 87.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(14.000000, 90.000000));
  ShapeObjectWestVirginia.addLineToPoint(CGPointMake(17.000000, 90.000000));
  ShapeObjectWestVirginia.closePath;
  ShapeObjectWestVirginia.moveToPoint(CGPointMake(17.000000, 90.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 978.000000, 238.000000);

  // Shape Fill
  ShapeObjectWestVirginia.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(WestVirginiaColor.R, WestVirginiaColor.G, WestVirginiaColor.B, 1.000000)).setFill;
  ShapeObjectWestVirginia.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWestVirginia.setLineWidth(3);
  ShapeObjectWestVirginia.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWestVirginia.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWestVirginia.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWashingtonDC
//
procedure TArtboardUSStates.DrawShapeObjectWashingtonDC(context: CGContextRef);
var
  ShapeObjectWashingtonDC : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWashingtonDC := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWashingtonDC.moveToPoint(CGPointMake(2.000000, 5.000000));
  ShapeObjectWashingtonDC.addLineToPoint(CGPointMake(4.000000, 3.000000));
  ShapeObjectWashingtonDC.addLineToPoint(CGPointMake(1.000000, 0.000000));
  ShapeObjectWashingtonDC.addLineToPoint(CGPointMake(0.000000, 2.000000));
  ShapeObjectWashingtonDC.addLineToPoint(CGPointMake(1.000000, 3.000000));
  ShapeObjectWashingtonDC.addLineToPoint(CGPointMake(2.000000, 5.000000));
  ShapeObjectWashingtonDC.closePath;
  ShapeObjectWashingtonDC.moveToPoint(CGPointMake(2.000000, 5.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1095.000000, 268.000000);

  // Shape Fill
  ShapeObjectWashingtonDC.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(WashingtonDCColor.R, WashingtonDCColor.G, WashingtonDCColor.B, 1.000000)).setFill;
  ShapeObjectWashingtonDC.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWashingtonDC.setLineWidth(3);
  ShapeObjectWashingtonDC.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWashingtonDC.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWashingtonDC.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectWashington
//
procedure TArtboardUSStates.DrawShapeObjectWashington(context: CGContextRef);
var
  ShapeObjectWashington : UIBezierPath;
begin
  // Shape Path
  ShapeObjectWashington := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectWashington.moveToPoint(CGPointMake(143.000000, 100.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(143.000000, 97.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(144.000000, 96.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(144.000000, 94.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(142.000000, 90.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(153.000000, 21.000000));
  ShapeObjectWashington.addCurveToPoint(CGPointMake(68.023172, 5.777151), CGPointMake(153.000000, 21.000000), CGPointMake(96.348782, 11.184767));
  ShapeObjectWashington.addCurveToPoint(CGPointMake(43.000000, 0.000000), CGPointMake(59.682115, 4.184767), CGPointMake(43.000000, 0.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(42.000000, 2.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(43.000000, 7.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(46.000000, 7.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(46.000000, 11.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(45.000000, 15.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(43.000000, 15.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(42.000000, 13.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(41.000000, 11.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(38.000000, 7.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(36.000000, 8.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(38.000000, 9.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(40.000000, 11.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(38.000000, 12.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(35.000000, 10.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(32.000000, 9.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(33.000000, 12.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(38.000000, 14.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(40.000000, 12.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(42.000000, 15.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(39.000000, 19.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(40.000000, 22.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(42.000000, 28.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(44.000000, 29.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(43.000000, 26.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(41.000000, 21.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(42.000000, 18.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(44.000000, 18.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(46.000000, 19.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(46.000000, 23.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(46.000000, 26.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(48.000000, 27.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(46.000000, 30.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(43.000000, 33.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(43.000000, 36.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(43.000000, 39.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(42.000000, 44.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(40.000000, 47.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(38.000000, 46.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(35.000000, 49.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(34.000000, 50.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(31.000000, 49.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(29.000000, 50.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(26.000000, 49.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(28.000000, 46.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(31.000000, 43.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(33.000000, 44.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(35.000000, 42.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(37.000000, 45.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(38.000000, 39.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(36.000000, 38.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(37.000000, 34.000000));
  ShapeObjectWashington.addCurveToPoint(CGPointMake(40.000000, 34.000000), CGPointMake(35.941732, 34.000000), CGPointMake(40.000000, 34.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(41.000000, 31.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(34.000000, 35.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(32.000000, 36.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(28.000000, 39.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(30.000000, 41.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(32.000000, 41.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(30.000000, 42.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(25.000000, 42.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(26.000000, 40.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(30.000000, 36.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(33.000000, 33.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(33.000000, 30.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(35.000000, 30.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(35.000000, 32.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(38.000000, 29.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(36.000000, 23.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(36.000000, 26.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(33.000000, 23.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(32.000000, 24.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(29.000000, 21.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(26.000000, 21.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(15.000000, 17.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(11.000000, 15.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(9.000000, 13.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(2.000000, 9.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(0.000000, 14.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(0.000000, 20.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(3.000000, 24.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(4.000000, 28.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(3.000000, 36.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(5.000000, 39.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(4.000000, 45.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(7.000000, 45.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(7.000000, 47.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(11.000000, 49.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(6.000000, 50.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(5.000000, 52.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(4.000000, 51.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(4.000000, 54.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(8.000000, 54.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(10.000000, 57.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(7.000000, 57.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(6.000000, 61.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(7.000000, 64.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(4.000000, 64.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(3.000000, 62.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(2.000000, 66.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(4.000000, 66.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(6.000000, 67.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(10.000000, 67.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(11.000000, 68.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(14.000000, 68.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(15.000000, 71.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(17.000000, 72.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(20.000000, 72.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(23.000000, 75.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(25.000000, 80.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(24.000000, 87.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(24.000000, 89.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(31.000000, 91.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(34.000000, 93.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(41.000000, 91.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(44.000000, 90.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(50.000000, 91.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(55.000000, 93.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(56.000000, 96.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(60.000000, 95.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(61.000000, 96.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(68.000000, 95.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(73.000000, 96.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(78.000000, 95.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(87.000000, 94.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(90.000000, 93.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(99.000000, 95.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(102.000000, 93.000000));
  ShapeObjectWashington.addLineToPoint(CGPointMake(143.000000, 100.000000));
  ShapeObjectWashington.closePath;
  ShapeObjectWashington.moveToPoint(CGPointMake(143.000000, 100.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 105.000000, 1.000000);

  // Shape Fill
  ShapeObjectWashington.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(WashingtonColor.R, WashingtonColor.G, WashingtonColor.B, 1.000000)).setFill;
  ShapeObjectWashington.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectWashington.setLineWidth(3);
  ShapeObjectWashington.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectWashington.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectWashington.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectVirginia
//
procedure TArtboardUSStates.DrawShapeObjectVirginia(context: CGContextRef);
var
  ShapeObjectVirginia : UIBezierPath;
begin
  // Shape Path
  ShapeObjectVirginia := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectVirginia.moveToPoint(CGPointMake(170.000000, 69.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(170.000000, 67.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(171.000000, 67.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(171.000000, 62.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(169.000000, 59.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(162.000000, 59.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(163.000000, 62.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(160.000000, 61.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(158.000000, 63.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(158.000000, 60.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(153.000000, 58.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(153.000000, 55.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(150.000000, 55.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(147.000000, 55.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(145.000000, 53.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(138.000000, 54.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(138.000000, 52.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(146.000000, 51.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(147.000000, 53.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(148.000000, 50.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(149.000000, 53.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(153.000000, 53.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(154.000000, 53.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(154.000000, 55.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(160.000000, 58.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(162.000000, 56.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(160.000000, 55.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(160.000000, 53.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(158.000000, 52.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(155.000000, 52.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(148.000000, 46.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(148.000000, 44.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(155.000000, 50.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(158.000000, 50.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(156.000000, 48.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(157.000000, 45.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(161.000000, 48.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(160.000000, 45.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(157.000000, 43.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(153.000000, 42.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(151.000000, 39.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(148.000000, 38.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(144.000000, 35.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(141.000000, 31.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(139.000000, 31.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(136.000000, 30.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(137.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(141.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(148.000000, 36.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(150.000000, 36.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(154.000000, 40.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(154.000000, 38.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(157.000000, 40.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(157.000000, 36.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(156.000000, 34.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(158.000000, 33.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(155.000000, 32.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(151.000000, 31.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(150.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(147.000000, 28.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(145.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(141.000000, 28.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(138.000000, 25.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(138.000000, 23.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(135.000000, 26.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(131.000000, 26.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(131.000000, 24.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(131.000000, 23.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(131.000000, 17.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(133.000000, 15.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(135.000000, 14.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(135.000000, 11.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(134.000000, 9.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(133.000000, 8.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(130.000000, 8.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(129.000000, 6.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(125.000000, 6.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(123.000000, 4.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(124.000000, 1.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(121.000000, 0.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(117.000000, 0.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(116.000000, 6.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(104.000000, 0.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(103.000000, 1.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(104.000000, 3.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(103.000000, 5.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(103.000000, 8.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(101.000000, 11.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(101.000000, 13.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(99.000000, 15.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(99.000000, 16.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(97.000000, 16.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(96.000000, 20.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(93.000000, 19.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(92.000000, 20.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(91.000000, 22.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(91.000000, 25.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(90.000000, 26.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(90.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(88.000000, 31.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(84.000000, 31.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(82.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(80.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(79.000000, 30.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(79.000000, 34.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(77.000000, 37.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(78.000000, 38.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(75.000000, 41.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(76.000000, 42.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(75.000000, 46.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(71.000000, 52.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(70.000000, 55.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(70.000000, 57.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(72.000000, 57.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(72.000000, 58.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(70.000000, 60.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(71.000000, 61.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(67.000000, 64.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(66.000000, 63.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(62.000000, 66.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(60.000000, 65.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(58.000000, 66.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(59.000000, 68.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(58.000000, 70.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(54.000000, 70.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(52.000000, 72.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(48.000000, 70.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(47.000000, 72.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(44.000000, 75.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(41.000000, 74.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(40.000000, 73.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(37.000000, 73.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(36.000000, 71.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(35.000000, 71.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(35.000000, 69.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(34.000000, 69.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(34.000000, 67.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(33.000000, 67.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(26.000000, 76.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(19.000000, 80.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(19.000000, 83.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(17.000000, 85.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(17.000000, 87.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(12.000000, 89.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(11.000000, 92.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(0.000000, 98.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(44.000000, 91.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(44.000000, 92.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(170.000000, 69.000000));
  ShapeObjectVirginia.closePath;
  ShapeObjectVirginia.moveToPoint(CGPointMake(170.000000, 69.000000));
  ShapeObjectVirginia.moveToPoint(CGPointMake(171.000000, 27.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(171.000000, 29.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(170.000000, 30.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(171.000000, 32.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(169.000000, 35.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(168.000000, 38.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(168.000000, 42.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(167.000000, 46.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(168.000000, 50.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(169.000000, 51.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(170.000000, 48.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(170.000000, 42.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(171.000000, 39.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(174.000000, 40.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(174.000000, 34.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(176.000000, 30.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(175.000000, 28.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(175.000000, 25.000000));
  ShapeObjectVirginia.addLineToPoint(CGPointMake(171.000000, 27.000000));
  ShapeObjectVirginia.closePath;
  ShapeObjectVirginia.moveToPoint(CGPointMake(171.000000, 27.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 962.000000, 262.000000);

  // Shape Fill
  ShapeObjectVirginia.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(VirginiaColor.R, VirginiaColor.G, VirginiaColor.B, 1.000000)).setFill;
  ShapeObjectVirginia.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectVirginia.setLineWidth(3);
  ShapeObjectVirginia.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectVirginia.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectVirginia.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectVermont
//
procedure TArtboardUSStates.DrawShapeObjectVermont(context: CGContextRef);
var
  ShapeObjectVermont : UIBezierPath;
begin
  // Shape Path
  ShapeObjectVermont := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectVermont.moveToPoint(CGPointMake(0.000000, 10.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(36.000000, 0.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(37.000000, 1.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(38.000000, 3.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(36.000000, 7.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(39.000000, 11.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(38.000000, 12.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(38.000000, 14.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(35.000000, 19.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(34.000000, 20.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(32.000000, 20.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(31.000000, 22.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(32.000000, 25.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(32.000000, 28.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(32.000000, 32.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(31.000000, 33.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(31.000000, 37.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(30.000000, 39.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(30.000000, 42.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(29.000000, 43.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(30.000000, 49.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(31.000000, 50.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(30.000000, 54.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(31.000000, 56.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(31.000000, 59.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(30.000000, 60.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(30.000000, 63.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(34.000000, 66.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(17.000000, 69.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(16.000000, 68.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(12.000000, 50.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(12.000000, 48.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(10.000000, 46.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(8.000000, 48.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(8.000000, 42.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(7.000000, 41.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(7.000000, 40.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(6.000000, 39.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(5.000000, 36.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(4.000000, 36.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(4.000000, 31.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(5.000000, 29.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(3.000000, 26.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(2.000000, 22.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(1.000000, 20.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(1.000000, 15.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(0.000000, 14.000000));
  ShapeObjectVermont.addLineToPoint(CGPointMake(0.000000, 10.000000));
  ShapeObjectVermont.closePath;
  ShapeObjectVermont.moveToPoint(CGPointMake(0.000000, 10.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1136.000000, 79.000000);

  // Shape Fill
  ShapeObjectVermont.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(VermontColor.R, VermontColor.G, VermontColor.B, 1.000000)).setFill;
  ShapeObjectVermont.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectVermont.setLineWidth(3);
  ShapeObjectVermont.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectVermont.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectVermont.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectUtah
//
procedure TArtboardUSStates.DrawShapeObjectUtah(context: CGContextRef);
var
  ShapeObjectUtah : UIBezierPath;
begin
  // Shape Path
  ShapeObjectUtah := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectUtah.moveToPoint(CGPointMake(17.000000, 0.000000));
  ShapeObjectUtah.addLineToPoint(CGPointMake(0.000000, 138.000000));
  ShapeObjectUtah.addCurveToPoint(CGPointMake(45.822160, 143.909517), CGPointMake(0.000000, 138.000000), CGPointMake(30.548106, 142.273011));
  ShapeObjectUtah.addCurveToPoint(CGPointMake(112.000000, 150.000000), CGPointMake(67.881440, 146.273011), CGPointMake(112.000000, 150.000000));
  ShapeObjectUtah.addLineToPoint(CGPointMake(121.000000, 39.000000));
  ShapeObjectUtah.addLineToPoint(CGPointMake(78.000000, 35.000000));
  ShapeObjectUtah.addLineToPoint(CGPointMake(81.000000, 8.000000));
  ShapeObjectUtah.addLineToPoint(CGPointMake(17.000000, 0.000000));
  ShapeObjectUtah.closePath;
  ShapeObjectUtah.moveToPoint(CGPointMake(17.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 275.000000, 218.000000);

  // Shape Fill
  ShapeObjectUtah.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(UtahColor.R, UtahColor.G, UtahColor.B, 1.000000)).setFill;
  ShapeObjectUtah.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectUtah.setLineWidth(3);
  ShapeObjectUtah.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectUtah.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectUtah.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectTexas
//
procedure TArtboardUSStates.DrawShapeObjectTexas(context: CGContextRef);
var
  ShapeObjectTexas : UIBezierPath;
begin
  // Shape Path
  ShapeObjectTexas := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectTexas.moveToPoint(CGPointMake(89.000000, 0.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(158.000000, 1.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(158.000000, 55.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(161.000000, 55.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(167.000000, 61.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(170.000000, 60.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(172.000000, 60.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(173.000000, 58.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(177.000000, 62.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(177.000000, 65.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(182.000000, 65.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(188.000000, 67.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(191.000000, 66.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(194.000000, 69.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(197.000000, 67.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(203.000000, 67.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(203.000000, 70.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(206.000000, 71.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(208.000000, 75.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(214.000000, 70.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(215.000000, 73.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(217.000000, 73.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(220.000000, 75.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(224.000000, 73.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(226.000000, 78.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(230.000000, 71.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(235.000000, 74.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(238.000000, 73.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(240.000000, 75.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(246.000000, 77.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(248.000000, 77.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(249.000000, 74.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(254.000000, 73.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(256.000000, 73.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(262.000000, 71.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(266.000000, 72.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(270.000000, 70.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(276.000000, 72.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(279.000000, 75.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(282.000000, 77.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(288.000000, 78.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(292.000000, 80.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(293.000000, 79.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(298.000000, 79.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(299.000000, 80.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(299.000000, 95.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(300.000000, 95.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(301.000000, 124.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(304.000000, 127.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(307.000000, 131.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(307.000000, 135.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(309.000000, 137.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(309.000000, 138.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(311.000000, 140.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(311.000000, 143.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(313.000000, 145.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(314.000000, 146.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(314.000000, 149.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(315.000000, 150.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(314.000000, 151.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(314.000000, 157.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(313.000000, 160.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(311.000000, 164.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(311.000000, 167.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(310.000000, 169.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(312.000000, 173.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(311.000000, 177.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(309.000000, 179.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(307.000000, 183.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(306.000000, 185.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(308.000000, 188.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(304.000000, 188.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(295.000000, 193.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(291.000000, 193.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(286.000000, 194.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(288.000000, 191.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(289.000000, 188.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(287.000000, 187.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(285.000000, 188.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(283.000000, 190.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(279.000000, 189.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(280.000000, 193.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(282.000000, 196.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(284.000000, 198.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(283.000000, 200.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(279.000000, 204.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(277.000000, 203.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(278.000000, 208.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(272.000000, 213.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(266.000000, 217.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(259.000000, 218.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(258.000000, 220.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(253.000000, 220.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(253.000000, 218.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(250.000000, 220.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(248.000000, 218.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(246.000000, 216.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(247.000000, 221.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(244.000000, 220.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(242.000000, 218.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(241.000000, 219.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(243.000000, 223.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(245.000000, 224.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(243.000000, 226.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(247.000000, 225.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(247.000000, 227.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(242.000000, 230.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(238.000000, 225.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(237.000000, 228.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(237.000000, 233.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(236.000000, 235.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(235.000000, 231.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(229.000000, 235.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(228.000000, 237.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(230.000000, 239.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(233.000000, 237.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(229.000000, 243.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(221.000000, 242.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(220.000000, 244.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(223.000000, 245.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(227.000000, 248.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(223.000000, 258.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(221.000000, 256.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(218.000000, 258.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(214.000000, 254.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(215.000000, 258.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(214.000000, 259.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(215.000000, 260.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(220.000000, 261.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(222.000000, 260.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(221.000000, 267.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(220.000000, 268.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(220.000000, 274.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(222.000000, 274.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(223.000000, 280.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(222.000000, 282.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(225.000000, 287.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(227.000000, 292.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(229.000000, 293.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(228.000000, 297.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(226.000000, 299.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(222.000000, 298.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(218.000000, 294.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(204.000000, 294.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(199.000000, 290.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(193.000000, 289.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(189.000000, 285.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(182.000000, 285.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(182.000000, 282.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(180.000000, 281.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(178.000000, 273.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(175.000000, 269.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(173.000000, 267.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(173.000000, 262.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(171.000000, 259.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(172.000000, 257.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(172.000000, 254.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(171.000000, 251.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(167.000000, 249.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(162.000000, 245.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(161.000000, 242.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(157.000000, 236.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(154.000000, 234.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(152.000000, 231.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(150.000000, 224.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(147.000000, 220.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(146.000000, 217.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(143.000000, 213.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(143.000000, 208.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(140.000000, 206.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(140.000000, 204.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(133.000000, 200.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(133.000000, 198.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(129.000000, 197.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(129.000000, 194.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(127.000000, 194.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(124.000000, 189.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(117.000000, 189.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(111.000000, 188.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(106.000000, 188.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(102.000000, 186.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(100.000000, 189.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(93.000000, 190.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(89.000000, 196.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(88.000000, 201.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(86.000000, 204.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(81.000000, 209.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(81.000000, 211.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(75.000000, 209.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(72.000000, 206.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(68.000000, 206.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(65.000000, 202.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(60.000000, 201.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(54.000000, 195.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(51.000000, 194.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(48.000000, 191.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(47.000000, 187.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(45.000000, 183.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(44.000000, 180.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(45.000000, 177.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(41.000000, 170.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(41.000000, 167.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(38.000000, 162.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(33.000000, 158.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(29.000000, 157.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(24.000000, 151.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(24.000000, 149.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(20.000000, 146.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(16.000000, 142.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(13.000000, 140.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(10.000000, 138.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(7.000000, 135.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(7.000000, 131.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(5.000000, 130.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(3.000000, 129.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(0.000000, 126.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(0.000000, 123.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(85.000000, 127.000000));
  ShapeObjectTexas.addLineToPoint(CGPointMake(89.000000, 0.000000));
  ShapeObjectTexas.closePath;
  ShapeObjectTexas.moveToPoint(CGPointMake(89.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 433.000000, 390.000000);

  // Shape Fill
  ShapeObjectTexas.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(TexasColor.R, TexasColor.G, TexasColor.B, 1.000000)).setFill;
  ShapeObjectTexas.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectTexas.setLineWidth(3);
  ShapeObjectTexas.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectTexas.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectTexas.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectTennessee
//
procedure TArtboardUSStates.DrawShapeObjectTennessee(context: CGContextRef);
var
  ShapeObjectTennessee : UIBezierPath;
begin
  // Shape Path
  ShapeObjectTennessee := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectTennessee.moveToPoint(CGPointMake(0.000000, 70.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(137.000000, 54.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(137.000000, 47.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(138.000000, 46.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(142.000000, 47.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(143.000000, 41.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(149.000000, 36.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(154.000000, 36.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(161.000000, 28.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(165.000000, 28.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(166.000000, 23.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(168.000000, 23.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(169.000000, 20.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(172.000000, 19.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(173.000000, 21.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(175.000000, 21.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(177.000000, 16.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(182.000000, 15.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(184.000000, 16.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(187.000000, 9.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(189.000000, 7.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(190.000000, 7.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(190.000000, 0.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(146.000000, 7.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(144.000000, 9.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(52.000000, 18.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(46.000000, 18.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(47.000000, 21.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(47.000000, 23.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(16.000000, 26.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(15.000000, 27.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(13.000000, 25.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(13.000000, 27.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(14.000000, 31.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(12.000000, 31.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(13.000000, 34.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(11.000000, 34.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(13.000000, 37.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(11.000000, 38.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(10.000000, 41.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(12.000000, 42.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(13.000000, 43.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(10.000000, 43.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(10.000000, 45.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(11.000000, 46.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(6.000000, 49.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(7.000000, 53.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(7.000000, 55.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(5.000000, 55.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(4.000000, 59.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(3.000000, 62.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(5.000000, 66.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(2.000000, 66.000000));
  ShapeObjectTennessee.addLineToPoint(CGPointMake(0.000000, 70.000000));
  ShapeObjectTennessee.closePath;
  ShapeObjectTennessee.moveToPoint(CGPointMake(0.000000, 70.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 816.000000, 353.000000);

  // Shape Fill
  ShapeObjectTennessee.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(TennesseeColor.R, TennesseeColor.G, TennesseeColor.B, 1.000000)).setFill;
  ShapeObjectTennessee.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectTennessee.setLineWidth(3);
  ShapeObjectTennessee.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectTennessee.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectTennessee.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectSouthDakota
//
procedure TArtboardUSStates.DrawShapeObjectSouthDakota(context: CGContextRef);
var
  ShapeObjectSouthDakota : UIBezierPath;
begin
  // Shape Path
  ShapeObjectSouthDakota := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectSouthDakota.moveToPoint(CGPointMake(45.258253, 81.773645));
  ShapeObjectSouthDakota.addCurveToPoint(CGPointMake(0.000000, 80.000000), CGPointMake(30.172169, 81.515764), CGPointMake(0.000000, 80.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(1.000000, 25.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(2.000000, 25.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(3.000000, 0.000000));
  ShapeObjectSouthDakota.addCurveToPoint(CGPointMake(87.000000, 1.000000), CGPointMake(3.000000, 0.000000), CGPointMake(58.711458, 1.000000));
  ShapeObjectSouthDakota.addCurveToPoint(CGPointMake(155.000000, 0.000000), CGPointMake(109.378125, 1.000000), CGPointMake(155.000000, 0.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(154.000000, 3.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(152.000000, 6.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(149.000000, 8.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(152.000000, 14.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(156.000000, 15.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(158.000000, 18.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(159.000000, 67.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(156.000000, 67.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(156.000000, 69.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(158.000000, 71.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(157.000000, 74.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(159.000000, 76.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(158.000000, 84.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(156.000000, 87.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(159.000000, 94.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(157.000000, 94.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(155.000000, 91.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(155.000000, 89.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(152.000000, 89.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(151.000000, 88.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(148.000000, 87.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(145.000000, 87.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(142.000000, 84.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(137.000000, 85.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(130.000000, 85.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(128.000000, 87.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(125.000000, 87.000000));
  ShapeObjectSouthDakota.addLineToPoint(CGPointMake(117.000000, 82.000000));
  ShapeObjectSouthDakota.addCurveToPoint(CGPointMake(45.258253, 81.773645), CGPointMake(117.000000, 82.000000), CGPointMake(69.172169, 82.182430));
  ShapeObjectSouthDakota.closePath;
  ShapeObjectSouthDakota.moveToPoint(CGPointMake(45.258253, 81.773645));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 507.000000, 128.000000);

  // Shape Fill
  ShapeObjectSouthDakota.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(SouthDakotaColor.R, SouthDakotaColor.G, SouthDakotaColor.B, 1.000000)).setFill;
  ShapeObjectSouthDakota.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectSouthDakota.setLineWidth(3);
  ShapeObjectSouthDakota.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectSouthDakota.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectSouthDakota.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectSouthCarolina
//
procedure TArtboardUSStates.DrawShapeObjectSouthCarolina(context: CGContextRef);
var
  ShapeObjectSouthCarolina : UIBezierPath;
begin
  // Shape Path
  ShapeObjectSouthCarolina := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectSouthCarolina.moveToPoint(CGPointMake(12.000000, 9.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(5.000000, 12.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(3.000000, 15.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(0.000000, 21.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(5.000000, 23.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(6.000000, 24.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(9.000000, 26.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(13.000000, 25.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(13.000000, 28.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(16.000000, 30.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(17.000000, 33.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(18.000000, 34.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(21.000000, 36.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(22.000000, 39.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(24.000000, 39.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(25.000000, 41.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(30.000000, 43.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(33.000000, 48.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(36.000000, 48.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(39.000000, 51.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(39.000000, 53.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(42.000000, 54.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(42.000000, 56.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(44.000000, 57.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(44.000000, 59.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(47.000000, 59.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(52.000000, 62.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(52.000000, 64.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(54.000000, 67.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(55.000000, 71.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(56.000000, 73.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(59.000000, 73.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(60.000000, 75.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(63.000000, 79.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(63.000000, 83.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(65.000000, 86.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(66.000000, 85.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(68.000000, 85.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(70.000000, 85.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(71.000000, 82.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(71.000000, 79.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(73.000000, 81.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(70.000000, 76.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(68.000000, 72.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(69.000000, 71.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(72.000000, 76.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(74.000000, 77.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(73.000000, 73.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(75.000000, 75.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(76.000000, 78.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(78.000000, 76.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(77.000000, 73.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(75.000000, 72.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(73.000000, 71.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(77.000000, 70.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(80.000000, 71.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(82.000000, 69.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(82.000000, 67.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(85.000000, 67.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(88.000000, 65.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(90.000000, 63.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(88.000000, 61.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(88.000000, 59.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(90.000000, 59.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(91.000000, 61.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(93.000000, 59.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(95.000000, 57.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(95.000000, 53.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(97.000000, 52.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(99.000000, 53.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(101.000000, 50.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(100.000000, 48.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(104.000000, 46.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(101.000000, 45.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(101.000000, 42.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(103.000000, 39.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(103.000000, 44.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(106.000000, 35.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(109.000000, 30.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(114.000000, 25.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(85.000000, 4.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(59.000000, 8.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(58.000000, 4.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(54.000000, 1.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(52.000000, 3.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(51.000000, 0.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(21.000000, 4.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(17.000000, 6.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(14.000000, 7.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(13.000000, 9.000000));
  ShapeObjectSouthCarolina.addLineToPoint(CGPointMake(12.000000, 9.000000));
  ShapeObjectSouthCarolina.closePath;
  ShapeObjectSouthCarolina.moveToPoint(CGPointMake(12.000000, 9.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 976.000000, 391.000000);

  // Shape Fill
  ShapeObjectSouthCarolina.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(SouthCarolinaColor.R, SouthCarolinaColor.G, SouthCarolinaColor.B, 1.000000)).setFill;
  ShapeObjectSouthCarolina.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectSouthCarolina.setLineWidth(3);
  ShapeObjectSouthCarolina.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectSouthCarolina.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectSouthCarolina.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectRhodeIsland
//
procedure TArtboardUSStates.DrawShapeObjectRhodeIsland(context: CGContextRef);
var
  ShapeObjectRhodeIsland : UIBezierPath;
begin
  // Shape Path
  ShapeObjectRhodeIsland := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectRhodeIsland.moveToPoint(CGPointMake(0.000000, 3.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(4.000000, 17.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(4.000000, 21.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(6.000000, 20.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(8.000000, 18.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(11.000000, 18.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(11.000000, 16.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(11.000000, 14.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(10.000000, 12.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(11.000000, 10.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(9.000000, 10.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(10.000000, 8.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(9.000000, 6.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(10.000000, 5.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(10.000000, 3.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(9.000000, 3.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(8.000000, 0.000000));
  ShapeObjectRhodeIsland.addLineToPoint(CGPointMake(0.000000, 3.000000));
  ShapeObjectRhodeIsland.closePath;
  ShapeObjectRhodeIsland.moveToPoint(CGPointMake(0.000000, 3.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1188.000000, 158.000000);

  // Shape Fill
  ShapeObjectRhodeIsland.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(RhodeIslandColor.R, RhodeIslandColor.G, RhodeIslandColor.B, 1.000000)).setFill;
  ShapeObjectRhodeIsland.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectRhodeIsland.setLineWidth(3);
  ShapeObjectRhodeIsland.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectRhodeIsland.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectRhodeIsland.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectPennsylvania
//
procedure TArtboardUSStates.DrawShapeObjectPennsylvania(context: CGContextRef);
var
  ShapeObjectPennsylvania : UIBezierPath;
begin
  // Shape Path
  ShapeObjectPennsylvania := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectPennsylvania.moveToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(6.000000, 59.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(11.000000, 84.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(113.000000, 64.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(114.000000, 61.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(116.000000, 59.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(121.000000, 59.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(122.000000, 57.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(125.000000, 55.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(125.000000, 53.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(132.000000, 47.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(132.000000, 45.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(126.000000, 41.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(124.000000, 41.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(123.000000, 37.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(120.000000, 38.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(119.000000, 34.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(120.000000, 31.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(121.000000, 29.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(119.000000, 27.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(119.000000, 25.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(121.000000, 23.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(123.000000, 19.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(123.000000, 17.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(126.000000, 14.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(124.000000, 12.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(121.000000, 12.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(118.000000, 12.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(116.000000, 9.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(116.000000, 7.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(116.000000, 4.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(113.000000, 2.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(111.000000, 3.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(110.000000, 1.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(107.000000, 0.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(16.000000, 19.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(15.000000, 12.000000));
  ShapeObjectPennsylvania.addLineToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectPennsylvania.closePath;
  ShapeObjectPennsylvania.moveToPoint(CGPointMake(0.000000, 22.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1006.000000, 179.000000);

  // Shape Fill
  ShapeObjectPennsylvania.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(PennsylvaniaColor.R, PennsylvaniaColor.G, PennsylvaniaColor.B, 1.000000)).setFill;
  ShapeObjectPennsylvania.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectPennsylvania.setLineWidth(3);
  ShapeObjectPennsylvania.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectPennsylvania.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectPennsylvania.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectOregon
//
procedure TArtboardUSStates.DrawShapeObjectOregon(context: CGContextRef);
var
  ShapeObjectOregon : UIBezierPath;
begin
  // Shape Path
  ShapeObjectOregon := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectOregon.moveToPoint(CGPointMake(153.000000, 139.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(161.000000, 89.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(163.000000, 85.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(163.000000, 82.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(165.000000, 80.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(163.000000, 78.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(159.000000, 77.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(160.000000, 71.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(165.000000, 65.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(169.000000, 61.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(170.000000, 58.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(174.000000, 52.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(175.000000, 50.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(180.000000, 44.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(179.000000, 39.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(173.000000, 34.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(173.000000, 31.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(131.000000, 24.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(128.000000, 26.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(119.000000, 24.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(116.000000, 25.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(107.000000, 26.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(102.000000, 27.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(97.000000, 26.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(90.000000, 27.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(89.000000, 26.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(85.000000, 27.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(84.000000, 24.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(79.000000, 22.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(73.000000, 21.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(63.000000, 24.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(60.000000, 22.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(53.000000, 20.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(53.000000, 18.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(54.000000, 11.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(52.000000, 6.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(49.000000, 3.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(46.000000, 4.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(43.000000, 4.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(42.000000, 1.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(38.000000, 2.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(36.000000, 1.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(35.000000, 3.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(32.000000, 0.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(32.000000, 5.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(30.000000, 7.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(30.000000, 11.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(31.000000, 13.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(29.000000, 15.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(30.000000, 19.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(28.000000, 19.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(22.000000, 36.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(21.000000, 39.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(22.000000, 41.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(21.000000, 43.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(20.000000, 45.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(20.000000, 47.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(18.000000, 49.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(16.000000, 58.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(14.000000, 63.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(15.000000, 65.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(13.000000, 66.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(10.000000, 71.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(12.000000, 71.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(12.000000, 74.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(10.000000, 73.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(8.000000, 76.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(7.000000, 74.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(4.000000, 81.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(1.000000, 87.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(2.000000, 91.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(1.000000, 97.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(0.000000, 103.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(0.000000, 107.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(2.000000, 111.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(90.000000, 129.000000));
  ShapeObjectOregon.addLineToPoint(CGPointMake(153.000000, 139.000000));
  ShapeObjectOregon.closePath;
  ShapeObjectOregon.moveToPoint(CGPointMake(153.000000, 139.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 76.000000, 70.000000);

  // Shape Fill
  ShapeObjectOregon.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(OregonColor.R, OregonColor.G, OregonColor.B, 1.000000)).setFill;
  ShapeObjectOregon.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectOregon.setLineWidth(3);
  ShapeObjectOregon.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectOregon.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectOregon.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectOklahoma
//
procedure TArtboardUSStates.DrawShapeObjectOklahoma(context: CGContextRef);
var
  ShapeObjectOklahoma : UIBezierPath;
begin
  // Shape Path
  ShapeObjectOklahoma := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectOklahoma.moveToPoint(CGPointMake(0.000000, 1.000000));
  ShapeObjectOklahoma.addCurveToPoint(CGPointMake(92.448682, 2.510854), CGPointMake(0.000000, 1.000000), CGPointMake(61.632455, 2.673902));
  ShapeObjectOklahoma.addCurveToPoint(CGPointMake(189.000000, 0.000000), CGPointMake(124.632455, 2.340569), CGPointMake(189.000000, 0.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(190.000000, 15.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(195.000000, 44.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(197.000000, 94.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(191.000000, 93.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(188.000000, 91.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(185.000000, 88.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(182.000000, 87.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(179.000000, 86.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(175.000000, 88.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(171.000000, 87.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(165.000000, 89.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(163.000000, 89.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(158.000000, 90.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(157.000000, 93.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(155.000000, 93.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(152.000000, 92.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(149.000000, 91.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(147.000000, 89.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(144.000000, 90.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(139.000000, 87.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(135.000000, 94.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(133.000000, 89.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(129.000000, 91.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(126.000000, 89.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(124.000000, 89.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(123.000000, 86.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(117.000000, 91.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(115.000000, 87.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(112.000000, 86.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(112.000000, 83.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(106.000000, 83.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(103.000000, 85.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(100.000000, 82.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(97.000000, 83.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(91.000000, 81.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(86.000000, 81.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(86.000000, 78.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(82.000000, 74.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(81.000000, 76.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(79.000000, 76.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(76.000000, 77.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(73.000000, 74.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(70.000000, 71.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(67.000000, 71.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(67.000000, 17.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(0.000000, 16.000000));
  ShapeObjectOklahoma.addLineToPoint(CGPointMake(0.000000, 1.000000));
  ShapeObjectOklahoma.closePath;
  ShapeObjectOklahoma.moveToPoint(CGPointMake(0.000000, 1.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 524.000000, 374.000000);

  // Shape Fill
  ShapeObjectOklahoma.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(OklahomaColor.R, OklahomaColor.G, OklahomaColor.B, 1.000000)).setFill;
  ShapeObjectOklahoma.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectOklahoma.setLineWidth(3);
  ShapeObjectOklahoma.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectOklahoma.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectOklahoma.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectOhio
//
procedure TArtboardUSStates.DrawShapeObjectOhio(context: CGContextRef);
var
  ShapeObjectOhio : UIBezierPath;
begin
  // Shape Path
  ShapeObjectOhio := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectOhio.moveToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(9.000000, 94.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(11.000000, 92.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(14.000000, 94.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(16.000000, 92.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(18.000000, 94.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(20.000000, 94.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(23.000000, 100.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(26.000000, 101.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(31.000000, 100.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(34.000000, 103.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(36.000000, 104.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(38.000000, 101.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(42.000000, 101.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(44.000000, 103.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(45.000000, 102.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(48.000000, 102.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(49.000000, 100.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(53.000000, 97.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(55.000000, 102.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(59.000000, 103.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(61.000000, 106.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(63.000000, 105.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(67.000000, 103.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(67.000000, 100.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(69.000000, 99.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(68.000000, 94.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(68.000000, 92.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(69.000000, 89.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(71.000000, 87.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(73.000000, 88.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(73.000000, 90.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(74.000000, 90.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(76.000000, 88.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(76.000000, 86.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(75.000000, 85.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(76.000000, 83.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(77.000000, 79.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(79.000000, 78.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(79.000000, 76.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(82.000000, 74.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(84.000000, 76.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(88.000000, 72.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(88.000000, 69.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(93.000000, 66.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(93.000000, 62.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(94.000000, 56.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(94.000000, 51.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(95.000000, 47.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(94.000000, 44.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(95.000000, 41.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(92.000000, 39.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(95.000000, 37.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(89.000000, 0.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(73.000000, 10.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(66.000000, 18.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(63.000000, 19.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(59.000000, 19.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(55.000000, 21.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(52.000000, 22.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(51.000000, 24.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(45.000000, 23.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(43.000000, 23.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(41.000000, 24.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(38.000000, 23.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(44.000000, 20.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(42.000000, 20.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(40.000000, 21.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(35.000000, 19.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(30.000000, 18.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(28.000000, 17.000000));
  ShapeObjectOhio.addLineToPoint(CGPointMake(0.000000, 22.000000));
  ShapeObjectOhio.closePath;
  ShapeObjectOhio.moveToPoint(CGPointMake(0.000000, 22.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 917.000000, 201.000000);

  // Shape Fill
  ShapeObjectOhio.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(OhioColor.R, OhioColor.G, OhioColor.B, 1.000000)).setFill;
  ShapeObjectOhio.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectOhio.setLineWidth(3);
  ShapeObjectOhio.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectOhio.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectOhio.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNorthDakota
//
procedure TArtboardUSStates.DrawShapeObjectNorthDakota(context: CGContextRef);
var
  ShapeObjectNorthDakota : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNorthDakota := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNorthDakota.moveToPoint(CGPointMake(77.000000, 83.000000));
  ShapeObjectNorthDakota.addCurveToPoint(CGPointMake(0.000000, 82.000000), CGPointMake(51.182129, 83.000000), CGPointMake(0.000000, 82.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(2.000000, 0.000000));
  ShapeObjectNorthDakota.addCurveToPoint(CGPointMake(58.498566, 1.421631), CGPointMake(2.000000, 0.000000), CGPointMake(39.665711, 1.281087));
  ShapeObjectNorthDakota.addCurveToPoint(CGPointMake(136.000000, 1.000000), CGPointMake(84.332377, 1.614421), CGPointMake(136.000000, 1.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(139.000000, 9.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(138.000000, 12.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(138.000000, 23.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(144.000000, 37.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(145.000000, 42.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(145.000000, 50.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(146.000000, 55.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(146.000000, 57.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(147.000000, 64.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(148.000000, 68.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(151.000000, 72.000000));
  ShapeObjectNorthDakota.addLineToPoint(CGPointMake(152.000000, 82.000000));
  ShapeObjectNorthDakota.addCurveToPoint(CGPointMake(77.000000, 83.000000), CGPointMake(152.000000, 82.000000), CGPointMake(101.848796, 83.000000));
  ShapeObjectNorthDakota.closePath;
  ShapeObjectNorthDakota.moveToPoint(CGPointMake(77.000000, 83.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 510.000000, 46.000000);

  // Shape Fill
  ShapeObjectNorthDakota.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NorthDakotaColor.R, NorthDakotaColor.G, NorthDakotaColor.B, 1.000000)).setFill;
  ShapeObjectNorthDakota.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNorthDakota.setLineWidth(3);
  ShapeObjectNorthDakota.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNorthDakota.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNorthDakota.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNorthCarolina
//
procedure TArtboardUSStates.DrawShapeObjectNorthCarolina(context: CGContextRef);
var
  ShapeObjectNorthCarolina : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNorthCarolina := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNorthCarolina.moveToPoint(CGPointMake(53.000000, 23.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(179.000000, 0.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(183.000000, 4.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(187.000000, 10.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(182.000000, 6.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(183.000000, 9.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(178.000000, 6.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(176.000000, 7.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(181.000000, 10.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(179.000000, 11.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(175.000000, 10.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(178.000000, 13.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(172.000000, 10.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(172.000000, 12.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(175.000000, 14.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(172.000000, 16.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(168.000000, 16.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(167.000000, 12.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(167.000000, 8.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(165.000000, 8.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(165.000000, 14.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(167.000000, 17.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(167.000000, 20.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(172.000000, 19.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(174.000000, 17.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(176.000000, 19.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(179.000000, 18.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(181.000000, 15.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(183.000000, 18.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(182.000000, 21.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(184.000000, 22.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(182.000000, 24.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(185.000000, 24.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(186.000000, 20.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(185.000000, 17.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(188.000000, 17.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(189.000000, 15.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(191.000000, 19.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(191.000000, 22.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(191.000000, 25.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(189.000000, 24.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(188.000000, 25.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(186.000000, 31.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(184.000000, 33.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(180.000000, 33.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(178.000000, 31.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(176.000000, 33.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(175.000000, 31.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(177.000000, 29.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(171.000000, 30.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(173.000000, 33.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(167.000000, 33.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(163.000000, 32.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(165.000000, 35.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(171.000000, 36.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(177.000000, 36.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(177.000000, 38.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(173.000000, 40.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(176.000000, 41.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(173.000000, 45.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(170.000000, 45.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(164.000000, 42.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(168.000000, 47.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(172.000000, 48.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(174.000000, 48.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(176.000000, 45.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(178.000000, 47.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(183.000000, 44.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(179.000000, 52.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(176.000000, 50.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(173.000000, 52.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(168.000000, 55.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(165.000000, 53.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(165.000000, 56.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(162.000000, 60.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(161.000000, 56.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(159.000000, 56.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(160.000000, 58.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(159.000000, 59.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(161.000000, 61.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(157.000000, 64.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(154.000000, 69.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(152.000000, 74.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(152.000000, 77.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(150.000000, 73.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(150.000000, 82.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(143.000000, 82.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(142.000000, 82.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(140.000000, 84.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(137.000000, 85.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(108.000000, 64.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(82.000000, 68.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(81.000000, 64.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(77.000000, 61.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(75.000000, 63.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(74.000000, 60.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(44.000000, 64.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(37.000000, 67.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(36.000000, 69.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(35.000000, 69.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(28.000000, 72.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(0.000000, 76.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(0.000000, 69.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(1.000000, 68.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(5.000000, 69.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(6.000000, 63.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(12.000000, 58.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(17.000000, 58.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(24.000000, 50.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(28.000000, 50.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(29.000000, 45.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(31.000000, 45.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(32.000000, 42.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(35.000000, 41.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(36.000000, 43.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(38.000000, 43.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(40.000000, 38.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(45.000000, 37.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(47.000000, 38.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(50.000000, 31.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(52.000000, 29.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(53.000000, 29.000000));
  ShapeObjectNorthCarolina.addLineToPoint(CGPointMake(53.000000, 23.000000));
  ShapeObjectNorthCarolina.closePath;
  ShapeObjectNorthCarolina.moveToPoint(CGPointMake(53.000000, 23.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 953.000000, 331.000000);

  // Shape Fill
  ShapeObjectNorthCarolina.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NorthCarolinaColor.R, NorthCarolinaColor.G, NorthCarolinaColor.B, 1.000000)).setFill;
  ShapeObjectNorthCarolina.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNorthCarolina.setLineWidth(3);
  ShapeObjectNorthCarolina.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNorthCarolina.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNorthCarolina.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewYork
//
procedure TArtboardUSStates.DrawShapeObjectNewYork(context: CGContextRef);
var
  ShapeObjectNewYork : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewYork := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewYork.moveToPoint(CGPointMake(0.000000, 102.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(1.000000, 109.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(92.000000, 90.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(95.000000, 91.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(96.000000, 93.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(98.000000, 92.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(101.000000, 94.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(101.000000, 99.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(103.000000, 102.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(109.000000, 102.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(111.000000, 104.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(129.000000, 110.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(129.000000, 109.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(128.000000, 106.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(126.000000, 104.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(126.000000, 101.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(127.000000, 101.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(128.000000, 103.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(129.000000, 105.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(130.000000, 106.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(131.000000, 114.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(134.000000, 111.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(135.000000, 109.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(133.000000, 106.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(137.000000, 101.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(135.000000, 99.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(132.000000, 79.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(131.000000, 79.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(132.000000, 59.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(131.000000, 58.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(127.000000, 40.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(127.000000, 38.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(125.000000, 36.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(124.000000, 37.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(123.000000, 38.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(123.000000, 36.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(123.000000, 32.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(122.000000, 31.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(122.000000, 30.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(121.000000, 29.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(120.000000, 26.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(119.000000, 26.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(119.000000, 21.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(120.000000, 19.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(118.000000, 16.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(117.000000, 12.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(116.000000, 10.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(116.000000, 7.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(116.000000, 5.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(115.000000, 4.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(115.000000, 0.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(87.000000, 7.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(84.000000, 7.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(79.000000, 11.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(77.000000, 14.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(71.000000, 22.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(70.000000, 24.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(70.000000, 27.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(67.000000, 30.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(60.000000, 37.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(61.000000, 38.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(64.000000, 38.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(66.000000, 38.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(67.000000, 39.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(66.000000, 41.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(64.000000, 44.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(63.000000, 44.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(65.000000, 46.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(65.000000, 48.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(67.000000, 49.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(66.000000, 50.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(66.000000, 52.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(64.000000, 53.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(62.000000, 53.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(58.000000, 58.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(57.000000, 60.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(53.000000, 62.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(52.000000, 63.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(49.000000, 63.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(46.000000, 63.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(44.000000, 64.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(40.000000, 66.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(38.000000, 66.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(36.000000, 64.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(27.000000, 65.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(25.000000, 66.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(21.000000, 66.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(9.000000, 71.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(10.000000, 73.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(10.000000, 75.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(10.000000, 76.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(14.000000, 76.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(14.000000, 78.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(13.000000, 80.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(15.000000, 82.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(15.000000, 84.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(13.000000, 87.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(11.000000, 91.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(7.000000, 94.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(5.000000, 97.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(0.000000, 102.000000));
  ShapeObjectNewYork.closePath;
  ShapeObjectNewYork.moveToPoint(CGPointMake(0.000000, 102.000000));
  ShapeObjectNewYork.moveToPoint(CGPointMake(128.000000, 120.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(127.000000, 121.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(126.000000, 124.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(128.000000, 123.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(129.000000, 121.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(128.000000, 120.000000));
  ShapeObjectNewYork.closePath;
  ShapeObjectNewYork.moveToPoint(CGPointMake(128.000000, 120.000000));
  ShapeObjectNewYork.moveToPoint(CGPointMake(130.000000, 119.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(130.000000, 120.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(131.000000, 121.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(132.000000, 120.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(133.000000, 119.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(134.000000, 118.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(136.000000, 119.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(137.000000, 118.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(145.000000, 114.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(148.000000, 114.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(148.000000, 112.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(150.000000, 112.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(154.000000, 109.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(159.000000, 108.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(160.000000, 106.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(159.000000, 105.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(158.000000, 106.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(157.000000, 105.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(161.000000, 100.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(160.000000, 99.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(156.000000, 104.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(155.000000, 105.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(150.000000, 106.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(148.000000, 106.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(147.000000, 107.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(146.000000, 107.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(146.000000, 108.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(142.000000, 109.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(141.000000, 110.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(139.000000, 109.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(139.000000, 111.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(138.000000, 110.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(137.000000, 111.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(137.000000, 113.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(135.000000, 114.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(134.000000, 115.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(132.000000, 115.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(131.000000, 116.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(130.000000, 119.000000));
  ShapeObjectNewYork.closePath;
  ShapeObjectNewYork.moveToPoint(CGPointMake(130.000000, 119.000000));
  ShapeObjectNewYork.moveToPoint(CGPointMake(161.000000, 104.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(161.000000, 105.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(162.000000, 105.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(165.000000, 103.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(166.000000, 101.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(168.000000, 101.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(171.000000, 98.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(167.000000, 100.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(166.000000, 100.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(165.000000, 100.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(163.000000, 101.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(162.000000, 102.000000));
  ShapeObjectNewYork.addLineToPoint(CGPointMake(161.000000, 104.000000));
  ShapeObjectNewYork.closePath;
  ShapeObjectNewYork.moveToPoint(CGPointMake(161.000000, 104.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1021.000000, 89.000000);

  // Shape Fill
  ShapeObjectNewYork.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NewYorkColor.R, NewYorkColor.G, NewYorkColor.B, 1.000000)).setFill;
  ShapeObjectNewYork.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewYork.setLineWidth(3);
  ShapeObjectNewYork.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewYork.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewYork.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewMexico
//
procedure TArtboardUSStates.DrawShapeObjectNewMexico(context: CGContextRef);
var
  ShapeObjectNewMexico : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewMexico := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewMexico.moveToPoint(CGPointMake(13.000000, 0.000000));
  ShapeObjectNewMexico.addCurveToPoint(CGPointMake(67.366389, 4.174680), CGPointMake(13.000000, 0.000000), CGPointMake(49.244260, 3.116453));
  ShapeObjectNewMexico.addCurveToPoint(CGPointMake(150.000000, 8.000000), CGPointMake(94.910926, 5.783120), CGPointMake(150.000000, 8.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(150.000000, 22.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(148.000000, 22.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(144.000000, 149.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(59.000000, 145.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(59.000000, 148.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(62.000000, 151.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(21.000000, 148.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(20.000000, 161.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(0.000000, 159.000000));
  ShapeObjectNewMexico.addLineToPoint(CGPointMake(13.000000, 0.000000));
  ShapeObjectNewMexico.closePath;
  ShapeObjectNewMexico.moveToPoint(CGPointMake(13.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 374.000000, 368.000000);

  // Shape Fill
  ShapeObjectNewMexico.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NewMexicoColor.R, NewMexicoColor.G, NewMexicoColor.B, 1.000000)).setFill;
  ShapeObjectNewMexico.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewMexico.setLineWidth(3);
  ShapeObjectNewMexico.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewMexico.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewMexico.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewJersey
//
procedure TArtboardUSStates.DrawShapeObjectNewJersey(context: CGContextRef);
var
  ShapeObjectNewJersey : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewJersey := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewJersey.moveToPoint(CGPointMake(7.000000, 0.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(25.000000, 6.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(26.000000, 7.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(25.000000, 11.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(25.000000, 14.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(23.000000, 15.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(22.000000, 17.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(21.000000, 20.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(22.000000, 22.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(26.000000, 23.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(28.000000, 23.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(29.000000, 28.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(28.000000, 33.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(28.000000, 36.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(28.000000, 39.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(27.000000, 40.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(28.000000, 42.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(27.000000, 46.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(26.000000, 47.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(24.000000, 47.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(26.000000, 50.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(24.000000, 50.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(24.000000, 52.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(25.000000, 53.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(23.000000, 53.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(22.000000, 55.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(20.000000, 56.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(22.000000, 57.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(20.000000, 61.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(20.000000, 62.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(19.000000, 63.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(19.000000, 65.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(17.000000, 67.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(17.000000, 65.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(17.000000, 60.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(15.000000, 60.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(13.000000, 60.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(11.000000, 61.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(10.000000, 59.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(7.000000, 59.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(6.000000, 57.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(4.000000, 57.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(1.000000, 55.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(1.000000, 52.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(0.000000, 51.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(1.000000, 48.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(1.000000, 46.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(2.000000, 46.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(4.000000, 43.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(6.000000, 41.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(6.000000, 39.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(13.000000, 33.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(13.000000, 31.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(7.000000, 27.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(5.000000, 27.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(4.000000, 23.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(1.000000, 24.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(0.000000, 20.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(1.000000, 17.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(2.000000, 15.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(0.000000, 13.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(0.000000, 11.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(2.000000, 9.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(4.000000, 5.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(4.000000, 3.000000));
  ShapeObjectNewJersey.addLineToPoint(CGPointMake(7.000000, 0.000000));
  ShapeObjectNewJersey.closePath;
  ShapeObjectNewJersey.moveToPoint(CGPointMake(7.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1125.000000, 193.000000);

  // Shape Fill
  ShapeObjectNewJersey.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NewJerseyColor.R, NewJerseyColor.G, NewJerseyColor.B, 1.000000)).setFill;
  ShapeObjectNewJersey.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewJersey.setLineWidth(3);
  ShapeObjectNewJersey.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewJersey.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewJersey.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNewHampshire
//
procedure TArtboardUSStates.DrawShapeObjectNewHampshire(context: CGContextRef);
var
  ShapeObjectNewHampshire : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNewHampshire := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNewHampshire.moveToPoint(CGPointMake(5.000000, 75.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(26.000000, 70.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(29.000000, 69.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(31.000000, 65.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(32.000000, 65.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(33.000000, 63.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(35.000000, 62.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(37.000000, 62.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(37.000000, 59.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(38.000000, 57.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(34.000000, 55.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(34.000000, 52.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(30.000000, 50.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(30.000000, 47.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(28.000000, 42.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(14.000000, 0.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(13.000000, 2.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(10.000000, 1.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(9.000000, 2.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(9.000000, 4.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(8.000000, 7.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(8.000000, 10.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(9.000000, 12.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(7.000000, 16.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(10.000000, 20.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(9.000000, 21.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(9.000000, 23.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(6.000000, 28.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(5.000000, 29.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(3.000000, 29.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(2.000000, 31.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(3.000000, 34.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(3.000000, 41.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(2.000000, 42.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(2.000000, 46.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(1.000000, 48.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(1.000000, 51.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(0.000000, 52.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(1.000000, 58.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(2.000000, 59.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(1.000000, 63.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(2.000000, 65.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(2.000000, 68.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(1.000000, 69.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(1.000000, 72.000000));
  ShapeObjectNewHampshire.addLineToPoint(CGPointMake(5.000000, 75.000000));
  ShapeObjectNewHampshire.closePath;
  ShapeObjectNewHampshire.moveToPoint(CGPointMake(5.000000, 75.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1165.000000, 70.000000);

  // Shape Fill
  ShapeObjectNewHampshire.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NewHampshireColor.R, NewHampshireColor.G, NewHampshireColor.B, 1.000000)).setFill;
  ShapeObjectNewHampshire.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNewHampshire.setLineWidth(3);
  ShapeObjectNewHampshire.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNewHampshire.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNewHampshire.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNevada
//
procedure TArtboardUSStates.DrawShapeObjectNevada(context: CGContextRef);
var
  ShapeObjectNevada : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNevada := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNevada.moveToPoint(CGPointMake(78.760244, 10.539557));
  ShapeObjectNevada.addCurveToPoint(CGPointMake(141.000000, 19.000000), CGPointMake(99.506830, 13.693038), CGPointMake(141.000000, 19.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(121.000000, 178.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(120.000000, 180.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(118.000000, 184.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(115.000000, 184.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(114.000000, 180.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(112.000000, 181.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(109.000000, 179.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(105.000000, 181.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(104.000000, 185.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(105.000000, 188.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(104.000000, 190.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(105.000000, 195.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(104.000000, 198.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(105.000000, 203.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(105.000000, 207.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(103.000000, 208.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(103.000000, 212.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(0.000000, 81.000000));
  ShapeObjectNevada.addLineToPoint(CGPointMake(15.000000, 0.000000));
  ShapeObjectNevada.addCurveToPoint(CGPointMake(78.760244, 10.539557), CGPointMake(15.000000, 0.000000), CGPointMake(57.840163, 7.359705));
  ShapeObjectNevada.closePath;
  ShapeObjectNevada.moveToPoint(CGPointMake(78.760244, 10.539557));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 151.000000, 199.000000);

  // Shape Fill
  ShapeObjectNevada.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NevadaColor.R, NevadaColor.G, NevadaColor.B, 1.000000)).setFill;
  ShapeObjectNevada.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNevada.setLineWidth(3);
  ShapeObjectNevada.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNevada.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNevada.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectNebraska
//
procedure TArtboardUSStates.DrawShapeObjectNebraska(context: CGContextRef);
var
  ShapeObjectNebraska : UIBezierPath;
begin
  // Shape Path
  ShapeObjectNebraska := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectNebraska.moveToPoint(CGPointMake(43.000000, 55.823863));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(43.000000, 84.732650));
  ShapeObjectNebraska.addCurveToPoint(CGPointMake(102.804274, 84.912844), CGPointMake(43.000000, 84.732650), CGPointMake(82.869516, 85.185064));
  ShapeObjectNebraska.addCurveToPoint(CGPointMake(189.000000, 82.738940), CGPointMake(131.536183, 84.520495), CGPointMake(189.000000, 82.738940));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(187.000000, 80.745231));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(187.000000, 78.751521));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(185.000000, 75.760957));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(182.000000, 73.767248));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(180.000000, 68.782974));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(178.000000, 67.786120));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(178.000000, 63.798701));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(176.000000, 61.804991));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(176.000000, 57.817573));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(176.000000, 49.842735));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(174.000000, 47.849026));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(176.000000, 46.852171));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(173.000000, 44.858462));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(173.000000, 41.867897));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(170.000000, 38.877333));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(171.000000, 32.896205));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(169.000000, 30.902496));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(169.000000, 27.911932));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(167.000000, 26.915077));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(166.000000, 23.924513));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(164.000000, 22.927658));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(164.000000, 18.940239));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(163.000000, 13.955966));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(159.000000, 13.955966));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(157.000000, 10.965402));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(157.000000, 8.971692));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(154.000000, 8.971692));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(153.000000, 7.974838));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(150.000000, 6.977983));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(147.000000, 6.977983));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(144.000000, 3.987419));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(139.000000, 4.984274));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(137.000000, 4.984274));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(132.000000, 4.984274));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(130.000000, 6.977983));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(127.000000, 6.977983));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(119.000000, 1.993709));
  ShapeObjectNebraska.addCurveToPoint(CGPointMake(45.478786, 1.737744), CGPointMake(119.000000, 1.993709), CGPointMake(69.985857, 2.155351));
  ShapeObjectNebraska.addCurveToPoint(CGPointMake(2.000000, 0.000000), CGPointMake(30.985857, 1.490781), CGPointMake(2.000000, 0.000000));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(0.000000, 55.823863));
  ShapeObjectNebraska.addLineToPoint(CGPointMake(43.000000, 55.823863));
  ShapeObjectNebraska.closePath;
  ShapeObjectNebraska.moveToPoint(CGPointMake(43.000000, 55.823863));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 505.000000, 208.000000);

  // Shape Fill
  ShapeObjectNebraska.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(NebraskaColor.R, NebraskaColor.G, NebraskaColor.B, 1.000000)).setFill;
  ShapeObjectNebraska.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectNebraska.setLineWidth(3);
  ShapeObjectNebraska.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectNebraska.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectNebraska.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMontana
//
procedure TArtboardUSStates.DrawShapeObjectMontana(context: CGContextRef);
var
  ShapeObjectMontana : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMontana := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMontana.moveToPoint(CGPointMake(161.382111, 125.129801));
  ShapeObjectMontana.addCurveToPoint(CGPointMake(236.000000, 128.000000), CGPointMake(184.921407, 126.753201), CGPointMake(236.000000, 128.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(239.000000, 21.000000));
  ShapeObjectMontana.addCurveToPoint(CGPointMake(163.049124, 16.943768), CGPointMake(239.000000, 21.000000), CGPointMake(202.154484, 19.725427));
  ShapeObjectMontana.addCurveToPoint(CGPointMake(97.864827, 10.787346), CGPointMake(139.663701, 15.280305), CGPointMake(115.470121, 12.435501));
  ShapeObjectMontana.addCurveToPoint(CGPointMake(4.000000, 0.000000), CGPointMake(66.576551, 7.858230), CGPointMake(4.000000, 0.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(0.000000, 25.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(4.000000, 31.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(6.000000, 36.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(5.000000, 38.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(6.000000, 41.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(5.000000, 41.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(9.000000, 46.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(12.000000, 48.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(19.000000, 57.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(18.000000, 59.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(22.000000, 63.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(24.000000, 63.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(24.000000, 66.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(30.000000, 66.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(26.000000, 78.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(24.000000, 79.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(25.000000, 87.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(22.000000, 88.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(22.000000, 94.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(26.000000, 98.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(34.000000, 92.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(36.000000, 96.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(38.000000, 104.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(42.000000, 112.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(41.000000, 116.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(44.000000, 119.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(47.000000, 119.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(49.000000, 127.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(53.000000, 131.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(55.000000, 128.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(62.000000, 130.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(64.000000, 127.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(73.000000, 128.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(74.000000, 129.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(80.000000, 129.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(82.000000, 125.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(84.000000, 125.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(89.000000, 132.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(90.000000, 131.000000));
  ShapeObjectMontana.addLineToPoint(CGPointMake(91.000000, 118.000000));
  ShapeObjectMontana.addCurveToPoint(CGPointMake(161.382111, 125.129801), CGPointMake(91.000000, 118.000000), CGPointMake(136.588074, 123.419867));
  ShapeObjectMontana.closePath;
  ShapeObjectMontana.moveToPoint(CGPointMake(161.382111, 125.129801));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 273.000000, 25.000000);

  // Shape Fill
  ShapeObjectMontana.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MontanaColor.R, MontanaColor.G, MontanaColor.B, 1.000000)).setFill;
  ShapeObjectMontana.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMontana.setLineWidth(3);
  ShapeObjectMontana.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMontana.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMontana.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMissouri
//
procedure TArtboardUSStates.DrawShapeObjectMissouri(context: CGContextRef);
var
  ShapeObjectMissouri : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMissouri := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMissouri.moveToPoint(CGPointMake(35.965225, 3.956521));
  ShapeObjectMissouri.addCurveToPoint(CGPointMake(0.000000, 5.000000), CGPointMake(23.976817, 4.637681), CGPointMake(0.000000, 5.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(2.000000, 8.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(4.000000, 13.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(7.000000, 15.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(9.000000, 18.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(9.000000, 20.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(11.000000, 22.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(16.000000, 25.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(18.000000, 24.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(20.000000, 25.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(21.000000, 28.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(19.000000, 29.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(18.000000, 31.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(16.000000, 34.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(18.000000, 36.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(21.000000, 38.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(21.000000, 40.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(23.000000, 43.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(26.000000, 43.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(28.000000, 44.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(30.000000, 105.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(31.000000, 119.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(132.000000, 112.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(135.000000, 115.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(135.000000, 117.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(130.000000, 124.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(129.000000, 125.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(129.000000, 126.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(129.000000, 127.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(143.000000, 125.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(144.000000, 122.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(146.000000, 121.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(144.000000, 118.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(146.000000, 118.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(145.000000, 115.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(147.000000, 115.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(146.000000, 111.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(146.000000, 109.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(148.000000, 111.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(149.000000, 110.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(150.000000, 107.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(150.000000, 106.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(153.000000, 108.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(154.000000, 105.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(155.000000, 102.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(154.000000, 100.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(155.000000, 96.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(153.000000, 96.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(151.000000, 94.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(151.000000, 96.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(148.000000, 95.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(148.000000, 93.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(145.000000, 89.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(145.000000, 88.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(146.000000, 85.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(146.000000, 84.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(144.000000, 82.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(144.000000, 78.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(140.000000, 76.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(138.000000, 73.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(137.000000, 73.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(133.000000, 71.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(131.000000, 70.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(123.000000, 64.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(123.000000, 60.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(126.000000, 52.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(126.000000, 49.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(127.000000, 47.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(124.000000, 44.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(120.000000, 44.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(117.000000, 47.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(115.000000, 45.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(113.000000, 40.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(113.000000, 37.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(111.000000, 34.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(105.000000, 31.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(104.000000, 29.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(98.000000, 24.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(97.000000, 22.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(96.000000, 20.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(95.000000, 18.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(93.000000, 12.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(94.000000, 8.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(95.000000, 6.000000));
  ShapeObjectMissouri.addLineToPoint(CGPointMake(88.000000, 0.000000));
  ShapeObjectMissouri.addCurveToPoint(CGPointMake(35.965225, 3.956521), CGPointMake(88.000000, 0.000000), CGPointMake(53.310150, 2.971014));
  ShapeObjectMissouri.closePath;
  ShapeObjectMissouri.moveToPoint(CGPointMake(35.965225, 3.956521));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 683.000000, 269.000000);

  // Shape Fill
  ShapeObjectMissouri.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MissouriColor.R, MissouriColor.G, MissouriColor.B, 1.000000)).setFill;
  ShapeObjectMissouri.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMissouri.setLineWidth(3);
  ShapeObjectMissouri.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMissouri.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMissouri.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMississippi
//
procedure TArtboardUSStates.DrawShapeObjectMississippi(context: CGContextRef);
var
  ShapeObjectMississippi : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMississippi := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMississippi.moveToPoint(CGPointMake(71.000000, 0.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(72.000000, 2.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(74.000000, 3.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(74.000000, 72.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(74.000000, 89.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(80.000000, 129.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(79.000000, 132.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(75.000000, 130.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(74.000000, 131.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(71.000000, 131.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(67.000000, 129.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(63.000000, 132.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(60.000000, 134.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(57.000000, 132.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(57.000000, 134.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(56.000000, 137.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(51.000000, 138.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(51.000000, 136.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(49.000000, 131.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(46.000000, 128.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(45.000000, 125.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(46.000000, 118.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(46.000000, 116.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(1.000000, 120.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(1.000000, 116.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(0.000000, 112.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(2.000000, 112.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(3.000000, 110.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(2.000000, 106.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(4.000000, 103.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(6.000000, 96.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(12.000000, 91.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(11.000000, 87.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(12.000000, 87.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(14.000000, 81.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(10.000000, 78.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(10.000000, 75.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(8.000000, 72.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(10.000000, 71.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(9.000000, 70.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(8.000000, 68.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(10.000000, 65.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(7.000000, 63.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(7.000000, 60.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(9.000000, 58.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(7.000000, 55.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(7.000000, 50.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(5.000000, 48.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(7.000000, 46.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(5.000000, 44.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(8.000000, 40.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(7.000000, 35.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(11.000000, 33.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(12.000000, 32.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(10.000000, 30.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(14.000000, 26.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(14.000000, 24.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(17.000000, 22.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(17.000000, 13.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(20.000000, 13.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(20.000000, 10.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(23.000000, 8.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(23.000000, 5.000000));
  ShapeObjectMississippi.addLineToPoint(CGPointMake(71.000000, 0.000000));
  ShapeObjectMississippi.closePath;
  ShapeObjectMississippi.moveToPoint(CGPointMake(71.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 793.000000, 418.000000);

  // Shape Fill
  ShapeObjectMississippi.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MississippiColor.R, MississippiColor.G, MississippiColor.B, 1.000000)).setFill;
  ShapeObjectMississippi.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMississippi.setLineWidth(3);
  ShapeObjectMississippi.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMississippi.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMississippi.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMinnesota
//
procedure TArtboardUSStates.DrawShapeObjectMinnesota(context: CGContextRef);
var
  ShapeObjectMinnesota : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMinnesota := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMinnesota.moveToPoint(CGPointMake(129.000000, 154.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(20.000000, 160.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(19.000000, 111.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(17.000000, 108.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(13.000000, 107.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(10.000000, 101.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(13.000000, 99.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(15.000000, 96.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(16.000000, 93.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(15.000000, 83.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(12.000000, 79.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(11.000000, 75.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(10.000000, 68.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(10.000000, 66.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(9.000000, 61.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(9.000000, 53.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(8.000000, 47.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(2.000000, 34.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(2.000000, 23.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(3.000000, 20.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(0.000000, 12.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(41.000000, 10.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(41.000000, 0.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(45.000000, 1.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(47.000000, 4.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(49.000000, 10.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(49.000000, 14.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(52.000000, 17.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(58.000000, 17.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(59.000000, 18.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(67.000000, 19.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(68.000000, 22.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(71.000000, 21.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(75.000000, 21.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(76.000000, 19.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(79.000000, 18.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(85.000000, 18.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(87.000000, 19.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(91.000000, 19.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(91.000000, 21.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(89.000000, 21.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(90.000000, 22.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(94.000000, 22.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(95.000000, 26.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(97.000000, 27.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(98.000000, 28.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(99.000000, 24.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(103.000000, 24.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(104.000000, 27.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(106.000000, 27.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(109.000000, 27.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(110.000000, 30.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(112.000000, 30.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(113.000000, 32.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(118.000000, 30.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(120.000000, 29.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(126.000000, 25.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(129.000000, 29.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(133.000000, 28.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(142.000000, 27.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(145.000000, 30.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(147.000000, 29.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(151.000000, 29.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(144.000000, 34.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(133.000000, 38.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(126.000000, 44.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(118.000000, 53.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(110.000000, 61.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(105.000000, 64.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(104.000000, 67.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(103.000000, 69.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(101.000000, 69.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(102.000000, 79.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(102.000000, 85.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(99.000000, 87.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(94.000000, 90.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(93.000000, 93.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(91.000000, 96.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(91.000000, 99.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(94.000000, 100.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(96.000000, 103.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(95.000000, 107.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(94.000000, 110.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(95.000000, 112.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(94.000000, 113.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(95.000000, 115.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(94.000000, 121.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(99.000000, 125.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(103.000000, 125.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(106.000000, 128.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(110.000000, 129.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(114.000000, 133.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(117.000000, 137.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(120.000000, 139.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(124.000000, 139.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(128.000000, 143.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(129.000000, 146.000000));
  ShapeObjectMinnesota.addLineToPoint(CGPointMake(129.000000, 154.000000));
  ShapeObjectMinnesota.closePath;
  ShapeObjectMinnesota.moveToPoint(CGPointMake(129.000000, 154.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 646.000000, 35.000000);

  // Shape Fill
  ShapeObjectMinnesota.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MississippiColor.R, MississippiColor.G, MississippiColor.B, 1.000000)).setFill;
  ShapeObjectMinnesota.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMinnesota.setLineWidth(3);
  ShapeObjectMinnesota.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMinnesota.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMinnesota.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMichigan
//
procedure TArtboardUSStates.DrawShapeObjectMichigan(context: CGContextRef);
var
  ShapeObjectMichigan : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMichigan := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMichigan.moveToPoint(CGPointMake(89.000000, 152.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(132.000000, 146.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(132.000000, 148.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(160.000000, 143.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(160.000000, 140.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(164.000000, 135.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(164.000000, 128.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(166.000000, 124.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(169.000000, 123.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(168.000000, 119.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(171.000000, 117.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(170.000000, 115.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(172.000000, 114.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(175.000000, 117.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(177.000000, 105.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(173.000000, 100.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(170.000000, 90.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(167.000000, 82.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(165.000000, 78.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(161.000000, 78.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(157.000000, 81.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(155.000000, 81.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(152.000000, 89.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(150.000000, 89.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(149.000000, 92.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(146.000000, 92.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(141.000000, 91.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(142.000000, 83.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(146.000000, 81.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(148.000000, 79.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(148.000000, 75.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(150.000000, 73.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(152.000000, 71.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(151.000000, 60.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(149.000000, 56.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(146.000000, 54.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(147.000000, 51.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(150.000000, 52.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(148.000000, 49.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(146.000000, 49.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(146.000000, 45.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(142.000000, 45.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(139.000000, 44.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(136.000000, 43.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(130.000000, 43.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(129.000000, 40.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(126.000000, 39.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(123.000000, 39.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(117.000000, 37.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(114.000000, 39.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(111.000000, 42.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(111.000000, 45.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(112.000000, 46.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(116.000000, 47.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(115.000000, 48.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(109.000000, 50.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(106.000000, 52.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(107.000000, 57.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(107.000000, 63.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(105.000000, 67.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(103.000000, 66.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(102.000000, 64.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(102.000000, 59.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(102.000000, 55.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(99.000000, 61.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(98.000000, 63.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(96.000000, 63.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(93.000000, 65.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(94.000000, 68.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(90.000000, 70.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(92.000000, 73.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(92.000000, 80.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(90.000000, 84.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(87.000000, 88.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(90.000000, 92.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(90.000000, 95.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(88.000000, 99.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(90.000000, 104.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(93.000000, 108.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(94.000000, 109.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(96.000000, 109.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(95.000000, 112.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(97.000000, 117.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(98.000000, 120.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(98.000000, 133.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(95.000000, 140.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(93.000000, 145.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(92.000000, 150.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(89.000000, 152.000000));
  ShapeObjectMichigan.closePath;
  ShapeObjectMichigan.moveToPoint(CGPointMake(89.000000, 152.000000));
  ShapeObjectMichigan.moveToPoint(CGPointMake(61.000000, 63.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(67.000000, 49.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(70.000000, 44.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(71.000000, 38.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(73.000000, 41.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(73.000000, 44.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(76.000000, 40.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(80.000000, 38.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(81.000000, 42.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(78.000000, 45.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(79.000000, 46.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(84.000000, 40.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(86.000000, 37.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(90.000000, 35.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(93.000000, 36.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(98.000000, 34.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(100.000000, 31.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(107.000000, 30.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(113.000000, 32.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(116.000000, 35.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(118.000000, 29.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(123.000000, 29.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(131.000000, 30.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(134.000000, 29.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(137.000000, 29.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(141.000000, 29.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(141.000000, 27.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(139.000000, 25.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(137.000000, 28.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(133.000000, 28.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(130.000000, 26.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(128.000000, 25.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(126.000000, 24.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(126.000000, 22.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(127.000000, 19.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(126.000000, 15.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(123.000000, 17.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(119.000000, 19.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(117.000000, 19.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(116.000000, 18.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(113.000000, 19.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(108.000000, 18.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(108.000000, 11.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(104.000000, 12.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(98.000000, 16.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(91.000000, 15.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(85.000000, 17.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(79.000000, 22.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(77.000000, 24.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(74.000000, 23.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(72.000000, 25.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(69.000000, 22.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(64.000000, 25.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(61.000000, 24.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(55.000000, 16.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(49.000000, 15.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(45.000000, 16.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(39.000000, 20.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(38.000000, 13.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(42.000000, 8.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(47.000000, 3.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(46.000000, 2.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(52.000000, 0.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(49.000000, 0.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(43.000000, 1.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(37.000000, 5.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(35.000000, 8.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(32.000000, 9.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(30.000000, 12.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(28.000000, 15.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(25.000000, 15.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(21.000000, 19.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(12.000000, 21.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(10.000000, 24.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(7.000000, 26.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(0.000000, 29.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(4.000000, 30.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(7.000000, 34.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(31.000000, 39.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(35.000000, 41.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(40.000000, 40.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(46.000000, 41.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(49.000000, 42.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(49.000000, 45.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(52.000000, 45.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(55.000000, 47.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(57.000000, 52.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(55.000000, 56.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(56.000000, 56.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(59.000000, 55.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(60.000000, 55.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(58.000000, 61.000000));
  ShapeObjectMichigan.addLineToPoint(CGPointMake(61.000000, 63.000000));
  ShapeObjectMichigan.closePath;
  ShapeObjectMichigan.moveToPoint(CGPointMake(61.000000, 63.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 785.000000, 75.000000);

  // Shape Fill
  ShapeObjectMichigan.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MichiganColor.R, MichiganColor.G, MichiganColor.B, 1.000000)).setFill;
  ShapeObjectMichigan.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMichigan.setLineWidth(3);
  ShapeObjectMichigan.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMichigan.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMichigan.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMassachusetts
//
procedure TArtboardUSStates.DrawShapeObjectMassachusetts(context: CGContextRef);
var
  ShapeObjectMassachusetts : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMassachusetts := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(0.000000, 36.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(1.000000, 36.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(14.000000, 33.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(15.000000, 34.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(36.000000, 28.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(36.000000, 29.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(44.000000, 26.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(45.000000, 29.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(46.000000, 29.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(47.000000, 29.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(47.000000, 32.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(50.000000, 33.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(51.000000, 30.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(52.000000, 30.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(52.000000, 32.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(51.000000, 34.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(52.000000, 38.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(53.000000, 39.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(54.000000, 37.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(55.000000, 36.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(56.000000, 37.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(57.000000, 35.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(57.000000, 33.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(58.000000, 33.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(60.000000, 31.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(60.000000, 29.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(62.000000, 29.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(63.000000, 31.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(63.000000, 34.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(65.000000, 34.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(66.000000, 32.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(67.000000, 31.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(70.000000, 30.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(76.000000, 27.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(76.000000, 24.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(75.000000, 23.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(74.000000, 21.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(72.000000, 18.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(71.000000, 18.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(72.000000, 20.000000));
  ShapeObjectMassachusetts.addCurveToPoint(CGPointMake(74.963903, 23.273172), CGPointMake(72.000000, 20.000000), CGPointMake(74.309269, 22.182115));
  ShapeObjectMassachusetts.addCurveToPoint(CGPointMake(75.000000, 25.000000), CGPointMake(75.309269, 23.848781), CGPointMake(75.000000, 25.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(72.000000, 26.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(71.000000, 27.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(70.000000, 28.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(68.000000, 28.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(64.000000, 28.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(63.000000, 26.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(63.000000, 23.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(61.000000, 24.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(58.000000, 23.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(59.000000, 20.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(55.000000, 16.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(53.000000, 17.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(52.000000, 18.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(50.000000, 17.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(49.000000, 16.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(49.000000, 14.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(50.000000, 13.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(50.000000, 12.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(52.000000, 11.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(51.000000, 10.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(51.000000, 8.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(55.000000, 7.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(56.000000, 5.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(54.000000, 6.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(52.000000, 5.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(51.000000, 4.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(51.000000, 2.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(49.000000, 2.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(50.000000, 0.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(48.000000, 0.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(46.000000, 1.000000));
  ShapeObjectMassachusetts.addCurveToPoint(CGPointMake(45.000000, 3.000000), CGPointMake(46.000000, 1.000000), CGPointMake(45.333333, 2.333333));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(44.000000, 3.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(42.000000, 7.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(39.000000, 8.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(18.000000, 13.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(1.000000, 16.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(0.000000, 36.000000));
  ShapeObjectMassachusetts.closePath;
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(0.000000, 36.000000));
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(62.000000, 39.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(62.000000, 41.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(64.000000, 39.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(68.000000, 38.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(65.000000, 36.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(64.000000, 38.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(62.000000, 39.000000));
  ShapeObjectMassachusetts.closePath;
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(62.000000, 39.000000));
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(75.000000, 38.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(76.000000, 39.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(78.000000, 39.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(79.000000, 38.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(78.000000, 36.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(77.000000, 38.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(75.000000, 38.000000));
  ShapeObjectMassachusetts.closePath;
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(75.000000, 38.000000));
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(50.000000, 35.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(49.000000, 37.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(50.000000, 40.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(51.000000, 39.000000));
  ShapeObjectMassachusetts.addLineToPoint(CGPointMake(50.000000, 35.000000));
  ShapeObjectMassachusetts.closePath;
  ShapeObjectMassachusetts.moveToPoint(CGPointMake(50.000000, 35.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1152.000000, 132.000000);

  // Shape Fill
  ShapeObjectMassachusetts.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MassachusettsColor.R, MassachusettsColor.G, MassachusettsColor.B, 1.000000)).setFill;
  ShapeObjectMassachusetts.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMassachusetts.setLineWidth(3);
  ShapeObjectMassachusetts.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMassachusetts.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMassachusetts.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMaryland
//
procedure TArtboardUSStates.DrawShapeObjectMaryland(context: CGContextRef);
var
  ShapeObjectMaryland : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMaryland := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMaryland.moveToPoint(CGPointMake(0.000000, 16.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(3.000000, 30.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(7.000000, 26.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(9.000000, 23.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(10.000000, 21.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(13.000000, 21.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(16.000000, 18.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(16.000000, 15.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(18.000000, 18.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(21.000000, 18.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(23.000000, 17.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(24.000000, 14.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(27.000000, 14.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(28.000000, 12.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(29.000000, 11.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(33.000000, 13.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(37.000000, 12.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(36.000000, 14.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(37.000000, 14.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(38.000000, 16.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(40.000000, 17.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(40.000000, 19.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(44.000000, 19.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(47.000000, 20.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(46.000000, 23.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(48.000000, 25.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(52.000000, 25.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(53.000000, 27.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(56.000000, 27.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(57.000000, 25.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(60.000000, 28.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(59.000000, 30.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(59.000000, 32.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(58.000000, 34.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(58.000000, 36.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(56.000000, 39.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(56.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(58.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(58.000000, 39.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(60.000000, 40.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(61.000000, 39.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(63.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(65.000000, 43.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(64.000000, 40.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(66.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(67.000000, 44.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(70.000000, 43.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(72.000000, 44.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(73.000000, 45.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(75.000000, 44.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 47.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(78.000000, 45.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(75.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(74.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(71.000000, 40.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 39.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(67.000000, 36.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(67.000000, 32.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 36.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(71.000000, 38.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(75.000000, 40.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(75.000000, 39.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(71.000000, 35.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(71.000000, 32.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 30.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 28.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 25.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(67.000000, 24.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 23.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(66.000000, 22.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 19.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(65.000000, 16.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(67.000000, 15.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(68.000000, 16.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(68.000000, 14.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(70.000000, 12.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(69.000000, 11.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(71.000000, 10.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(72.000000, 12.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(72.000000, 8.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(73.000000, 10.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(75.000000, 9.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(74.000000, 7.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(75.000000, 5.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 3.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(78.000000, 6.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(80.000000, 4.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(80.000000, 6.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(78.000000, 8.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(81.000000, 9.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(80.000000, 10.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(76.000000, 11.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(74.000000, 14.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(74.000000, 18.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(76.000000, 17.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 17.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(76.000000, 21.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(75.000000, 22.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(73.000000, 22.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(73.000000, 24.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 22.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(78.000000, 24.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 26.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(79.000000, 26.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(78.000000, 28.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 29.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(80.000000, 31.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(82.000000, 30.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(83.000000, 32.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 33.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(78.000000, 35.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(77.000000, 37.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(81.000000, 38.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(83.000000, 41.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(83.000000, 38.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(85.000000, 38.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(87.000000, 35.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(87.000000, 38.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(87.000000, 40.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(88.000000, 40.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(87.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(89.000000, 42.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(90.000000, 44.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(89.000000, 47.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(94.000000, 46.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(99.000000, 44.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(101.000000, 40.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(100.000000, 37.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(103.000000, 36.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(103.000000, 34.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(101.000000, 31.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(89.000000, 34.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(80.000000, 0.000000));
  ShapeObjectMaryland.addLineToPoint(CGPointMake(0.000000, 16.000000));
  ShapeObjectMaryland.closePath;
  ShapeObjectMaryland.moveToPoint(CGPointMake(0.000000, 16.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1039.000000, 243.000000);

  // Shape Fill
  ShapeObjectMaryland.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MarylandColor.R, MarylandColor.G, MarylandColor.B, 1.000000)).setFill;
  ShapeObjectMaryland.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMaryland.setLineWidth(3);
  ShapeObjectMaryland.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMaryland.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMaryland.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectMaine
//
procedure TArtboardUSStates.DrawShapeObjectMaine(context: CGContextRef);
var
  ShapeObjectMaine : UIBezierPath;
begin
  // Shape Path
  ShapeObjectMaine := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectMaine.moveToPoint(CGPointMake(20.000000, 4.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(11.000000, 27.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(12.000000, 34.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(10.000000, 37.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(10.000000, 39.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(9.000000, 42.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(11.000000, 43.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(10.000000, 44.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(10.000000, 48.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(12.000000, 48.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(10.000000, 52.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(10.000000, 55.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(7.000000, 59.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(6.000000, 62.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(8.000000, 64.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(7.000000, 66.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(5.000000, 65.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(5.000000, 66.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(5.000000, 70.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(2.000000, 67.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(-0.000000, 70.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(16.000000, 117.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(16.000000, 120.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(20.000000, 122.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(20.000000, 125.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(24.000000, 127.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(25.000000, 122.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(24.000000, 118.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(27.000000, 116.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(28.000000, 115.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(27.000000, 111.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(30.000000, 110.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(28.000000, 106.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(32.000000, 101.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(34.000000, 101.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(34.000000, 104.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(35.000000, 102.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(37.000000, 104.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(38.000000, 102.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(33.000000, 96.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(38.000000, 100.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(38.000000, 95.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(41.000000, 100.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(43.000000, 93.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(46.000000, 95.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(48.000000, 93.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(49.000000, 89.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(48.000000, 82.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(49.000000, 80.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(51.000000, 77.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(52.000000, 79.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(54.000000, 82.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(57.000000, 82.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(58.000000, 78.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(61.000000, 79.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(63.000000, 81.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(65.000000, 75.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(63.000000, 73.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(67.000000, 75.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(70.000000, 73.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(73.000000, 67.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(75.000000, 67.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(79.000000, 65.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(84.000000, 61.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(85.000000, 57.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(82.000000, 58.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(82.000000, 54.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(78.000000, 51.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(76.000000, 52.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(72.000000, 50.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(71.000000, 48.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(70.000000, 45.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(71.000000, 42.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(69.000000, 41.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(64.000000, 41.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(62.000000, 40.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(61.000000, 34.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(51.000000, 5.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(46.000000, 3.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(43.000000, 0.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(39.000000, 1.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(37.000000, 4.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(33.000000, 6.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(29.000000, 8.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(26.000000, 7.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(25.000000, 3.000000));
  ShapeObjectMaine.addLineToPoint(CGPointMake(20.000000, 4.000000));
  ShapeObjectMaine.closePath;
  ShapeObjectMaine.moveToPoint(CGPointMake(20.000000, 4.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1179.000000, 0.000000);

  // Shape Fill
  ShapeObjectMaine.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(MaineColor.R, MaineColor.G, MaineColor.B, 1.000000)).setFill;
  ShapeObjectMaine.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectMaine.setLineWidth(3);
  ShapeObjectMaine.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectMaine.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectMaine.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectLouisiana
//
procedure TArtboardUSStates.DrawShapeObjectLouisiana(context: CGContextRef);
var
  ShapeObjectLouisiana : UIBezierPath;
begin
  // Shape Path
  ShapeObjectLouisiana := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectLouisiana.moveToPoint(CGPointMake(0.000000, 4.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(67.000000, 0.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(70.000000, 2.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(68.000000, 5.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(69.000000, 7.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(70.000000, 8.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(68.000000, 9.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(70.000000, 12.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(70.000000, 15.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(74.000000, 18.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(72.000000, 24.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(71.000000, 24.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(72.000000, 28.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(66.000000, 33.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(64.000000, 40.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(62.000000, 43.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(63.000000, 47.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(62.000000, 49.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(60.000000, 49.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(61.000000, 53.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(61.000000, 57.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(106.000000, 53.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(106.000000, 55.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(105.000000, 62.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(106.000000, 65.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(109.000000, 68.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(111.000000, 74.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(111.000000, 75.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(108.000000, 75.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(103.000000, 74.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(100.000000, 71.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(96.000000, 71.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(91.000000, 77.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(92.000000, 80.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(96.000000, 81.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(100.000000, 82.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(106.000000, 78.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(110.000000, 78.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(109.000000, 80.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(106.000000, 81.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(107.000000, 83.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(109.000000, 83.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(111.000000, 85.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(113.000000, 83.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(115.000000, 79.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(117.000000, 83.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(118.000000, 85.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(115.000000, 85.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(113.000000, 89.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(110.000000, 88.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(111.000000, 91.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(109.000000, 92.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(116.000000, 97.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(124.000000, 99.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(128.000000, 104.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(125.000000, 107.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(122.000000, 104.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(121.000000, 105.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(118.000000, 102.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(114.000000, 101.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(113.000000, 99.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(110.000000, 100.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(107.000000, 96.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(101.000000, 94.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(98.000000, 94.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(99.000000, 96.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(102.000000, 98.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(102.000000, 101.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(102.000000, 104.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(100.000000, 107.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(98.000000, 105.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(98.000000, 103.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(94.000000, 101.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(91.000000, 102.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(89.000000, 103.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(88.000000, 107.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(81.000000, 106.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(78.000000, 106.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(73.000000, 105.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(73.000000, 103.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(77.000000, 104.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(76.000000, 102.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(73.000000, 99.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(74.000000, 96.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(73.000000, 95.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(71.000000, 98.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(67.000000, 97.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(66.000000, 96.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(65.000000, 94.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(64.000000, 95.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(63.000000, 92.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(58.000000, 93.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(58.000000, 90.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(55.000000, 90.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(51.000000, 92.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(49.000000, 93.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(52.000000, 96.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(48.000000, 99.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(38.000000, 99.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(29.000000, 94.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(23.000000, 93.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(19.000000, 94.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 96.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(9.000000, 96.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(8.000000, 94.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 93.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 90.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 88.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 86.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(12.000000, 82.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(10.000000, 78.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 76.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 73.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(13.000000, 69.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(14.000000, 66.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(14.000000, 60.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(15.000000, 59.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(14.000000, 58.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(14.000000, 55.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 52.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(11.000000, 49.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(9.000000, 47.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(9.000000, 46.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(7.000000, 44.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(7.000000, 40.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(4.000000, 36.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(1.000000, 33.000000));
  ShapeObjectLouisiana.addLineToPoint(CGPointMake(0.000000, 4.000000));
  ShapeObjectLouisiana.closePath;
  ShapeObjectLouisiana.moveToPoint(CGPointMake(0.000000, 4.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 733.000000, 481.000000);

  // Shape Fill
  ShapeObjectLouisiana.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(LouisianaColor.R, LouisianaColor.G, LouisianaColor.B, 1.000000)).setFill;
  ShapeObjectLouisiana.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectLouisiana.setLineWidth(3);
  ShapeObjectLouisiana.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectLouisiana.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectLouisiana.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectKentucky
//
procedure TArtboardUSStates.DrawShapeObjectKentucky(context: CGContextRef);
var
  ShapeObjectKentucky : UIBezierPath;
begin
  // Shape Path
  ShapeObjectKentucky := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectKentucky.moveToPoint(CGPointMake(0.000000, 86.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(31.000000, 83.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(31.000000, 81.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(30.000000, 78.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(36.000000, 78.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(128.000000, 69.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(130.000000, 67.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(141.000000, 61.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(142.000000, 58.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(147.000000, 56.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(147.000000, 54.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(149.000000, 52.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(149.000000, 49.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(156.000000, 45.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(163.000000, 36.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(163.000000, 35.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(160.000000, 35.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(155.000000, 32.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(151.000000, 27.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(150.000000, 25.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(146.000000, 21.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(147.000000, 17.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(146.000000, 14.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(144.000000, 11.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(140.000000, 10.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(138.000000, 5.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(134.000000, 8.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(133.000000, 10.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(130.000000, 10.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(129.000000, 11.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(127.000000, 9.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(123.000000, 9.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(121.000000, 12.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(119.000000, 11.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(116.000000, 8.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(111.000000, 9.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(108.000000, 8.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(107.000000, 6.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(105.000000, 2.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(103.000000, 2.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(101.000000, 0.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(99.000000, 2.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(96.000000, 0.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(93.000000, 3.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(94.000000, 5.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(94.000000, 7.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(96.000000, 8.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(96.000000, 11.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(93.000000, 11.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(88.000000, 14.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(86.000000, 13.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(82.000000, 14.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(83.000000, 19.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(81.000000, 22.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(79.000000, 22.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(79.000000, 26.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(77.000000, 27.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(75.000000, 27.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(74.000000, 31.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(74.000000, 35.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(71.000000, 37.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(68.000000, 35.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(65.000000, 34.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(64.000000, 32.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(62.000000, 35.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(60.000000, 39.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(59.000000, 42.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(57.000000, 41.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(54.000000, 39.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(51.000000, 40.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(50.000000, 41.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(48.000000, 45.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(46.000000, 43.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(41.000000, 41.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(38.000000, 43.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(37.000000, 41.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(37.000000, 44.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(36.000000, 45.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(35.000000, 43.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(33.000000, 44.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(30.000000, 43.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(30.000000, 47.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(27.000000, 47.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(26.000000, 49.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(25.000000, 52.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(27.000000, 54.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(27.000000, 56.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(19.000000, 59.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(18.000000, 62.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(20.000000, 65.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(21.000000, 67.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(19.000000, 68.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(18.000000, 68.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(11.000000, 65.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(8.000000, 65.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(6.000000, 67.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(4.000000, 70.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(5.000000, 71.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(4.000000, 72.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(6.000000, 72.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(5.000000, 76.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(6.000000, 78.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(4.000000, 84.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(1.000000, 82.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(1.000000, 83.000000));
  ShapeObjectKentucky.addLineToPoint(CGPointMake(0.000000, 86.000000));
  ShapeObjectKentucky.closePath;
  ShapeObjectKentucky.moveToPoint(CGPointMake(0.000000, 86.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 832.000000, 293.000000);

  // Shape Fill
  ShapeObjectKentucky.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(KentuckyColor.R, KentuckyColor.G, KentuckyColor.B, 1.000000)).setFill;
  ShapeObjectKentucky.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectKentucky.setLineWidth(3);
  ShapeObjectKentucky.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectKentucky.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectKentucky.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectKansas
//
procedure TArtboardUSStates.DrawShapeObjectKansas(context: CGContextRef);
var
  ShapeObjectKansas : UIBezierPath;
begin
  // Shape Path
  ShapeObjectKansas := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectKansas.moveToPoint(CGPointMake(79.304736, 1.939270));
  ShapeObjectKansas.addCurveToPoint(CGPointMake(2.000000, 1.998186), CGPointMake(53.536491, 2.291940), CGPointMake(2.000000, 1.998186));
  ShapeObjectKansas.addLineToPoint(CGPointMake(0.000000, 84.922903));
  ShapeObjectKansas.addCurveToPoint(CGPointMake(81.168935, 85.949888), CGPointMake(0.000000, 84.922903), CGPointMake(54.112623, 86.273622));
  ShapeObjectKansas.addCurveToPoint(CGPointMake(167.000000, 82.924717), CGPointMake(109.779290, 85.607560), CGPointMake(167.000000, 82.924717));
  ShapeObjectKansas.addLineToPoint(CGPointMake(165.000000, 21.980046));
  ShapeObjectKansas.addLineToPoint(CGPointMake(163.000000, 20.980953));
  ShapeObjectKansas.addLineToPoint(CGPointMake(160.000000, 20.980953));
  ShapeObjectKansas.addLineToPoint(CGPointMake(158.000000, 17.983674));
  ShapeObjectKansas.addLineToPoint(CGPointMake(158.000000, 15.985488));
  ShapeObjectKansas.addLineToPoint(CGPointMake(155.000000, 13.987302));
  ShapeObjectKansas.addLineToPoint(CGPointMake(153.000000, 11.989116));
  ShapeObjectKansas.addLineToPoint(CGPointMake(155.000000, 8.991837));
  ShapeObjectKansas.addLineToPoint(CGPointMake(156.000000, 6.993651));
  ShapeObjectKansas.addLineToPoint(CGPointMake(158.000000, 5.994558));
  ShapeObjectKansas.addLineToPoint(CGPointMake(157.000000, 2.997279));
  ShapeObjectKansas.addLineToPoint(CGPointMake(155.000000, 1.998186));
  ShapeObjectKansas.addLineToPoint(CGPointMake(153.000000, 2.997279));
  ShapeObjectKansas.addLineToPoint(CGPointMake(148.000000, 0.000000));
  ShapeObjectKansas.addCurveToPoint(CGPointMake(79.304736, 1.939270), CGPointMake(148.000000, 0.000000), CGPointMake(102.203157, 1.625878));
  ShapeObjectKansas.closePath;
  ShapeObjectKansas.moveToPoint(CGPointMake(79.304736, 1.939270));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 546.000000, 291.000000);

  // Shape Fill
  ShapeObjectKansas.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(KansasColor.R, KansasColor.G, KansasColor.B, 1.000000)).setFill;
  ShapeObjectKansas.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectKansas.setLineWidth(3);
  ShapeObjectKansas.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectKansas.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectKansas.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIowa
//
procedure TArtboardUSStates.DrawShapeObjectIowa(context: CGContextRef);
var
  ShapeObjectIowa : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIowa := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIowa.moveToPoint(CGPointMake(20.000000, 85.000000));
  ShapeObjectIowa.addCurveToPoint(CGPointMake(62.987491, 83.557529), CGPointMake(20.000000, 85.000000), CGPointMake(48.658327, 84.371686));
  ShapeObjectIowa.addCurveToPoint(CGPointMake(108.000000, 80.000000), CGPointMake(77.991661, 82.705019), CGPointMake(108.000000, 80.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(115.000000, 86.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(116.000000, 85.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(115.000000, 81.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(121.000000, 77.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(121.000000, 73.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(125.000000, 69.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(124.000000, 66.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(120.000000, 62.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(122.000000, 56.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(130.000000, 54.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(136.000000, 50.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(136.000000, 46.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(139.000000, 43.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(138.000000, 35.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(132.000000, 33.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(132.000000, 30.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(127.000000, 26.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(125.000000, 21.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(119.000000, 21.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(116.000000, 15.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(115.000000, 8.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(117.000000, 5.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(114.000000, 3.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(113.000000, 0.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(0.000000, 6.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(2.000000, 10.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(1.000000, 13.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(3.000000, 15.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(2.000000, 23.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(0.000000, 26.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(3.000000, 33.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(5.000000, 33.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(6.000000, 38.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(6.000000, 42.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(8.000000, 43.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(9.000000, 46.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(11.000000, 47.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(11.000000, 50.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(13.000000, 52.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(12.000000, 58.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(15.000000, 61.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(15.000000, 64.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(18.000000, 66.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(16.000000, 67.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(18.000000, 69.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(18.000000, 81.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(20.000000, 83.000000));
  ShapeObjectIowa.addLineToPoint(CGPointMake(20.000000, 85.000000));
  ShapeObjectIowa.closePath;
  ShapeObjectIowa.moveToPoint(CGPointMake(20.000000, 85.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 663.000000, 189.000000);

  // Shape Fill
  ShapeObjectIowa.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(IowaColor.R, IowaColor.G, IowaColor.B, 1.000000)).setFill;
  ShapeObjectIowa.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIowa.setLineWidth(3);
  ShapeObjectIowa.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIowa.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIowa.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIndiana
//
procedure TArtboardUSStates.DrawShapeObjectIndiana(context: CGContextRef);
var
  ShapeObjectIndiana : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIndiana := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIndiana.moveToPoint(CGPointMake(1.000000, 9.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(4.000000, 11.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(7.000000, 11.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(16.000000, 6.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(59.000000, 0.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(59.000000, 2.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(68.000000, 74.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(67.000000, 75.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(68.000000, 77.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(68.000000, 79.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(70.000000, 80.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(70.000000, 83.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(67.000000, 83.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(62.000000, 86.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(60.000000, 85.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(56.000000, 86.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(57.000000, 91.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(55.000000, 94.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(53.000000, 94.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(53.000000, 98.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(51.000000, 99.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(49.000000, 99.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(48.000000, 103.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(48.000000, 107.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(45.000000, 109.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(42.000000, 107.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(39.000000, 106.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(38.000000, 104.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(36.000000, 107.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(35.000000, 109.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(34.000000, 111.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(33.000000, 114.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(31.000000, 113.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(28.000000, 111.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(25.000000, 112.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(24.000000, 113.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(22.000000, 117.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(20.000000, 115.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(15.000000, 113.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(12.000000, 115.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(11.000000, 113.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(11.000000, 116.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(10.000000, 117.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(9.000000, 115.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(7.000000, 116.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(4.000000, 115.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(4.000000, 117.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(4.000000, 119.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(1.000000, 119.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(0.000000, 116.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(1.000000, 115.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(1.000000, 111.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(3.000000, 109.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(1.000000, 107.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(2.000000, 105.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(4.000000, 104.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(6.000000, 100.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(8.000000, 98.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(8.000000, 95.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(10.000000, 92.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(10.000000, 90.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(9.000000, 87.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(9.000000, 85.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(7.000000, 82.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(5.000000, 80.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(7.000000, 79.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(6.000000, 76.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(8.000000, 74.000000));
  ShapeObjectIndiana.addLineToPoint(CGPointMake(1.000000, 9.000000));
  ShapeObjectIndiana.closePath;
  ShapeObjectIndiana.moveToPoint(CGPointMake(1.000000, 9.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 858.000000, 221.000000);

  // Shape Fill
  ShapeObjectIndiana.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(IndianaColor.R, IndianaColor.G, IndianaColor.B, 1.000000)).setFill;
  ShapeObjectIndiana.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIndiana.setLineWidth(3);
  ShapeObjectIndiana.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIndiana.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIndiana.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIllinois
//
procedure TArtboardUSStates.DrawShapeObjectIllinois(context: CGContextRef);
var
  ShapeObjectIllinois : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIllinois := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIllinois.moveToPoint(CGPointMake(74.000000, 0.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(14.000000, 6.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(19.000000, 10.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(19.000000, 13.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(25.000000, 15.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(26.000000, 23.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(23.000000, 26.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(23.000000, 30.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(17.000000, 34.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(9.000000, 36.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(7.000000, 42.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(11.000000, 46.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(12.000000, 49.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(8.000000, 53.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(8.000000, 57.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(2.000000, 61.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(3.000000, 65.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(2.000000, 66.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(1.000000, 68.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(0.000000, 72.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(2.000000, 78.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(5.000000, 84.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(11.000000, 89.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(12.000000, 91.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(18.000000, 94.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(20.000000, 97.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(20.000000, 100.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(22.000000, 105.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(24.000000, 107.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(27.000000, 104.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(31.000000, 104.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(34.000000, 107.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(33.000000, 108.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(33.000000, 112.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(30.000000, 120.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(30.000000, 124.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(38.000000, 130.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(44.000000, 133.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(45.000000, 133.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(47.000000, 136.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(51.000000, 138.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(51.000000, 142.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(53.000000, 144.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(53.000000, 145.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(52.000000, 148.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(52.000000, 149.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(55.000000, 153.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(55.000000, 155.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(58.000000, 156.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(58.000000, 154.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(60.000000, 156.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(61.000000, 155.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(60.000000, 154.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(62.000000, 151.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(64.000000, 149.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(67.000000, 149.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(74.000000, 152.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(75.000000, 152.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(77.000000, 151.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(76.000000, 149.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(74.000000, 146.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(75.000000, 143.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(78.000000, 142.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(83.000000, 140.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(83.000000, 138.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(81.000000, 136.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(82.000000, 133.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(83.000000, 131.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(82.000000, 128.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(83.000000, 127.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(83.000000, 123.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(85.000000, 121.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(83.000000, 119.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(84.000000, 117.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(86.000000, 116.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(88.000000, 112.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(90.000000, 110.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(90.000000, 107.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(92.000000, 104.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(92.000000, 102.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(91.000000, 99.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(91.000000, 97.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(89.000000, 94.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(87.000000, 92.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(89.000000, 91.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(88.000000, 88.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(90.000000, 86.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(83.000000, 21.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(80.000000, 18.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(79.000000, 15.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(79.000000, 12.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(76.000000, 10.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(75.000000, 7.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(74.000000, 6.000000));
  ShapeObjectIllinois.addLineToPoint(CGPointMake(74.000000, 0.000000));
  ShapeObjectIllinois.closePath;
  ShapeObjectIllinois.moveToPoint(CGPointMake(74.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 776.000000, 209.000000);

  // Shape Fill
  ShapeObjectIllinois.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(IllinoisColor.R, IllinoisColor.G, IllinoisColor.B, 1.000000)).setFill;
  ShapeObjectIllinois.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIllinois.setLineWidth(3);
  ShapeObjectIllinois.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIllinois.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIllinois.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectIdaho
//
procedure TArtboardUSStates.DrawShapeObjectIdaho(context: CGContextRef);
var
  ShapeObjectIdaho : UIBezierPath;
begin
  // Shape Path
  ShapeObjectIdaho := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectIdaho.moveToPoint(CGPointMake(127.000000, 204.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(133.000000, 135.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(128.000000, 128.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(126.000000, 128.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(124.000000, 132.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(118.000000, 132.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(117.000000, 131.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(108.000000, 130.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(106.000000, 133.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(99.000000, 131.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(97.000000, 134.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(93.000000, 130.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(91.000000, 122.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(88.000000, 122.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(85.000000, 119.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(86.000000, 115.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(82.000000, 107.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(80.000000, 99.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(78.000000, 95.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(70.000000, 101.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(66.000000, 97.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(66.000000, 91.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(69.000000, 90.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(68.000000, 82.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(70.000000, 81.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(74.000000, 69.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(68.000000, 69.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(68.000000, 66.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(66.000000, 66.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(62.000000, 62.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(63.000000, 60.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(56.000000, 51.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(53.000000, 49.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(49.000000, 44.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(50.000000, 44.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(49.000000, 41.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(50.000000, 39.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(48.000000, 34.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(44.000000, 28.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(48.000000, 3.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(29.000000, 0.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(18.000000, 69.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(20.000000, 73.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(20.000000, 75.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(19.000000, 76.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(20.000000, 82.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(26.000000, 87.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(27.000000, 92.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(22.000000, 98.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(21.000000, 100.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(17.000000, 106.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(16.000000, 109.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(12.000000, 113.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(7.000000, 119.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(6.000000, 125.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(10.000000, 126.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(12.000000, 128.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(10.000000, 130.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(10.000000, 133.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(8.000000, 137.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(0.000000, 187.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(63.000000, 196.000000));
  ShapeObjectIdaho.addLineToPoint(CGPointMake(127.000000, 204.000000));
  ShapeObjectIdaho.closePath;
  ShapeObjectIdaho.moveToPoint(CGPointMake(127.000000, 204.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 229.000000, 22.000000);

  // Shape Fill
  ShapeObjectIdaho.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(IdahoColor.R, IdahoColor.G, IdahoColor.B, 1.000000)).setFill;
  ShapeObjectIdaho.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectIdaho.setLineWidth(3);
  ShapeObjectIdaho.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectIdaho.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectIdaho.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectHawaii
//
procedure TArtboardUSStates.DrawShapeObjectHawaii(context: CGContextRef);
var
  ShapeObjectHawaii : UIBezierPath;
begin
  // Shape Path
  ShapeObjectHawaii := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectHawaii.moveToPoint(CGPointMake(141.000000, 102.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(143.000000, 101.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(144.000000, 98.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(149.000000, 94.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(153.000000, 92.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(157.000000, 91.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(162.000000, 90.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(166.000000, 87.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(168.000000, 83.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(163.000000, 81.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(162.000000, 77.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(159.000000, 77.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(159.000000, 73.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(155.000000, 69.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(144.000000, 65.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(143.000000, 66.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(138.000000, 63.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(136.000000, 61.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(133.000000, 63.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(135.000000, 67.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(136.000000, 69.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(132.000000, 74.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(129.000000, 78.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(131.000000, 82.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(133.000000, 87.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(134.000000, 91.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(133.000000, 97.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(135.000000, 100.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(139.000000, 100.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(141.000000, 102.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(141.000000, 102.000000));
  ShapeObjectHawaii.moveToPoint(CGPointMake(5.000000, 7.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(2.000000, 10.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(0.000000, 12.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(0.000000, 14.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(1.000000, 15.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(3.000000, 12.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(6.000000, 11.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(6.000000, 8.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(5.000000, 7.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(5.000000, 7.000000));
  ShapeObjectHawaii.moveToPoint(CGPointMake(21.000000, 0.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(16.000000, 3.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(14.000000, 6.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(15.000000, 9.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(18.000000, 9.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(21.000000, 12.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(23.000000, 12.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(27.000000, 11.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(28.000000, 7.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(30.000000, 4.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(27.000000, 1.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(23.000000, 2.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(21.000000, 0.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(21.000000, 0.000000));
  ShapeObjectHawaii.moveToPoint(CGPointMake(70.000000, 17.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(74.000000, 22.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(74.000000, 26.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(78.000000, 24.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(79.000000, 27.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(80.000000, 30.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(77.000000, 30.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(72.000000, 29.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(69.000000, 27.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(69.000000, 29.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(67.000000, 30.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(64.000000, 27.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(62.000000, 24.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(61.000000, 20.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(65.000000, 21.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(70.000000, 17.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(70.000000, 17.000000));
  ShapeObjectHawaii.moveToPoint(CGPointMake(92.000000, 31.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(94.000000, 32.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(97.000000, 33.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(101.000000, 33.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(101.000000, 32.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(103.000000, 34.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(110.000000, 34.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(106.000000, 37.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(102.000000, 37.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(99.000000, 35.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(93.000000, 36.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(91.000000, 36.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(90.000000, 34.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(92.000000, 33.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(92.000000, 31.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(92.000000, 31.000000));
  ShapeObjectHawaii.moveToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(102.000000, 41.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(106.000000, 44.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(103.000000, 47.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(100.000000, 46.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(100.000000, 43.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(98.000000, 42.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(99.000000, 41.000000));
  ShapeObjectHawaii.moveToPoint(CGPointMake(113.000000, 51.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(109.000000, 52.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(109.000000, 53.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(111.000000, 54.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(114.000000, 53.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(113.000000, 51.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(113.000000, 51.000000));
  ShapeObjectHawaii.moveToPoint(CGPointMake(115.000000, 45.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(117.000000, 47.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(117.000000, 50.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(118.000000, 52.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(120.000000, 51.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(123.000000, 51.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(125.000000, 49.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(127.000000, 50.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(130.000000, 47.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(130.000000, 45.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(127.000000, 43.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(122.000000, 40.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(118.000000, 42.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(116.000000, 41.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(111.000000, 36.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(110.000000, 39.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(109.000000, 41.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(112.000000, 45.000000));
  ShapeObjectHawaii.addLineToPoint(CGPointMake(115.000000, 45.000000));
  ShapeObjectHawaii.closePath;
  ShapeObjectHawaii.moveToPoint(CGPointMake(115.000000, 45.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 496.000000, 742.000000);

  // Shape Fill
  ShapeObjectHawaii.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(HawaiiColor.R, HawaiiColor.G, HawaiiColor.B, 1.000000)).setFill;
  ShapeObjectHawaii.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectHawaii.setLineWidth(1);
  ShapeObjectHawaii.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectHawaii.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectHawaii.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectGeorgia
//
procedure TArtboardUSStates.DrawShapeObjectGeorgia(context: CGContextRef);
var
  ShapeObjectGeorgia : UIBezierPath;
begin
  // Shape Path
  ShapeObjectGeorgia := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectGeorgia.moveToPoint(CGPointMake(58.000000, 0.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(18.000000, 64.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(22.000000, 73.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(25.000000, 77.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(25.000000, 81.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(28.000000, 82.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(25.000000, 85.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(25.000000, 90.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(23.000000, 92.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(23.000000, 97.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(27.000000, 102.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(26.000000, 112.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(29.000000, 115.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(30.000000, 118.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(32.000000, 121.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(33.000000, 125.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(92.000000, 121.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(98.000000, 120.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(98.000000, 122.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(100.000000, 125.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(103.000000, 125.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(104.000000, 119.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(102.000000, 118.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(102.000000, 114.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(104.000000, 112.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(109.000000, 113.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(115.000000, 113.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(113.000000, 110.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(115.000000, 106.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(113.000000, 106.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(114.000000, 104.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(113.000000, 102.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(113.000000, 101.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(113.000000, 98.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(115.000000, 98.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(115.000000, 101.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(117.000000, 97.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(112.000000, 96.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(112.000000, 94.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(117.000000, 95.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(116.000000, 93.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(119.000000, 90.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(116.000000, 91.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(114.000000, 89.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(118.000000, 88.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(116.000000, 86.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(117.000000, 84.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(115.000000, 83.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(119.000000, 83.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(120.000000, 81.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(117.000000, 80.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(118.000000, 78.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(122.000000, 79.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(122.000000, 77.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(124.000000, 75.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(121.000000, 74.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(119.000000, 73.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(118.000000, 74.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(116.000000, 71.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(116.000000, 67.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(113.000000, 63.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(112.000000, 61.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(109.000000, 61.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(108.000000, 59.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(107.000000, 55.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(105.000000, 52.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(105.000000, 50.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(100.000000, 47.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(97.000000, 47.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(97.000000, 45.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(95.000000, 44.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(95.000000, 42.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(92.000000, 41.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(92.000000, 39.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(89.000000, 36.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(86.000000, 36.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(83.000000, 31.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(78.000000, 29.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(77.000000, 27.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(75.000000, 27.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(74.000000, 24.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(71.000000, 22.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(70.000000, 21.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(69.000000, 18.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(66.000000, 16.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(66.000000, 13.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(62.000000, 14.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(59.000000, 12.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(58.000000, 11.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(55.000000, 10.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(53.000000, 9.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(55.000000, 5.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(56.000000, 3.000000));
  ShapeObjectGeorgia.addLineToPoint(CGPointMake(58.000000, 0.000000));
  ShapeObjectGeorgia.closePath;
  ShapeObjectGeorgia.moveToPoint(CGPointMake(58.000000, 0.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 923.000000, 403.000000);

  // Shape Fill
  ShapeObjectGeorgia.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(GeorgiaColor.R, GeorgiaColor.G, GeorgiaColor.B, 1.000000)).setFill;
  ShapeObjectGeorgia.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectGeorgia.setLineWidth(3);
  ShapeObjectGeorgia.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectGeorgia.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectGeorgia.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectFlorida
//
procedure TArtboardUSStates.DrawShapeObjectFlorida(context: CGContextRef);
var
  ShapeObjectFlorida : UIBezierPath;
begin
  // Shape Path
  ShapeObjectFlorida := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectFlorida.moveToPoint(CGPointMake(63.000000, 6.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(1.000000, 13.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(0.000000, 18.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(3.000000, 21.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(6.000000, 22.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(6.000000, 26.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(7.000000, 28.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(9.000000, 28.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(7.000000, 32.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(8.000000, 33.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(13.000000, 27.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(12.000000, 24.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(15.000000, 26.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(16.000000, 24.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(18.000000, 24.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(17.000000, 26.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(20.000000, 27.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(18.000000, 28.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(27.000000, 27.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(29.000000, 24.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(31.000000, 24.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(36.000000, 23.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(39.000000, 26.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(34.000000, 27.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(42.000000, 29.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(48.000000, 32.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(45.000000, 29.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(48.000000, 27.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(49.000000, 29.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(52.000000, 26.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(53.000000, 28.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(50.000000, 31.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(52.000000, 32.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(55.000000, 32.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(57.000000, 34.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(55.000000, 35.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(52.000000, 34.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(57.000000, 37.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(60.000000, 40.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(60.000000, 43.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(63.000000, 43.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(67.000000, 41.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(71.000000, 38.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(72.000000, 40.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(79.000000, 34.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(83.000000, 34.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(79.000000, 32.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(83.000000, 29.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(86.000000, 28.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(91.000000, 28.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(95.000000, 30.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(98.000000, 30.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(102.000000, 34.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(103.000000, 36.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(107.000000, 37.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(108.000000, 41.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(110.000000, 43.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(113.000000, 44.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(115.000000, 47.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(118.000000, 49.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(124.000000, 49.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(126.000000, 54.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(129.000000, 56.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(129.000000, 60.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(130.000000, 62.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(130.000000, 72.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(128.000000, 77.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(130.000000, 79.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(129.000000, 86.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(133.000000, 89.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(134.000000, 85.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(131.000000, 83.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(132.000000, 80.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(136.000000, 82.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(136.000000, 85.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(138.000000, 82.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(139.000000, 84.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(140.000000, 86.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(136.000000, 92.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(135.000000, 96.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(138.000000, 99.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(139.000000, 102.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(142.000000, 106.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(144.000000, 109.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(147.000000, 112.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(150.000000, 112.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(146.000000, 108.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(149.000000, 108.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(153.000000, 107.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(154.000000, 108.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(152.000000, 109.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(153.000000, 116.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(154.000000, 119.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(156.000000, 118.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(156.000000, 116.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(160.000000, 113.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(160.000000, 115.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(158.000000, 117.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(156.000000, 120.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(158.000000, 121.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(159.000000, 120.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(161.000000, 124.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(162.000000, 129.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(165.000000, 133.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(173.000000, 135.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(176.000000, 137.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(176.000000, 139.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(177.000000, 140.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(180.000000, 143.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(182.000000, 147.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(187.000000, 148.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(189.000000, 150.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(187.000000, 152.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(182.000000, 149.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(182.000000, 152.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(184.000000, 154.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(189.000000, 153.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(190.000000, 151.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(194.000000, 152.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(197.000000, 148.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(200.000000, 148.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(203.000000, 143.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(201.000000, 141.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(203.000000, 134.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(204.000000, 128.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(204.000000, 123.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(204.000000, 117.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(203.000000, 116.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(203.000000, 108.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(202.000000, 102.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(200.000000, 100.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(200.000000, 98.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(196.000000, 94.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(194.000000, 94.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(193.000000, 92.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(196.000000, 93.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(194.000000, 89.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(193.000000, 88.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(189.000000, 81.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(185.000000, 75.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(180.000000, 67.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(175.000000, 60.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(173.000000, 53.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(175.000000, 52.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(176.000000, 56.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(179.000000, 56.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(170.000000, 45.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(161.000000, 33.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(155.000000, 19.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(154.000000, 17.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(152.000000, 13.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(151.000000, 8.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(148.000000, 6.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(148.000000, 3.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(150.000000, 3.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(150.000000, 1.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(142.000000, 1.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(137.000000, 0.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(135.000000, 2.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(135.000000, 6.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(137.000000, 7.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(136.000000, 13.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(133.000000, 13.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(131.000000, 10.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(131.000000, 8.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(125.000000, 9.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(66.000000, 13.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(65.000000, 9.000000));
  ShapeObjectFlorida.addLineToPoint(CGPointMake(63.000000, 6.000000));
  ShapeObjectFlorida.closePath;
  ShapeObjectFlorida.moveToPoint(CGPointMake(63.000000, 6.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 890.000000, 515.000000);

  // Shape Fill
  ShapeObjectFlorida.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(FloridaColor.R, FloridaColor.G, FloridaColor.B, 1.000000)).setFill;
  ShapeObjectFlorida.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectFlorida.setLineWidth(3);
  ShapeObjectFlorida.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectFlorida.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectFlorida.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectDelaware
//
procedure TArtboardUSStates.DrawShapeObjectDelaware(context: CGContextRef);
var
  ShapeObjectDelaware : UIBezierPath;
begin
  // Shape Path
  ShapeObjectDelaware := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectDelaware.moveToPoint(CGPointMake(9.000000, 39.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(21.000000, 36.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(23.000000, 35.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(23.000000, 34.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(22.000000, 32.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(19.000000, 33.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(20.000000, 31.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(20.000000, 29.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(22.000000, 28.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(20.000000, 27.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(18.000000, 26.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(15.000000, 24.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(15.000000, 22.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(11.000000, 20.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(11.000000, 16.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(5.000000, 11.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(5.000000, 8.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(4.000000, 7.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(4.000000, 5.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(6.000000, 3.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(7.000000, 0.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(3.000000, 0.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(1.000000, 2.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(0.000000, 5.000000));
  ShapeObjectDelaware.addLineToPoint(CGPointMake(9.000000, 39.000000));
  ShapeObjectDelaware.closePath;
  ShapeObjectDelaware.moveToPoint(CGPointMake(9.000000, 39.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1119.000000, 238.000000);

  // Shape Fill
  ShapeObjectDelaware.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(DelawareColor.R, DelawareColor.G, DelawareColor.B, 1.000000)).setFill;
  ShapeObjectDelaware.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectDelaware.setLineWidth(3);
  ShapeObjectDelaware.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectDelaware.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectDelaware.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectConnecticut
//
procedure TArtboardUSStates.DrawShapeObjectConnecticut(context: CGContextRef);
var
  ShapeObjectConnecticut : UIBezierPath;
begin
  // Shape Path
  ShapeObjectConnecticut := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectConnecticut.moveToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(3.000000, 28.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(5.000000, 30.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(1.000000, 35.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(3.000000, 36.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(6.000000, 36.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(11.000000, 30.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(14.000000, 29.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(16.000000, 26.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(18.000000, 26.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(23.000000, 24.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(28.000000, 23.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(27.000000, 21.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(30.000000, 22.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(32.000000, 21.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(35.000000, 20.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(37.000000, 19.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(39.000000, 19.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(39.000000, 15.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(35.000000, 0.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(14.000000, 6.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(13.000000, 5.000000));
  ShapeObjectConnecticut.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectConnecticut.closePath;
  ShapeObjectConnecticut.moveToPoint(CGPointMake(0.000000, 8.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 1153.000000, 160.000000);

  // Shape Fill
  ShapeObjectConnecticut.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(ConnecticutColor.R, ConnecticutColor.G, ConnecticutColor.B, 1.000000)).setFill;
  ShapeObjectConnecticut.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectConnecticut.setLineWidth(3);
  ShapeObjectConnecticut.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectConnecticut.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectConnecticut.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectColorado
//
procedure TArtboardUSStates.DrawShapeObjectColorado(context: CGContextRef);
var
  ShapeObjectColorado : UIBezierPath;
begin
  // Shape Path
  ShapeObjectColorado := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectColorado.moveToPoint(CGPointMake(91.000000, 6.000000));
  ShapeObjectColorado.addCurveToPoint(CGPointMake(9.000000, 0.000000), CGPointMake(66.690092, 4.880465), CGPointMake(9.000000, 0.000000));
  ShapeObjectColorado.addLineToPoint(CGPointMake(0.000000, 111.000000));
  ShapeObjectColorado.addCurveToPoint(CGPointMake(60.537121, 115.398094), CGPointMake(0.000000, 111.000000), CGPointMake(38.024747, 114.265396));
  ShapeObjectColorado.addCurveToPoint(CGPointMake(159.000000, 119.000000), CGPointMake(91.024747, 116.932063), CGPointMake(159.000000, 119.000000));
  ShapeObjectColorado.addLineToPoint(CGPointMake(161.000000, 7.000000));
  ShapeObjectColorado.addCurveToPoint(CGPointMake(91.000000, 6.000000), CGPointMake(161.000000, 7.000000), CGPointMake(117.356759, 7.213798));
  ShapeObjectColorado.closePath;
  ShapeObjectColorado.moveToPoint(CGPointMake(91.000000, 6.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 387.000000, 257.000000);

  // Shape Fill
  ShapeObjectColorado.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(ColoradoColor.R, ColoradoColor.G, ColoradoColor.B, 1.000000)).setFill;
  ShapeObjectColorado.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectColorado.setLineWidth(3);
  ShapeObjectColorado.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectColorado.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectColorado.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectCalifornia
//
procedure TArtboardUSStates.DrawShapeObjectCalifornia(context: CGContextRef);
var
  ShapeObjectCalifornia : UIBezierPath;
begin
  // Shape Path
  ShapeObjectCalifornia := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectCalifornia.moveToPoint(CGPointMake(101.000000, 18.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(13.000000, 0.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(13.000000, 3.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(11.000000, 6.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(13.000000, 8.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(13.000000, 17.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(9.000000, 25.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(9.000000, 27.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(8.000000, 31.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(9.000000, 32.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(6.000000, 33.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(5.000000, 35.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(3.000000, 36.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(0.000000, 41.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(0.000000, 46.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(4.000000, 52.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(5.000000, 54.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(8.000000, 60.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(8.000000, 69.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(5.000000, 74.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(6.000000, 77.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(7.000000, 84.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(5.000000, 85.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(12.000000, 97.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(16.000000, 101.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(16.000000, 105.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(18.000000, 108.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(20.000000, 112.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(20.000000, 114.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(17.000000, 110.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(17.000000, 112.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(21.000000, 118.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(22.000000, 118.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(25.000000, 121.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(27.000000, 113.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(30.000000, 112.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(34.000000, 116.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(36.000000, 115.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(38.000000, 114.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(39.000000, 116.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(41.000000, 117.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(44.000000, 117.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(47.000000, 118.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(50.000000, 121.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(49.000000, 121.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(46.000000, 119.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(44.000000, 120.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(41.000000, 119.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(36.000000, 117.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(34.000000, 118.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(32.000000, 116.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(29.000000, 118.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(29.000000, 119.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(30.000000, 121.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(30.000000, 123.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(32.000000, 125.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(32.000000, 129.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(32.000000, 132.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(34.000000, 133.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(33.000000, 134.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(30.000000, 132.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(27.000000, 128.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(27.000000, 126.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(27.000000, 123.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(25.000000, 123.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(24.000000, 125.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(25.000000, 127.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(24.000000, 130.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(25.000000, 134.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(24.000000, 138.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(27.000000, 144.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(30.000000, 147.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(34.000000, 148.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(36.000000, 152.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(35.000000, 156.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(32.000000, 158.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(31.000000, 158.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(31.000000, 166.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(32.000000, 168.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(35.000000, 171.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(36.000000, 175.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(38.000000, 176.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(38.000000, 180.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(40.000000, 183.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(40.000000, 186.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(44.000000, 188.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(45.000000, 192.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(49.000000, 194.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(49.000000, 197.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(47.000000, 199.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(48.000000, 201.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(52.000000, 203.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(52.000000, 206.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(51.000000, 210.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(51.000000, 214.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(51.000000, 217.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(49.000000, 219.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(52.000000, 220.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(53.000000, 223.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(60.000000, 223.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(61.000000, 225.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(64.000000, 225.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(66.000000, 227.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(69.000000, 228.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(72.000000, 227.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(78.000000, 232.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(80.000000, 237.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(87.000000, 241.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(89.000000, 242.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(95.000000, 242.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(98.000000, 246.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(97.000000, 251.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(99.000000, 252.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(101.000000, 251.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(104.000000, 252.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(108.000000, 257.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(114.000000, 264.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(117.000000, 267.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(119.000000, 273.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(120.000000, 278.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(119.000000, 282.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(120.000000, 284.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(122.000000, 286.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(122.000000, 289.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(178.000000, 293.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(179.000000, 292.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(182.000000, 293.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(183.000000, 293.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(184.000000, 291.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(185.000000, 289.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(185.000000, 285.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(181.000000, 284.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(180.000000, 282.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(181.000000, 279.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(181.000000, 273.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(184.000000, 273.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(186.000000, 269.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(187.000000, 265.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(188.000000, 261.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(188.000000, 259.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(190.000000, 257.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(191.000000, 255.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(195.000000, 253.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(198.000000, 250.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(193.000000, 245.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(192.000000, 239.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(190.000000, 235.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(189.000000, 233.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(189.000000, 230.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(86.000000, 99.000000));
  ShapeObjectCalifornia.addLineToPoint(CGPointMake(101.000000, 18.000000));
  ShapeObjectCalifornia.closePath;
  ShapeObjectCalifornia.moveToPoint(CGPointMake(101.000000, 18.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 65.000000, 181.000000);

  // Shape Fill
  ShapeObjectCalifornia.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(CaliforniaColor.R, CaliforniaColor.G, CaliforniaColor.B, 1.000000)).setFill;
  ShapeObjectCalifornia.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectCalifornia.setLineWidth(3);
  ShapeObjectCalifornia.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectCalifornia.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectCalifornia.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectArkansas
//
procedure TArtboardUSStates.DrawShapeObjectArkansas(context: CGContextRef);
var
  ShapeObjectArkansas : UIBezierPath;
begin
  // Shape Path
  ShapeObjectArkansas := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectArkansas.moveToPoint(CGPointMake(7.000000, 87.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(5.000000, 37.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(0.000000, 8.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(101.000000, 0.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(104.000000, 3.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(104.000000, 5.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(99.000000, 12.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(98.000000, 13.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(98.000000, 15.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(112.000000, 13.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(114.000000, 14.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(115.000000, 15.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(112.000000, 15.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(112.000000, 17.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(113.000000, 18.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(108.000000, 21.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(109.000000, 25.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(109.000000, 27.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(107.000000, 27.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(106.000000, 31.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(105.000000, 34.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(107.000000, 38.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(104.000000, 38.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(102.000000, 42.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(102.000000, 45.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(99.000000, 47.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(99.000000, 50.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(96.000000, 50.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(96.000000, 59.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(93.000000, 61.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(93.000000, 63.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(89.000000, 67.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(91.000000, 69.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(90.000000, 70.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(86.000000, 72.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(87.000000, 77.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(84.000000, 81.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(86.000000, 83.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(84.000000, 85.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(86.000000, 87.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(86.000000, 92.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(88.000000, 95.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(86.000000, 97.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(86.000000, 100.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(18.000000, 104.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(18.000000, 89.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(17.000000, 88.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(12.000000, 88.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(11.000000, 89.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(9.000000, 88.000000));
  ShapeObjectArkansas.addLineToPoint(CGPointMake(7.000000, 87.000000));
  ShapeObjectArkansas.closePath;
  ShapeObjectArkansas.moveToPoint(CGPointMake(7.000000, 87.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 714.000000, 381.000000);

  // Shape Fill
  ShapeObjectArkansas.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(ArkansasColor.R, ArkansasColor.G, ArkansasColor.B, 1.000000)).setFill;
  ShapeObjectArkansas.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectArkansas.setLineWidth(3);
  ShapeObjectArkansas.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectArkansas.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectArkansas.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectArizona
//
procedure TArtboardUSStates.DrawShapeObjectArizona(context: CGContextRef);
var
  ShapeObjectArizona : UIBezierPath;
begin
  // Shape Path
  ShapeObjectArizona := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectArizona.moveToPoint(CGPointMake(76.043977, 5.397569));
  ShapeObjectArizona.addCurveToPoint(CGPointMake(147.000000, 12.000000), CGPointMake(99.695985, 7.931713), CGPointMake(147.000000, 12.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(134.000000, 171.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(86.000000, 167.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(0.000000, 124.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(1.000000, 121.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(3.000000, 118.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(4.000000, 117.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(7.000000, 118.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(8.000000, 118.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(10.000000, 114.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(10.000000, 110.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(6.000000, 109.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(5.000000, 107.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(6.000000, 104.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(6.000000, 98.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(9.000000, 98.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(11.000000, 94.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(13.000000, 86.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(13.000000, 84.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(15.000000, 82.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(16.000000, 80.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(20.000000, 78.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(23.000000, 75.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(18.000000, 70.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(17.000000, 64.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(14.000000, 58.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(14.000000, 51.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(16.000000, 50.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(16.000000, 46.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(15.000000, 41.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(16.000000, 38.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(15.000000, 33.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(16.000000, 31.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(15.000000, 28.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(16.000000, 24.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(20.000000, 22.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(23.000000, 24.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(25.000000, 23.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(26.000000, 27.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(29.000000, 27.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(32.000000, 21.000000));
  ShapeObjectArizona.addLineToPoint(CGPointMake(35.000000, 0.000000));
  ShapeObjectArizona.addCurveToPoint(CGPointMake(76.043977, 5.397569), CGPointMake(35.000000, 0.000000), CGPointMake(62.362652, 3.931713));
  ShapeObjectArizona.closePath;
  ShapeObjectArizona.moveToPoint(CGPointMake(76.043977, 5.397569));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 240.000000, 356.000000);

  // Shape Fill
  ShapeObjectArizona.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(ArizonaColor.R, ArizonaColor.G, ArizonaColor.B, 1.000000)).setFill;
  ShapeObjectArizona.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectArizona.setLineWidth(3);
  ShapeObjectArizona.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectArizona.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectArizona.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectAlaska
//
procedure TArtboardUSStates.DrawShapeObjectAlaska(context: CGContextRef);
var
  ShapeObjectAlaska : UIBezierPath;
begin
  // Shape Path
  ShapeObjectAlaska := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectAlaska.moveToPoint(CGPointMake(348.000000, 140.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(324.000000, 16.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(322.000000, 17.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(318.000000, 15.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(315.000000, 13.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(311.000000, 13.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(307.000000, 14.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(305.000000, 15.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(301.000000, 15.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(299.000000, 14.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(294.000000, 14.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(290.000000, 13.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(287.000000, 12.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(284.000000, 10.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(279.000000, 12.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(278.000000, 11.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(274.000000, 13.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(271.000000, 12.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(271.000000, 10.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(268.000000, 9.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(270.000000, 7.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(265.000000, 6.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(261.000000, 7.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(258.000000, 7.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(259.000000, 5.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(257.000000, 3.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(254.000000, 8.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(252.000000, 5.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(255.000000, 3.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(250.000000, 0.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(247.000000, 3.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(243.000000, 6.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(237.000000, 6.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(234.000000, 8.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(231.000000, 11.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(227.000000, 13.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(225.000000, 12.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(220.000000, 18.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(217.000000, 22.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(216.000000, 25.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(213.000000, 28.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(207.000000, 28.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(202.000000, 27.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(201.000000, 32.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(199.000000, 34.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(203.000000, 39.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(209.000000, 45.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(211.000000, 49.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(210.000000, 52.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(216.000000, 55.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(221.000000, 55.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(222.000000, 56.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(220.000000, 58.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(220.000000, 61.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(222.000000, 61.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(225.000000, 61.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(228.000000, 62.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(228.000000, 65.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(225.000000, 65.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(223.000000, 62.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(219.000000, 63.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(222.000000, 64.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(223.000000, 67.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(221.000000, 66.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(219.000000, 69.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(215.000000, 68.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(213.000000, 67.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(208.000000, 66.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(207.000000, 64.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(210.000000, 60.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(206.000000, 59.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(203.000000, 61.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(200.000000, 61.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(198.000000, 62.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(199.000000, 64.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(195.000000, 63.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(190.000000, 66.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(184.000000, 67.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(186.000000, 71.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(193.000000, 75.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(190.000000, 77.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(191.000000, 80.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(190.000000, 83.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(194.000000, 86.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(199.000000, 87.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(202.000000, 86.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(207.000000, 87.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(208.000000, 89.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(211.000000, 90.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(213.000000, 87.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(218.000000, 85.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(221.000000, 84.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(223.000000, 87.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(221.000000, 90.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(218.000000, 90.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(220.000000, 93.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(221.000000, 99.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(219.000000, 103.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(213.000000, 104.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(211.000000, 101.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(210.000000, 104.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(206.000000, 107.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(204.000000, 107.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(201.000000, 104.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(198.000000, 106.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(195.000000, 109.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(195.000000, 113.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(192.000000, 114.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(188.000000, 119.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(188.000000, 121.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(185.000000, 122.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(187.000000, 124.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(185.000000, 125.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(186.000000, 128.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(187.000000, 132.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(189.000000, 131.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(191.000000, 134.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(200.000000, 137.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(200.000000, 139.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(198.000000, 140.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(196.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(194.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(191.000000, 136.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(187.000000, 139.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(191.000000, 144.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(194.000000, 149.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(197.000000, 151.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(202.000000, 149.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(205.000000, 147.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(206.000000, 143.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(206.000000, 147.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(208.000000, 154.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(209.000000, 157.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(207.000000, 159.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(208.000000, 163.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(206.000000, 168.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(209.000000, 169.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(218.000000, 163.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(219.000000, 166.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(222.000000, 167.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(227.000000, 173.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(229.000000, 172.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(228.000000, 167.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(231.000000, 164.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(231.000000, 169.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(232.000000, 171.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(241.000000, 167.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(243.000000, 165.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(239.000000, 171.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(236.000000, 176.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(239.000000, 177.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(236.000000, 178.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(236.000000, 184.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(236.000000, 187.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(234.000000, 186.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(229.000000, 190.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(228.000000, 192.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(227.000000, 196.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(225.000000, 195.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(219.000000, 198.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(213.000000, 202.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(212.000000, 205.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(214.000000, 208.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(211.000000, 207.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(207.000000, 204.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(201.000000, 206.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(196.000000, 211.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(192.000000, 213.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(190.000000, 215.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(186.000000, 214.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(183.000000, 216.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(180.000000, 215.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(178.000000, 218.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(177.000000, 219.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(178.000000, 222.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(181.000000, 221.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(183.000000, 220.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(187.000000, 221.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(191.000000, 217.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(194.000000, 217.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(196.000000, 215.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(199.000000, 215.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(203.000000, 211.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(205.000000, 209.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(207.000000, 210.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(205.000000, 213.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(209.000000, 211.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(209.000000, 214.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(211.000000, 216.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(212.000000, 214.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(211.000000, 211.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(215.000000, 209.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(220.000000, 207.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(225.000000, 206.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(228.000000, 202.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(230.000000, 199.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(236.000000, 197.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(239.000000, 194.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(243.000000, 193.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(244.000000, 189.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(248.000000, 185.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(253.000000, 183.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(255.000000, 179.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(260.000000, 178.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(261.000000, 173.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(266.000000, 170.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(267.000000, 168.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(263.000000, 165.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(260.000000, 166.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(262.000000, 161.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(265.000000, 157.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(268.000000, 157.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(271.000000, 152.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(269.000000, 149.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(273.000000, 147.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(276.000000, 142.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(278.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(280.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(283.000000, 135.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(287.000000, 135.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(292.000000, 139.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(287.000000, 140.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(285.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(281.000000, 143.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(279.000000, 143.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(280.000000, 147.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(277.000000, 152.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(277.000000, 157.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(279.000000, 158.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(282.000000, 156.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(276.000000, 161.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(276.000000, 164.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(281.000000, 163.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(284.000000, 161.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(287.000000, 157.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(294.000000, 151.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(299.000000, 152.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(301.000000, 146.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(298.000000, 142.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(301.000000, 136.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(302.000000, 139.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(307.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(312.000000, 139.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(317.000000, 142.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(312.000000, 145.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(320.000000, 145.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(323.000000, 141.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(323.000000, 145.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(329.000000, 147.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(334.000000, 146.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(340.000000, 145.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(345.000000, 145.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(348.000000, 146.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(353.000000, 148.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(357.000000, 144.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(360.000000, 143.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(360.000000, 147.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(358.000000, 149.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(367.000000, 152.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(375.000000, 156.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(380.000000, 159.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(383.000000, 160.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(387.000000, 158.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(382.000000, 153.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(386.000000, 151.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(389.000000, 156.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(392.000000, 157.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(394.000000, 158.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(386.000000, 145.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(396.000000, 155.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(398.000000, 159.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(396.000000, 159.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(393.000000, 159.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(387.000000, 160.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(386.000000, 165.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(390.000000, 169.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(395.000000, 174.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(401.000000, 180.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(406.000000, 183.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(402.000000, 174.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(397.000000, 168.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(402.000000, 172.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(406.000000, 166.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(402.000000, 160.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(407.000000, 162.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(410.000000, 167.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(413.000000, 170.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(408.000000, 171.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(405.000000, 174.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(409.000000, 180.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(411.000000, 183.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(413.000000, 179.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(417.000000, 174.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(418.000000, 180.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(416.000000, 187.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(421.000000, 194.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(425.000000, 198.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(427.000000, 194.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(431.000000, 195.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(428.000000, 190.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(420.000000, 182.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(420.000000, 178.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(425.000000, 183.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(430.000000, 187.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(435.000000, 192.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(435.000000, 185.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(440.000000, 192.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(443.000000, 184.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(440.000000, 178.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(439.000000, 174.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(435.000000, 174.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(426.000000, 171.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(422.000000, 171.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(418.000000, 165.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(405.000000, 153.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(401.000000, 149.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(396.000000, 147.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(391.000000, 143.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(387.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(381.000000, 142.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(381.000000, 148.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(376.000000, 152.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(374.000000, 148.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(364.000000, 143.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(361.000000, 141.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(361.000000, 136.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(356.000000, 138.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(355.000000, 140.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(351.000000, 140.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(348.000000, 140.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(348.000000, 140.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(5.000000, 185.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(3.000000, 182.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(0.000000, 181.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(0.000000, 183.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(2.000000, 184.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(5.000000, 185.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(5.000000, 185.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(37.000000, 214.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(37.000000, 216.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(39.000000, 216.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(37.000000, 214.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(37.000000, 214.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(31.000000, 209.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(29.000000, 211.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(27.000000, 213.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(32.000000, 212.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(31.000000, 209.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(31.000000, 209.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(38.000000, 219.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(41.000000, 223.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(42.000000, 225.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(40.000000, 224.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(37.000000, 220.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(38.000000, 219.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(38.000000, 219.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(47.000000, 218.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(45.000000, 218.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(45.000000, 220.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(48.000000, 219.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(47.000000, 218.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(47.000000, 218.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(66.000000, 228.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(64.000000, 226.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(63.000000, 226.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(64.000000, 229.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(66.000000, 228.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(66.000000, 228.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(81.000000, 232.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(77.000000, 232.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(76.000000, 229.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(73.000000, 231.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(71.000000, 233.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(77.000000, 233.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(81.000000, 232.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(81.000000, 232.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(104.000000, 236.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(101.000000, 235.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(98.000000, 234.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(99.000000, 231.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(95.000000, 231.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(92.000000, 233.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(85.000000, 232.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(88.000000, 234.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(94.000000, 234.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(100.000000, 236.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(104.000000, 236.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(104.000000, 236.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(125.000000, 234.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(124.000000, 236.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(127.000000, 236.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(125.000000, 234.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(125.000000, 234.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(134.000000, 233.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(132.000000, 233.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(131.000000, 233.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(133.000000, 235.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(134.000000, 233.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(134.000000, 233.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(149.000000, 228.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(146.000000, 229.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(146.000000, 231.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(143.000000, 231.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(141.000000, 234.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(138.000000, 236.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(144.000000, 234.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(146.000000, 232.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(151.000000, 231.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(149.000000, 228.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(149.000000, 228.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(161.000000, 224.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(157.000000, 224.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(157.000000, 227.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(156.000000, 230.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(152.000000, 231.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(154.000000, 233.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(159.000000, 232.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(161.000000, 229.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(165.000000, 228.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(163.000000, 226.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(161.000000, 224.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(161.000000, 224.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(170.000000, 222.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(168.000000, 224.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(166.000000, 223.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(167.000000, 226.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(170.000000, 225.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(174.000000, 227.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(176.000000, 225.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(171.000000, 224.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(170.000000, 222.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(170.000000, 222.000000));
  ShapeObjectAlaska.moveToPoint(CGPointMake(273.000000, 171.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(272.000000, 175.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(277.000000, 175.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(278.000000, 177.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(273.000000, 178.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(271.000000, 180.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(274.000000, 180.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(273.000000, 185.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(275.000000, 185.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(273.000000, 188.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(268.000000, 186.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(272.000000, 189.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(269.000000, 189.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(269.000000, 191.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(266.000000, 194.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(264.000000, 194.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(261.000000, 197.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(262.000000, 200.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(257.000000, 200.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(261.000000, 195.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(258.000000, 194.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(257.000000, 190.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(256.000000, 187.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(260.000000, 185.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(263.000000, 187.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(261.000000, 182.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(265.000000, 182.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(266.000000, 179.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(270.000000, 176.000000));
  ShapeObjectAlaska.addLineToPoint(CGPointMake(273.000000, 171.000000));
  ShapeObjectAlaska.closePath;
  ShapeObjectAlaska.moveToPoint(CGPointMake(273.000000, 171.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.000000, 554.000000);

  // Shape Fill
  ShapeObjectAlaska.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(AlaskaColor.R, AlaskaColor.G, AlaskaColor.B, 1.000000)).setFill;
  ShapeObjectAlaska.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectAlaska.setLineWidth(1);
  ShapeObjectAlaska.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectAlaska.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectAlaska.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

//
// ShapeObjectAlabama
//
procedure TArtboardUSStates.DrawShapeObjectAlabama(context: CGContextRef);
var
  ShapeObjectAlabama : UIBezierPath;
begin
  // Shape Path
  ShapeObjectAlabama := TUIBezierPath.Wrap(TUIBezierPath.OCClass.bezierPath);
  ShapeObjectAlabama.moveToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(1.000000, 9.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(3.000000, 10.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(3.000000, 96.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(9.000000, 136.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(13.000000, 136.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(15.000000, 138.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(16.000000, 138.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(16.000000, 132.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(17.000000, 126.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(21.000000, 129.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(20.000000, 133.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(22.000000, 135.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(26.000000, 139.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(29.000000, 138.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(28.000000, 136.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(30.000000, 136.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(33.000000, 132.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(32.000000, 130.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(32.000000, 126.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(29.000000, 125.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(26.000000, 122.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(27.000000, 117.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(89.000000, 110.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(88.000000, 107.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(85.000000, 104.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(86.000000, 94.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(82.000000, 89.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(82.000000, 84.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(84.000000, 82.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(84.000000, 77.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(87.000000, 74.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(84.000000, 73.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(84.000000, 69.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(81.000000, 65.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(77.000000, 56.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(59.000000, 0.000000));
  ShapeObjectAlabama.addLineToPoint(CGPointMake(0.000000, 7.000000));
  ShapeObjectAlabama.closePath;
  ShapeObjectAlabama.moveToPoint(CGPointMake(0.000000, 7.000000));

  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 864.000000, 411.000000);

  // Shape Fill
  ShapeObjectAlabama.setUsesEvenOddFillRule(True);
  CGContextSaveGState(context);
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(AlabamaColor.R, AlabamaColor.G, AlabamaColor.B, 1.000000)).setFill;
  ShapeObjectAlabama.fill;
  CGContextRestoreGState(context);

  // Shape Stroke
  CGContextSaveGState(context);
  ShapeObjectAlabama.setLineWidth(3);
  ShapeObjectAlabama.setLineJoinStyle(1 {kCGLineJoinRound});
  ShapeObjectAlabama.setLineCapStyle(1 {kCGLineCapRound});
  TUIColor.Wrap(TUIColor.OCClass.colorWithRed(1.000000, 1.000000, 1.000000, 1.000000)).setStroke;
  ShapeObjectAlabama.stroke;

  CGContextRestoreGState(context);
  CGContextRestoreGState(context);

End;

function TArtboardUSStates.GenerateArtboardUSStatesBitmap: TBitmap;
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

procedure TArtboardUSStates.SetArtboardUSStatesFillMode(const Value: TArtboardUSStatesFillMode);
begin
  FArtboardUSStatesBitmapFillMode := Value;
end;

procedure TArtboardUSStates.SetArtboardUSStatesBitmapHeight(const Value: Single);
begin
  FArtboardUSStatesBitmapHeight := Value;
end;

procedure TArtboardUSStates.SetArtboardUSStatesBitmapWidth(const Value: Single);
begin
  FArtboardUSStatesBitmapWidth := Value;
end;

//
// Resizing logic for ArtboardUSStates
//
function TArtboardUSStates.GetNewArtboardSize(FillMode: TArtboardUSStatesFillMode; SourceRect, TargetRect: CGRect): CGRect;
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

    if FillMode = TArtboardUSStatesFillMode.ArtboardUSStatesFit then
    begin
      Scales.Width := Min(Scales.Width, Scales.Height);
      Scales.Height := Scales.Width;
    end
    else if FillMode = TArtboardUSStatesFillMode.ArtboardUSStatesFill then
    begin
      Scales.Width := Max(Scales.Width, Scales.Height);
      Scales.Height := Scales.Width;
    end
    else if FillMode = TArtboardUSStatesFillMode.ArtboardUSStatesOriginal then
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


end.

