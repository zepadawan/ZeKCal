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
        object cxGridDBTableView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.Indicator = True
        end
        object cxGridLevel: TcxGridLevel
          GridView = cxGridDBTableView
        end
      end
      object cxDBNavigator: TcxDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 389
        Width = 951
        Height = 28
        BorderStyle = nbsNone
        Buttons.ConfirmDelete = False
        Buttons.CustomButtons = <>
        Buttons.First.Hint = 'D'#233'but'
        Buttons.First.Visible = True
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Enabled = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Hint = 'Dernier'
        Buttons.Insert.Hint = 'Ajouter'
        Buttons.Insert.Visible = True
        Buttons.Append.Visible = False
        Buttons.Delete.Hint = 'Supprimer'
        Buttons.Delete.Visible = True
        Buttons.Edit.Visible = False
        Buttons.Post.Hint = 'Valider'
        Buttons.Post.Visible = True
        Buttons.Cancel.Hint = 'Annuler'
        Buttons.Cancel.Visible = True
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        InfoPanel.DisplayMask = '[RecordIndex]  sur  [RecordCount]'
        InfoPanel.Visible = True
        Align = alBottom
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ExplicitWidth = 945
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
