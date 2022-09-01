object FrameGraphic_Custom: TFrameGraphic_Custom
  Left = 0
  Top = 0
  Width = 1069
  Height = 715
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1069
    Height = 41
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 104
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 674
    Width = 1069
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 8
  end
  object Panel3: TPanel
    Left = 992
    Top = 41
    Width = 77
    Height = 633
    Align = alRight
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 82
    ExplicitHeight = 592
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 992
    Height = 633
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 35
    object DBChart: TDBChart
      Left = 1
      Top = 1
      Width = 990
      Height = 631
      Title.Text.Strings = (
        'TDBChart')
      Align = alClient
      Color = clCream
      TabOrder = 0
      ExplicitLeft = -4
      ExplicitTop = 6
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        18
        15
        18)
      ColorPaletteIndex = 13
      object Series1: TLineSeries
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
  end
end
