inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelClient: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        ExplicitLeft = 2
        ExplicitTop = 5
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_POIDS
          OptionsData.DeletingConfirmation = False
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Width = 64
          end
          object cxGridDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 111
          end
          object cxGridDBTableView1Poids: TcxGridDBColumn
            DataBinding.FieldName = 'Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
            Width = 114
          end
          object cxGridDBTableView1IMC_Calc: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_Calc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.AutoSelect = False
            Properties.ReadOnly = True
            FooterAlignmentHorz = taLeftJustify
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DataModule1.Gras
            Width = 117
          end
          object cxGridDBTableView1IMC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1IMC_IDCustomDrawCell
            OnGetCellHint = cxGridDBTableView1IMC_IDGetCellHint
            Width = 100
          end
          object cxGridDBTableView1Ecart1: TcxGridDBColumn
            DataBinding.FieldName = 'Ecart-1'
            Width = 100
          end
          object cxGridDBTableView1Ecart_Cum: TcxGridDBColumn
            DataBinding.FieldName = 'Ecart_Cum'
            Width = 100
          end
          object cxGridDBTableView1IMG_Graisse_BF: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Graisse_BF'
            Width = 99
          end
          object cxGridDBTableView1IMG_Hydrat_BW: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Hydrat_BW'
            Width = 101
          end
          object cxGridDBTableView1IMG_Muscle_BM: TcxGridDBColumn
            DataBinding.FieldName = 'IMG_Muscle_BM'
            Width = 101
          end
        end
      end
    end
  end
end
