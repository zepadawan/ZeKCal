inherited FSaisieFrame_IMC: TFSaisieFrame_IMC
  Width = 974
  ExplicitWidth = 974
  inherited PanelTop: TPanel
    Width = 974
    ExplicitWidth = 974
  end
  inherited Panel_Client: TPanel
    Width = 974
    ExplicitWidth = 974
  end
  inherited PanelClient: TPanel
    Width = 974
    ExplicitWidth = 974
    inherited Panel3: TPanel
      Width = 972
      ExplicitWidth = 972
      inherited cxGrid2: TcxGrid
        Width = 970
        ExplicitLeft = 2
        ExplicitTop = 5
        ExplicitWidth = 970
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_IMC
          OptionsBehavior.AlwaysShowEditor = True
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1Label: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
          end
          object cxGridDBTableView1Min: TcxGridDBColumn
            DataBinding.FieldName = 'Min'
          end
          object cxGridDBTableView1Mx: TcxGridDBColumn
            DataBinding.FieldName = 'Mx'
          end
          object cxGridDBTableView1Color: TcxGridDBColumn
            DataBinding.FieldName = 'Color'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.AllowSelectColor = True
            Properties.ColorComboStyle = cxccsComboList
            Properties.ColorValueFormat = cxcvHexadecimal
            Properties.CustomColors = <>
          end
        end
      end
    end
  end
end