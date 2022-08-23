inherited FSaisieFrame_DIABETE: TFSaisieFrame_DIABETE
  inherited PanelClient: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_DIABETE
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
          end
          object cxGridDBTableView1Heure: TcxGridDBColumn
            DataBinding.FieldName = 'Heure'
          end
          object cxGridDBTableView1Valeur: TcxGridDBColumn
            DataBinding.FieldName = 'Valeur'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableView1Apres_Repas: TcxGridDBColumn
            DataBinding.FieldName = 'Apres_Repas'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
          end
        end
      end
    end
  end
end
