inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  inherited PanelTop: TPanel
    ExplicitLeft = 232
    ExplicitTop = 64
  end
  inherited PanelClient: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        inherited cxGridDBTableView1: TcxGridDBTableView
          OnCellClick = cxGridDBTableView1CellClick
          DataController.DataSource = DataModule1.DS_POIDS
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GridLineColor = clBlack
          OptionsView.GridLines = glNone
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Width = 91
          end
          object cxGridDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Width = 102
          end
          object cxGridDBTableView1Poids: TcxGridDBColumn
            DataBinding.FieldName = 'Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
            Width = 117
          end
          object cxGridDBTableView1Ecart_Poids: TcxGridDBColumn
            Caption = 'Ecart Poids '
            DataBinding.FieldName = 'Ecart_Poids'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.MaskKind = emkRegExpr
            OnCustomDrawCell = cxGridDBTableView1Ecart_PoidsCustomDrawCell
            Width = 94
          end
          object cxGridDBTableView1Ecart_Cumul: TcxGridDBColumn
            Caption = 'Ecart Cumul'#233
            DataBinding.FieldName = 'Ecart_Cumul'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.MaskKind = emkRegExpr
            OnCustomDrawCell = cxGridDBTableView1Ecart_CumulCustomDrawCell
            Width = 112
          end
          object cxGridDBTableView1IMC_ID: TcxGridDBColumn
            Caption = 'IMC'
            DataBinding.FieldName = 'IMC_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1IMC_IDCustomDrawCell
            OnGetCellHint = cxGridDBTableView1IMC_IDGetCellHint
            Width = 51
          end
          object cxGridDBTableView1IMC_Calc: TcxGridDBColumn
            Caption = 'IMC Calccul'#233'e'
            DataBinding.FieldName = 'IMC_Calc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
            Width = 139
          end
          object cxGridDBTableView1IMG_Graisse_BF: TcxGridDBColumn
            Caption = 'Tx de Graisse'
            DataBinding.FieldName = 'IMG_Graisse_BF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 114
          end
          object cxGridDBTableView1IMG_Hydrat_BW: TcxGridDBColumn
            Caption = 'tx Hydratation'
            DataBinding.FieldName = 'IMG_Hydrat_BW'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 107
          end
          object cxGridDBTableView1IMG_Muscle_BM: TcxGridDBColumn
            Caption = 'tx Muscle'
            DataBinding.FieldName = 'IMG_Muscle_BM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 107
          end
        end
      end
    end
  end
end
