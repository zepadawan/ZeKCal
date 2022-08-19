inherited Frame_Custom1: TFrame_Custom1
  Width = 1078
  Height = 587
  ExplicitWidth = 1078
  ExplicitHeight = 587
  inherited Panel1: TPanel
    Width = 1078
    ExplicitWidth = 1078
  end
  object Panel_Client: TPanel
    Left = 0
    Top = 41
    Width = 1078
    Height = 505
    Align = alClient
    TabOrder = 1
    ExplicitTop = 47
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
          DataController.DataSource = MyDataSource1
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
        DataSource = MyDataSource1
        Align = alBottom
        TabOrder = 1
      end
    end
  end
  object Panel_Bottom: TPanel
    Left = 0
    Top = 546
    Width = 1078
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -40
    ExplicitTop = 584
  end
  object MyTable1: TMyTable
    Left = 40
    Top = 464
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyTable1
    Left = 104
    Top = 464
  end
end
