inherited FSaisieFrame_IMG: TFSaisieFrame_IMG
  Width = 768
  Height = 459
  ExplicitWidth = 768
  ExplicitHeight = 459
  inherited PanelTop: TPanel
    Width = 768
    ExplicitWidth = 768
  end
  inherited Panel_Client: TPanel
    Width = 768
    Height = 418
    ExplicitWidth = 768
    ExplicitHeight = 418
  end
  inherited PanelClient: TPanel
    Width = 768
    Height = 418
    ExplicitWidth = 768
    ExplicitHeight = 418
    inherited Panel3: TPanel
      Width = 766
      Height = 416
      ExplicitWidth = 766
      ExplicitHeight = 416
      inherited cxGrid2: TcxGrid
        Width = 764
        Height = 414
        ExplicitWidth = 764
        ExplicitHeight = 414
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_IMG
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1Label: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableView1Graiise_Min: TcxGridDBColumn
            DataBinding.FieldName = 'Graiise_Min'
          end
          object cxGridDBTableView1Graisse_Max: TcxGridDBColumn
            DataBinding.FieldName = 'Graisse_Max'
          end
          object cxGridDBTableView1Hydra_Max: TcxGridDBColumn
            DataBinding.FieldName = 'Hydra_Max'
          end
          object cxGridDBTableView1Hydrat_Min: TcxGridDBColumn
            DataBinding.FieldName = 'Hydrat_Min'
          end
          object cxGridDBTableView1Color: TcxGridDBColumn
            DataBinding.FieldName = 'Color'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.AllowSelectColor = True
            Properties.ColorValueFormat = cxcvHexadecimal
            Properties.CustomColors = <>
            Properties.ShowDescriptions = False
          end
        end
      end
    end
  end
end
