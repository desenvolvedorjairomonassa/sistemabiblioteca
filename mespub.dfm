object Frmmespub: TFrmmespub
  Left = 308
  Top = 333
  Width = 476
  Height = 159
  BorderIcons = [biSystemMenu]
  Caption = 'Mês de publicação'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 468
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 0
    object DBNavigator2: TDBNavigator
      Left = 213
      Top = 10
      Width = 240
      Height = 25
      DataSource = DSmespub
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 91
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object mespub: TDBEdit
      Left = 20
      Top = 35
      Width = 366
      Height = 21
      DataField = 'meses'
      DataSource = DSmespub
      TabOrder = 0
    end
  end
  object ADOQmespub: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT meses '
      '  FROM ldperiodo')
    Left = 430
    Top = 60
  end
  object DSmespub: TDataSource
    DataSet = ADOQmespub
    Left = 375
    Top = 60
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 425
    Top = 10
  end
end
