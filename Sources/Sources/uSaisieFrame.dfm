inherited FSaisieFrame: TFSaisieFrame
  Width = 961
  Height = 501
  Align = alClient
  ExplicitWidth = 961
  ExplicitHeight = 501
  inherited PanelTop: TPanel
    Width = 961
    ExplicitWidth = 961
  end
  object Panel_Client: TPanel
    Left = 0
    Top = 41
    Width = 961
    Height = 460
    Align = alClient
    TabOrder = 1
    object Panel_Grid: TPanel
      Left = 16
      Top = 6
      Width = 945
      Height = 409
      Caption = 'Panel_Grid'
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 943
        Height = 379
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 1
        Top = 380
        Width = 930
        Height = 28
        Buttons.CustomButtons = <>
        Align = alBottom
        TabOrder = 1
      end
    end
  end
  object PanelClient: TPanel
    Left = 0
    Top = 41
    Width = 961
    Height = 460
    Align = alClient
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 959
      Height = 458
      Align = alClient
      Caption = 'Panel_Grid'
      TabOrder = 0
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 957
        Height = 456
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.Visible = True
          Navigator.InfoPanel.Width = 100
          Navigator.Visible = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
end
