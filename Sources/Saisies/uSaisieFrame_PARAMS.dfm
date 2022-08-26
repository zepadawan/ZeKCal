inherited FSaisieFrame_PARAMS: TFSaisieFrame_PARAMS
  inherited PanelClient: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        ExplicitLeft = 0
        ExplicitTop = 5
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_PARAMS
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1Label: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableView1Value: TcxGridDBColumn
            DataBinding.FieldName = 'Value'
          end
        end
      end
    end
  end
end
