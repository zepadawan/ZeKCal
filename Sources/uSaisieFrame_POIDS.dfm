inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelTop: TPanel
    ExplicitWidth = 961
  end
  inherited Panel_Client: TPanel
    ExplicitWidth = 961
    ExplicitHeight = 460
  end
  inherited PanelClient: TPanel
    ExplicitTop = 41
    ExplicitWidth = 961
    ExplicitHeight = 460
    inherited Panel3: TPanel
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 959
      ExplicitHeight = 458
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
          end
        end
      end
    end
  end
end
