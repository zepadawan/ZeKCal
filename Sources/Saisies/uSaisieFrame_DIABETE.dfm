inherited FSaisieFrame_DIABETE: TFSaisieFrame_DIABETE
  Width = 1036
  Height = 467
  ExplicitWidth = 1036
  ExplicitHeight = 467
  inherited PanelTop: TPanel
    Width = 1036
    Caption = 'Grille des prises de tests de la Glyc'#233'mie'
    ExplicitWidth = 1036
  end
  inherited Panel_Client: TPanel
    Width = 1036
    Height = 389
    ExplicitWidth = 1036
    ExplicitHeight = 389
    inherited Panel_Grid: TPanel
      Width = 1034
      Height = 387
      ExplicitWidth = 1034
      ExplicitHeight = 387
      inherited cxGrid: TcxGrid
        Width = 1032
        Height = 351
        ExplicitWidth = 1032
        ExplicitHeight = 351
        inherited cxGridDBTableView: TcxGridDBTableView
          OnCustomDrawCell = cxGridDBTableViewCustomDrawCell
          DataController.DataSource = DataModule1.DS_DIABETE
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          object cxGridDBTableViewID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGridDBTableViewDate: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 214
          end
          object cxGridDBTableViewHeure: TcxGridDBColumn
            DataBinding.FieldName = 'Heure'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 237
          end
          object cxGridDBTableViewValeur: TcxGridDBColumn
            DataBinding.FieldName = 'Valeur'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
            Width = 368
          end
          object cxGridDBTableViewApres_Repas: TcxGridDBColumn
            DataBinding.FieldName = 'Apres_Repas'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayUnchecked = 'True'
            Properties.NullStyle = nssInactive
            Properties.ShowEndEllipsis = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            VisibleForEditForm = bFalse
            Width = 211
          end
        end
      end
      inherited cxDBNavigator: TcxDBNavigator
        Top = 355
        Width = 1026
        DataSource = DataModule1.DS_DIABETE
        ExplicitLeft = 4
        ExplicitTop = 355
        ExplicitWidth = 1026
      end
    end
  end
  inherited PanelCBottom: TPanel
    Top = 430
    Width = 1036
    ExplicitTop = 430
    ExplicitWidth = 1036
  end
end
