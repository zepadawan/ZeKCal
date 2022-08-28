inherited FSaisieFrame_IMC: TFSaisieFrame_IMC
  Width = 974
  ExplicitWidth = 974
  inherited PanelTop: TPanel
    Width = 974
    Caption = 'Saisie des Valeurs IMC'
    ExplicitWidth = 974
  end
  inherited Panel_Client: TPanel
    Width = 974
    ExplicitWidth = 974
    inherited Panel_Grid: TPanel
      Width = 972
      ExplicitWidth = 972
      inherited cxGrid: TcxGrid
        Width = 970
        ExplicitWidth = 970
        inherited cxGridDBTableView: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_IMC
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = False
          object cxGridDBTableViewID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
          end
          object cxGridDBTableViewLabel: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableViewMin: TcxGridDBColumn
            DataBinding.FieldName = 'Min'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewMax: TcxGridDBColumn
            DataBinding.FieldName = 'Max'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewColor: TcxGridDBColumn
            DataBinding.FieldName = 'Color'
            PropertiesClassName = 'TdxColorEditProperties'
            Properties.ColorPalette = cpExtended
          end
        end
      end
      inherited cxDBNavigator: TcxDBNavigator
        Width = 963
        DataSource = DataModule1.DS_IMC
        ExplicitWidth = 963
      end
    end
  end
  inherited PanelCBottom: TPanel
    Width = 974
    ExplicitWidth = 974
  end
end
