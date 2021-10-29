object FrmIdioma: TFrmIdioma
  Left = 308
  Top = 279
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Idioma'
  ClientHeight = 132
  ClientWidth = 468
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 91
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object DBEidioma: TDBEdit
      Left = 20
      Top = 33
      Width = 366
      Height = 21
      DataField = 'idioma'
      DataSource = DSIdioma
      TabOrder = 0
      OnChange = DBEidiomaChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 468
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 1
    object DBNavigator2: TDBNavigator
      Left = 213
      Top = 10
      Width = 240
      Height = 25
      DataSource = DSIdioma
      TabOrder = 0
      OnClick = DBNavigator2Click
    end
  end
  object ADOQIdioma: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT idioma '
      '  FROM ldidioma'
      '  ORDER BY idioma')
    Left = 425
    Top = 65
  end
  object DSIdioma: TDataSource
    DataSet = ADOQIdioma
    Left = 425
    Top = 15
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 375
    Top = 70
  end
end
