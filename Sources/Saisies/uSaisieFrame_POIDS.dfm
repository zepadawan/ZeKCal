inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelTop: TPanel
    Caption = 'Grille des pes'#233'es de Poids'
  end
  inherited Panel_Client: TPanel
    inherited Panel_Grid: TPanel
      inherited cxGrid: TcxGrid
        inherited cxGridDBTableView: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_POIDS
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Ecart_Poids'
              Column = cxGridDBTableViewEcart_Poids
              DisplayText = 'total : '
            end
            item
              Format = 'Total :'#13#10
              Kind = skCount
              Column = cxGridDBTableViewIMC_Calc
              DisplayText = 'Total :'
            end>
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.FooterAutoHeight = True
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.IndicatorWidth = 15
          OptionsView.ShowColumnFilterButtons = sfbAlways
          object cxGridDBTableViewID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableViewDate: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableViewPoids: TcxGridDBColumn
            DataBinding.FieldName = 'Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableViewIMC_ID: TcxGridDBColumn
            Caption = 'Indice IMC'
            DataBinding.FieldName = 'IMC_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1IMC_IDCustomDrawCell
            OnGetCellHint = cxGridDBTableView1IMC_IDGetCellHint
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGridDBTableViewIMC_Calc: TcxGridDBColumn
            Caption = 'IMC Calucul'#233
            DataBinding.FieldName = 'IMC_Calc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableViewEcart_Poids: TcxGridDBColumn
            Caption = 'Poids - Poids - 1'
            DataBinding.FieldName = 'Ecart_Poids'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1Ecart_PoidsCustomDrawCell
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGridDBTableViewEcart_Cumul: TcxGridDBColumn
            Caption = 'Ecart Cumul'#233
            DataBinding.FieldName = 'Ecart_Cumul'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableView1Ecart_CumulCustomDrawCell
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGridDBTableViewIMG_Graisse_BF: TcxGridDBColumn
            Caption = 'IMG : Graisse'
            DataBinding.FieldName = 'IMG_Graisse_BF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = cxGridDBTableViewIMG_Graisse_BFCustomDrawCell
            OnGetCellHint = cxGridDBTableViewIMG_Graisse_BFGetCellHint
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableViewIMG_Hydrat_BW: TcxGridDBColumn
            Caption = 'IMG : Hydrat.'
            DataBinding.FieldName = 'IMG_Hydrat_BW'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableViewIMG_Muscle_BM: TcxGridDBColumn
            Caption = 'IMG : Muscle'
            DataBinding.FieldName = 'IMG_Muscle_BM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
          end
        end
      end
      inherited cxDBNavigator: TcxDBNavigator
        DataSource = DataModule1.DS_POIDS
      end
    end
  end
  inherited Printer: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrinterLink_Grid: TdxGridReportLink
      Active = True
      PrinterPage.CenterOnPageH = True
      PrinterPage.FitToPagesVertically = 20
      PrinterPage.Header = 6600
      PrinterPage.Margins.Top = 23000
      PrinterPage.PageFooter.RightTitle.Strings = (
        'Page : [Page # of Pages #]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Historique des pes'#233'es de Poids')
      PrinterPage.PageHeader.Font.Color = clBlue
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.ScaleMode = smFit
      ReportDocument.CreationDate = 44803.393493310180000000
      OptionsSize.AutoWidth = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited PrinterStyleManager: TdxPrintStyleManager
    PixelsPerInch = 96
    inherited PrinterStyleManagerStyle1: TdxPSPrintStyle
      BuiltInStyle = True
    end
  end
end
