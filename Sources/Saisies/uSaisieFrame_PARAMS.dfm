inherited FSaisieFrame_PARAMS: TFSaisieFrame_PARAMS
  inherited PanelTop: TPanel
    Caption = 'Saisie des param'#232'tres Globaux'
    ExplicitTop = 0
  end
  inherited Panel_Client: TPanel
    inherited Panel_Grid: TPanel
      inherited cxGrid: TcxGrid
        ExplicitLeft = 1
        inherited cxGridDBTableView: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_PARAMS
          OptionsView.ColumnAutoWidth = True
          object cxGridDBTableViewID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGridDBTableViewLabel: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableViewValue: TcxGridDBColumn
            DataBinding.FieldName = 'Value'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
        end
      end
      inherited cxDBNavigator: TcxDBNavigator
        DataSource = DataModule1.DS_PARAMS
      end
    end
  end
end
