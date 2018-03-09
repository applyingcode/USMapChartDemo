unit MainUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Colors, FMX.Layouts, FMX.ListBox,
  FMX.Ani, ArtboardUSStates_iOS, ArtboardUSStatesGradient_iOS;

type
  TMainForm = class(TForm)
    ImageMap: TImage;
    ComboBoxStates: TComboBox;
    CheckBoxGradientMap: TCheckBox;
    ColorComboBoxState: TColorComboBox;
    RectangleMain: TRectangle;
    FlowLayoutMain: TFlowLayout;
    FlowLayoutBreak: TFlowLayoutBreak;
    LineSeperator: TLine;
    procedure CheckBoxGradientMapChange(Sender: TObject);
    procedure ColorComboBoxStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ArtboardUSStates: TArtboardUSStates;
    ArtboardUSStatesGradient: TArtboardUSStatesGradient;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

procedure TMainForm.CheckBoxGradientMapChange(Sender: TObject);
begin
  if CheckBoxGradientMap.IsChecked then
  begin
    ImageMap.BeginUpdate;
    ImageMap.Bitmap.Assign(ArtboardUSStatesGradient.ArtboardUSStatesBitmap);
    ImageMap.EndUpdate;
  end
  else
  begin
    ImageMap.BeginUpdate;
    ImageMap.Bitmap.Assign(ArtboardUSStates.ArtboardUSStatesBitmap);
    ImageMap.EndUpdate;
  end;
end;

procedure TMainForm.ColorComboBoxStateChange(Sender: TObject);
var
  ACF: TAlphaColorF;
begin
  if CheckBoxGradientMap.IsChecked then
  begin
    ShowMessage('Uncheck the Gradient map mode first!');
  end
  else
  begin
    ACF := TAlphaColorF.Create(ColorComboBoxState.Color);
    case ComboBoxStates.ItemIndex of
      0: ArtboardUSStates.WyomingColor := ACF;
      1: ArtboardUSStates.WisconsinColor := ACF;
      2: ArtboardUSStates.WestVirginiaColor := ACF;
      3: ArtboardUSStates.WashingtonDCColor := ACF;
      4: ArtboardUSStates.WashingtonColor := ACF;
      5: ArtboardUSStates.VirginiaColor := ACF;
      6: ArtboardUSStates.VermontColor := ACF;
      7: ArtboardUSStates.UtahColor := ACF;
      8: ArtboardUSStates.TexasColor := ACF;
      9: ArtboardUSStates.TennesseeColor := ACF;
      10: ArtboardUSStates.SouthDakotaColor := ACF;
      11: ArtboardUSStates.SouthCarolinaColor := ACF;
      12: ArtboardUSStates.RhodeIslandColor := ACF;
      13: ArtboardUSStates.PennsylvaniaColor := ACF;
      14: ArtboardUSStates.OregonColor := ACF;
      15: ArtboardUSStates.OklahomaColor := ACF;
      16: ArtboardUSStates.OhioColor := ACF;
      17: ArtboardUSStates.NorthDakotaColor := ACF;
      18: ArtboardUSStates.NorthCarolinaColor := ACF;
      19: ArtboardUSStates.NewYorkColor := ACF;
      20: ArtboardUSStates.NewMexicoColor := ACF;
      21: ArtboardUSStates.NewJerseyColor := ACF;
      22: ArtboardUSStates.NewHampshireColor := ACF;
      23: ArtboardUSStates.NevadaColor := ACF;
      24: ArtboardUSStates.NebraskaColor := ACF;
      25: ArtboardUSStates.MontanaColor := ACF;
      26: ArtboardUSStates.MissouriColor := ACF;
      27: ArtboardUSStates.MississippiColor := ACF;
      28: ArtboardUSStates.MinnesotaColor := ACF;
      29: ArtboardUSStates.MichiganColor := ACF;
      30: ArtboardUSStates.MassachusettsColor := ACF;
      31: ArtboardUSStates.MarylandColor := ACF;
      32: ArtboardUSStates.MaineColor := ACF;
      33: ArtboardUSStates.LouisianaColor := ACF;
      34: ArtboardUSStates.KentuckyColor := ACF;
      35: ArtboardUSStates.KansasColor := ACF;
      36: ArtboardUSStates.IowaColor := ACF;
      37: ArtboardUSStates.IndianaColor := ACF;
      38: ArtboardUSStates.IllinoisColor := ACF;
      39: ArtboardUSStates.IdahoColor := ACF;
      40: ArtboardUSStates.HawaiiColor := ACF;
      41: ArtboardUSStates.GeorgiaColor := ACF;
      42: ArtboardUSStates.FloridaColor := ACF;
      43: ArtboardUSStates.DelawareColor := ACF;
      44: ArtboardUSStates.ConnecticutColor := ACF;
      45: ArtboardUSStates.ColoradoColor := ACF;
      46: ArtboardUSStates.CaliforniaColor := ACF;
      47: ArtboardUSStates.ArkansasColor := ACF;
      48: ArtboardUSStates.ArizonaColor := ACF;
      49: ArtboardUSStates.AlaskaColor := ACF;
      50: ArtboardUSStates.AlabamaColor := ACF;
    end;

    ImageMap.BeginUpdate;
    ImageMap.Bitmap.Assign(ArtboardUSStates.ArtboardUSStatesBitmap);
    ImageMap.EndUpdate;
  end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  ArtboardUSStates.Free;
  ArtboardUSStatesGradient.Free;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  ArtboardUSStates := TArtboardUSStates.Create;
  ArtboardUSStatesGradient := TArtboardUSStatesGradient.Create;
  ImageMap.Bitmap.Assign(ArtboardUSStatesGradient.ArtboardUSStatesBitmap);
end;

end.
