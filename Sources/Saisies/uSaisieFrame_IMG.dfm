inherited FSaisieFrame_IMG: TFSaisieFrame_IMG
  Width = 768
  Height = 459
  ExplicitWidth = 768
  ExplicitHeight = 459
  inherited PanelTop: TPanel
    Width = 768
    Caption = 'Saisie des valeurs IMG'
    ExplicitWidth = 768
  end
  inherited Panel_Client: TPanel
    Width = 768
    Height = 381
    ExplicitWidth = 768
    ExplicitHeight = 381
    inherited Panel_Grid: TPanel
      Width = 766
      Height = 379
      ExplicitWidth = 766
      ExplicitHeight = 379
      inherited cxGrid: TcxGrid
        Width = 764
        Height = 343
        ExplicitLeft = 4
        ExplicitTop = 5
        ExplicitWidth = 764
        ExplicitHeight = 343
        inherited cxGridDBTableView: TcxGridDBTableView
          DataController.DataSource = DataModule1.DS_IMG
          OptionsView.ColumnAutoWidth = True
          object cxGridDBTableViewID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGridDBTableViewLabel: TcxGridDBColumn
            DataBinding.FieldName = 'Label'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = DataModule1.Gras
          end
          object cxGridDBTableViewGraisse_Min: TcxGridDBColumn
            DataBinding.FieldName = 'Graisse_Min'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewGraisse_Max: TcxGridDBColumn
            DataBinding.FieldName = 'Graisse_Max'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewHydra_Max: TcxGridDBColumn
            DataBinding.FieldName = 'Hydra_Max'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewHydrat_Min: TcxGridDBColumn
            DataBinding.FieldName = 'Hydrat_Min'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
          end
          object cxGridDBTableViewColor: TcxGridDBColumn
            DataBinding.FieldName = 'Color'
            PropertiesClassName = 'TdxColorEditProperties'
            Properties.ColorPalette = cpExtended
          end
        end
      end
      inherited cxDBNavigator: TcxDBNavigator
        Top = 347
        Width = 758
        DataSource = DataModule1.DS_IMG
        InfoPanel.DisplayMask = '[RecordIndex]   o  f [RecordCount]'
        InfoPanel.Width = 50
        ExplicitTop = 347
        ExplicitWidth = 758
      end
    end
  end
  inherited PanelCBottom: TPanel
    Top = 422
    Width = 768
    ExplicitTop = 422
    ExplicitWidth = 768
  end
  inherited Printer: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrinterLink_Grid: TdxGridReportLink
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
