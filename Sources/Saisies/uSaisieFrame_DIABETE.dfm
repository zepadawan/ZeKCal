inherited FSaisieFrame_DIABETE: TFSaisieFrame_DIABETE
  Width = 815
  Height = 412
  ExplicitWidth = 815
  ExplicitHeight = 412
  inherited PanelTop: TPanel
    Width = 815
    ExplicitWidth = 815
  end
  inherited Panel_Client: TPanel
    Width = 815
    Height = 371
    ExplicitWidth = 815
    ExplicitHeight = 371
  end
  inherited PanelClient: TPanel
    Width = 815
    Height = 371
    ExplicitWidth = 815
    ExplicitHeight = 371
    inherited Panel3: TPanel
      Width = 813
      Height = 369
      ExplicitWidth = 813
      ExplicitHeight = 369
      inherited cxGrid2: TcxGrid
        Width = 811
        Height = 367
        ExplicitWidth = 811
        ExplicitHeight = 367
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_DIABETE
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGridDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
          end
          object cxGridDBTableView1Heurre: TcxGridDBColumn
            DataBinding.FieldName = 'Heurre'
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
            Properties.ReadOnly = False
          end
        end
      end
    end
  end
end
