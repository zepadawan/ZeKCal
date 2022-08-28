inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelTop: TPanel
    Caption = 'Grille des pes'#233'es de Poids'
    ExplicitLeft = -1
  end
  inherited Panel_Client: TPanel
    inherited Panel_Grid: TPanel
      inherited cxGrid: TcxGrid
        ExplicitLeft = 1
        ExplicitTop = 1
        inherited cxGridDBTableView: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_POIDS
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
          end
          object cxGridDBTableViewPoids: TcxGridDBColumn
            DataBinding.FieldName = 'Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableViewIMC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1IMC_IDCustomDrawCell
            OnGetCellHint = cxGridDBTableView1IMC_IDGetCellHint
          end
          object cxGridDBTableViewIMC_Calc: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_Calc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableViewEcart_Poids: TcxGridDBColumn
            DataBinding.FieldName = 'Ecart_Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1Ecart_PoidsCustomDrawCell
          end
          object cxGridDBTableViewEcart_Cumul: TcxGridDBColumn
            DataBinding.FieldName = 'Ecart_Cumul'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1Ecart_CumulCustomDrawCell
          end
          object cxGridDBTableViewIMG_Graisse_BF: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Graisse_BF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewIMG_Hydrat_BW: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Hydrat_BW'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewIMG_Muscle_BM: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Muscle_BM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
        end
      end
      inherited cxDBNavigator1: TcxDBNavigator
        DataSource = DataModule1.DS_POIDS
      end
    end
  end
end
