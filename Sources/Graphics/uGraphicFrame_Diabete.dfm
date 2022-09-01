inherited FrameGraphic_Custom1: TFrameGraphic_Custom1
  inherited Panel4: TPanel
    inherited DBChart: TDBChart
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.Maximum = 180.000000000000000000
      LeftAxis.Minimum = 70.000000000000000000
      PrintMargins = (
        15
        18
        15
        18)
      inherited Series1: TLineSeries
        Active = False
        Brush.Color = clWhite
        DrawStyle = dsAll
        LinePen.Color = clDefault
        Pointer.Dark3D = False
        Stairs = True
        XValues.ValueSource = 'Date'
        YValues.ValueSource = 'Valeur'
        object TSmoothingFunction
          CalcByValue = False
          Period = 1.000000000000000000
          Factor = 8
        end
      end
      object Series2: TBarSeries
        DataSource = DataModule1.T_DIABETE
        XLabelsSource = 'Valeur'
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        XValues.ValueSource = 'Date'
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'Valeur'
      end
    end
  end
end
