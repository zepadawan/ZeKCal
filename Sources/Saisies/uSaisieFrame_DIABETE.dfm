inherited FSaisieFrame_DIABETE: TFSaisieFrame_DIABETE
  Width = 1136
  Height = 747
  ExplicitWidth = 1136
  ExplicitHeight = 747
  inherited PanelTop: TPanel
    Width = 1136
    Caption = 'Grille des prises de tests de la Glyc'#233'mie'
    ExplicitWidth = 1036
  end
  inherited Panel_Client: TPanel
    Width = 1136
    Height = 669
    ExplicitWidth = 1036
    ExplicitHeight = 389
    inherited Panel_Grid: TPanel
      Width = 1134
      Height = 667
      ExplicitWidth = 1034
      ExplicitHeight = 387
      inherited cxGrid: TcxGrid
        Width = 1132
        Height = 631
        ExplicitWidth = 1032
        ExplicitHeight = 351
        inherited cxGridDBTableView: TcxGridDBTableView
          OnCustomDrawCell = cxGridDBTableViewCustomDrawCell
          DataController.DataSource = DataModule1.DS_DIABETE
          OptionsView.ScrollBars = ssVertical
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
            Properties.DateButtons = [btnClear, btnNow, btnToday]
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
        Top = 635
        Width = 1125
        DataSource = DataModule1.DS_DIABETE
        ExplicitTop = 355
        ExplicitWidth = 1023
      end
    end
  end
  inherited PanelCBottom: TPanel
    Top = 710
    Width = 1136
    ExplicitTop = 430
    ExplicitWidth = 1036
  end
  inherited Printer: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrinterLink_Grid: TdxGridReportLink
      PrinterPage.CenterOnPageH = True
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '')
      PrinterPage.PageFooter.Font.Style = [fsBold]
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Historique des prises Clyc'#233'miques')
      PrinterPage.PageHeader.Font.Color = clBlue
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Style = [fsBold]
      ReportDocument.CreationDate = 44803.343419155090000000
      ReportTitle.Color = clBlue
      ReportTitle.Font.Color = clBlue
      ReportTitle.Font.Height = -29
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
