inherited FrameGraphic_DIABETE: TFrameGraphic_DIABETE
  inherited Panel4: TPanel
    inherited DBChart: TDBChart
      Title.Font.Height = -19
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Historique Glyc'#233'mie')
      Chart3DPercent = 3
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.Increment = 1.000000000000000000
      LeftAxis.Maximum = 180.000000000000000000
      LeftAxis.Minimum = 70.000000000000000000
      Legend.LegendStyle = lsValues
      Legend.TextStyle = ltsRightValue
      TopAxis.Automatic = False
      TopAxis.AutomaticMaximum = False
      TopAxis.AutomaticMinimum = False
      View3D = True
      View3DOptions.FontZoom = 80
      View3DOptions.OrthoAngle = 0
      View3DOptions.Perspective = 0
      PrintMargins = (
        15
        18
        15
        18)
      inherited Series1: TBarSeries
        ColorEachPoint = True
        DataSource = DataModule1.T_DIABETE
        SeriesColor = 33023
        ValueFormat = '0'
        BarWidthPercent = 15
        MultiBar = mbNone
        XValues.DateTime = True
        XValues.ValueSource = 'Date'
        YValues.ValueSource = 'Valeur'
      end
    end
  end
  object TeeGDIPlus1: TTeeGDIPlus
    Active = True
    TeePanel = DBChart
    Left = 64
    Top = 8
  end
end
