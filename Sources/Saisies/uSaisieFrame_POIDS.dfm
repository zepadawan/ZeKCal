inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelClient: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_POIDS
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Width = 64
          end
          object cxGridDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 294
          end
          object cxGridDBTableView1Poids: TcxGridDBColumn
            DataBinding.FieldName = 'Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
            Width = 291
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
          end
          object cxGridDBTableView1IMC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'IMC_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1IMC_IDCustomDrawCell
            OnGetCellHint = cxGridDBTableView1IMC_IDGetCellHint
          end
        end
      end
    end
  end
end
