inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelClient: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_POIDS
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Width = 64
          end
          object cxGridDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            Width = 294
          end
          object cxGridDBTableView1Poids: TcxGridDBColumn
            DataBinding.FieldName = 'Poids'
            Width = 291
          end
          object cxGridDBTableView1IMC_Calc: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_Calc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.AutoSelect = False
            Properties.ReadOnly = True
            OnCustomDrawCell = cxGridDBTableView1IMC_CalcCustomDrawCell
            FooterAlignmentHorz = taLeftJustify
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGridDBTableView1IMC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_ID'
            OnCustomDrawCell = cxGridDBTableView1IMC_IDCustomDrawCell
            OnGetCellHint = cxGridDBTableView1IMC_IDGetCellHint
          end
        end
      end
    end
  end
end
