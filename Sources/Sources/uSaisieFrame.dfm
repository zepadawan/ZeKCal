inherited FSaisieFrame: TFSaisieFrame
  Width = 961
  Height = 501
  Align = alClient
  ExplicitWidth = 961
  ExplicitHeight = 501
  inherited PanelTop: TPanel
    Width = 961
    Font.Color = clHighlight
    Font.Height = -19
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = -4
    ExplicitWidth = 961
  end
  object Panel_Client: TPanel
    Left = 0
    Top = 41
    Width = 961
    Height = 423
    Align = alClient
    TabOrder = 1
    object Panel_Grid: TPanel
      Left = 1
      Top = 1
      Width = 959
      Height = 421
      Align = alClient
      TabOrder = 0
      object cxGrid: TcxGrid
        Left = 1
        Top = 1
        Width = 957
        Height = 385
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 5
        ExplicitHeight = 391
        object cxGridDBTableView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGridLevel: TcxGridLevel
          GridView = cxGridDBTableView
        end
      end
      object cxDBNavigator: TcxDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 389
        Width = 948
        Height = 28
        BorderStyle = nbsNone
        Buttons.CustomButtons = <>
        Buttons.First.Visible = True
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Enabled = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Insert.Visible = True
        Buttons.Append.Visible = False
        Buttons.Delete.Visible = True
        Buttons.Edit.Visible = False
        Buttons.Post.Visible = True
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        Align = alBottom
        TabOrder = 1
      end
    end
  end
  object PanelCBottom: TPanel
    Left = 0
    Top = 464
    Width = 961
    Height = 37
    Align = alBottom
    TabOrder = 2
  end
end
