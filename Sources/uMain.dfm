object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 600
  ClientWidth = 976
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 577
    Width = 976
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Panel_Frame: TPanel
    Left = 0
    Top = 25
    Width = 976
    Height = 511
    Align = alClient
    Caption = 'Panel_Frame'
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 136
    ExplicitHeight = 394
  end
  object Panel1: TPanel
    Left = 0
    Top = 536
    Width = 976
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    object Btn_Fermer: TcxButton
      Left = 877
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Btn_Fermer'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = Btn_FermerClick
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeIcons = True
    MenuAnimations = maSlide
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    ShowShortCutInHint = True
    UseSystemFont = True
    Left = 704
    Top = 80
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      25
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1004
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end>
      MultiLine = True
      NotDocking = [dsLeft, dsTop]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Tables de Base'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Btn_IMC'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Suivi Poids'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Btn_SaisiePoids'
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Test'
        end>
    end
    object Btn_IMC: TdxBarButton
      Caption = 'IMC'
      Category = 0
      Hint = 'IMC'
      Visible = ivAlways
      OnClick = Btn_IMCClick
    end
    object Btn_SaisiePoids: TdxBarLargeButton
      Caption = 'Saisie'
      Category = 0
      Hint = 'Saisie'
      Visible = ivAlways
      OnClick = Btn_SaisiePoidsClick
    end
    object Test: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = TestClick
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
end
