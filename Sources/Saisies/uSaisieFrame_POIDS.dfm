inherited FSaisieFrame_POIDS: TFSaisieFrame_POIDS
  OnResize = FrameResize
  inherited PanelTop: TPanel
    Caption = 'Grille des pes'#233'es de Poids'
  end
  inherited Panel_Client: TPanel
    inherited Panel_Grid: TPanel
      inherited cxGrid: TcxGrid
        inherited cxGridDBTableView: TcxGridDBTableView
          OnKeyDown = cxGridDBTableViewKeyDown
          OnEditKeyDown = cxGridDBTableViewEditKeyDown
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
            PropertiesClassName = 'TcxCurrencyEditProperties'
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
  inherited PanelCBottom: TPanel
    ExplicitTop = 464
    object Btn_Pdf1: TcxButton [1]
      Left = 191
      Top = 6
      Width = 161
      Height = 25
      Caption = 'G'#233'n'#233'rer PDF'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = DataModule1.ImageList_16
      TabOrder = 1
    end
    inherited Btn_Partager: TcxButton
      Top = 6
      TabOrder = 2
      ExplicitTop = 6
    end
    inherited Btn_Pdf: TcxButton
      Left = 783
      Top = 6
      TabOrder = 3
      Visible = False
      ExplicitLeft = 783
      ExplicitTop = 6
    end
  end
  inherited Printer: TdxComponentPrinter
    Left = 616
    PixelsPerInch = 96
    inherited PrinterLink_Grid: TdxGridReportLink
      PDFExportOptions.Author = 'JFP'
      PDFExportOptions.Title = 'GrillePoids.pdf'
      PDFExportOptions.CompressStreams = True
      PDFExportOptions.DefaultFileName = 'c:\Tmp\GrillePoids.pdf'
      PDFExportOptions.DefaultFileNameAssigned = True
      PDFExportOptions.IsTitleAssigned = True
      PrinterPage.CenterOnPageH = True
      PrinterPage.FitToPagesVertically = 20
      PrinterPage.Header = 6600
      PrinterPage.Margins.Top = 23000
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page #] / [Total Pages]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Historique des pes'#233'es de Poids')
      PrinterPage.PageHeader.Font.Color = clBlue
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.ScaleMode = smFit
      ReportDocument.CreationDate = 44803.473188101850000000
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
