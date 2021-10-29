object Frmautor: TFrmautor
  Left = 279
  Top = 198
  BorderStyle = bsSingle
  Caption = 'Autor'
  ClientHeight = 172
  ClientWidth = 643
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 643
    Height = 131
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 25
      Width = 34
      Height = 13
      Caption = 'Nome :'
      FocusControl = DBEnome
    end
    object Label2: TLabel
      Left = 15
      Top = 70
      Width = 34
      Height = 13
      Caption = 'Cutter :'
      FocusControl = DBEdit2
    end
    object DBEnome: TDBEdit
      Left = 15
      Top = 40
      Width = 600
      Height = 21
      DataField = 'nome'
      DataSource = DMautor.DSautor
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 15
      Top = 85
      Width = 124
      Height = 21
      DataField = 'Cutter'
      DataSource = DMautor.DSautor
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 131
    Width = 643
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 1
    object DBNavigator2: TDBNavigator
      Left = 383
      Top = 10
      Width = 240
      Height = 25
      DataSource = DMautor.DSautor
      TabOrder = 0
      OnClick = DBNavigator2Click
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 500
    Top = 10
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 540
    Top = 10
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Autor'
    Left = 590
    Top = 10
  end
end
