inherited FSaisieFrame_IMG: TFSaisieFrame_IMG
  Width = 768
  Height = 459
  ExplicitWidth = 768
  ExplicitHeight = 459
  inherited PanelTop: TPanel
    Width = 768
  end
  inherited Panel_Client: TPanel
    Width = 768
    Height = 418
  end
  inherited PanelClient: TPanel
    Width = 768
    Height = 418
    inherited Panel3: TPanel
      Width = 766
      Height = 416
      inherited cxGrid2: TcxGrid
        Width = 764
        Height = 414
        ExplicitLeft = 0
        ExplicitTop = 5
        ExplicitWidth = 764
        ExplicitHeight = 414
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_IMG
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGridDBTableView1Label: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
            PropertiesClassName = 'TcxTextEditProperties'
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableView1BF_Graisse_Min: TcxGridDBColumn
            DataBinding.FieldName = 'BF_Graisse_Min'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableView1BF_Graisse_Max: TcxGridDBColumn
            DataBinding.FieldName = 'BF_Graisse_Max'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableView1BF_Hydrat_Min: TcxGridDBColumn
            DataBinding.FieldName = 'BF_Hydrat_Min'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableView1BF_Hydrat_Max: TcxGridDBColumn
            DataBinding.FieldName = 'BF_Hydrat_Max'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
        end
      end
    end
  end
end
