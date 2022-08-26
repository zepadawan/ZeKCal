inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelClient: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        ExplicitLeft = 0
        ExplicitTop = 5
        inherited cxGridDBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
          DataController.DataSource = DataModule1.DS_POIDS
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnClear, btnNow, btnToday]
          end
          object cxGridDBTableView1Poids: TcxGridDBColumn
            DataBinding.FieldName = 'Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableView1IMC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableView1IMC_Calc: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_Calc'
          end
          object cxGridDBTableView1Ecart_Poids: TcxGridDBColumn
            DataBinding.FieldName = 'Ecart_Poids'
          end
          object cxGridDBTableView1Ecart_Cumul: TcxGridDBColumn
            DataBinding.FieldName = 'Ecart_Cumul'
          end
          object cxGridDBTableView1IMG_Graisse_BF: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Graisse_BF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableView1IMG_Hydrat_BW: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Hydrat_BW'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableView1IMG_Muscle_BM: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Muscle_BM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
        end
      end
    end
  end
end
