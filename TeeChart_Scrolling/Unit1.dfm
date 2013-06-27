object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 587
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 8
    Top = 39
    Width = 569
    Height = 393
    Legend.LegendStyle = lsSeries
    Title.Font.Height = -13
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = clYellow
    Title.Shadow.Transparency = 11
    Title.Text.Strings = (
      'PPU Output')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 24.000000000000000000
    BottomAxis.MinorTicks.JoinStyle = jsBevel
    BottomAxis.Title.Caption = 'Time (seconds)'
    LeftAxis.LabelStyle = talValue
    LeftAxis.Title.Caption = 'Voltage/Current'
    View3D = False
    Zoom.Animated = True
    TabOrder = 0
    PrintMargins = (
      15
      20
      15
      20)
    ColorPaletteIndex = 13
    object DV_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Discharge V'
      Brush.BackColor = clDefault
      Pointer.Brush.Gradient.EndColor = 10708548
      Pointer.Gradient.EndColor = 10708548
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object DI_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Discharge I'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object HV_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Heater V'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object HI_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Heater I'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object KV_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Keeper V'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object KI_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Keeper I'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object M1V_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Mag1 V'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object M1I_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Mag1 I'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object M2V_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Mag2 V'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object M2I_Series: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Title = 'Mag2 I'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 438
    Width = 569
    Height = 139
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Restart'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 350
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Step'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Continuous'
    TabOrder = 4
    OnClick = Button3Click
  end
  object UpDown1: TUpDown
    Left = 327
    Top = 8
    Width = 17
    Height = 25
    Min = 3000
    Max = 0
    Increment = 100
    TabOrder = 5
    OnChangingEx = UpDown1ChangingEx
  end
  object GroupBox1: TGroupBox
    Left = 583
    Top = 39
    Width = 97
    Height = 330
    Caption = 'Hide Traces'
    TabOrder = 6
    object DV_Toggle: TSpeedButton
      Left = 3
      Top = 32
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 1
      Down = True
      Caption = 'Discharge V'
      OnClick = DV_ToggleClick
    end
    object DI_Toggle: TSpeedButton
      Left = 3
      Top = 60
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 2
      Down = True
      Caption = 'Discharge I'
      OnClick = DI_ToggleClick
    end
    object HV_Toggle: TSpeedButton
      Left = 3
      Top = 88
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 3
      Down = True
      Caption = 'Heater V'
      OnClick = HV_ToggleClick
    end
    object HI_Toggle: TSpeedButton
      Left = 3
      Top = 116
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 4
      Down = True
      Caption = 'Heater I'
      OnClick = HI_ToggleClick
    end
    object KV_Toggle: TSpeedButton
      Left = 3
      Top = 144
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 5
      Down = True
      Caption = 'Keeper V'
      OnClick = KV_ToggleClick
    end
    object KI_Toggle: TSpeedButton
      Left = 3
      Top = 172
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 6
      Down = True
      Caption = 'Keeper I'
      OnClick = KI_ToggleClick
    end
    object M1V_Toggle: TSpeedButton
      Left = 3
      Top = 200
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 7
      Down = True
      Caption = 'Mag1 V'
      OnClick = M1V_ToggleClick
    end
    object M1I_Toggle: TSpeedButton
      Left = 3
      Top = 228
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 8
      Down = True
      Caption = 'Mag1 I'
      OnClick = M1I_ToggleClick
    end
    object M2V_Toggle: TSpeedButton
      Left = 3
      Top = 256
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 9
      Down = True
      Caption = 'Mag2 V'
      OnClick = M2V_ToggleClick
    end
    object M2I_Toggle: TSpeedButton
      Left = 3
      Top = 284
      Width = 81
      Height = 22
      AllowAllUp = True
      GroupIndex = 10
      Down = True
      Caption = 'Mag2 I'
      OnClick = M2I_ToggleClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 592
    Top = 544
  end
end
