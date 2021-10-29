object Frmperiodicidade: TFrmperiodicidade
  Left = 289
  Top = 304
  Width = 476
  Height = 159
  BorderIcons = [biSystemMenu]
  Caption = 'Periodicidade'
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
      DataSource = DSperiodicidade
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
    object periodicidade: TDBEdit
      Left = 15
      Top = 30
      Width = 178
      Height = 21
      DataField = 'periodo'
      DataSource = DSperiodicidade
      TabOrder = 0
    end
  end
  object ADOQperiodicidade: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    ParamCheck = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT periodo '
      ' FROM ldperiodicidade')
    Left = 380
    Top = 40
  end
  object DSperiodicidade: TDataSource
    DataSet = ADOQperiodicidade
    Left = 420
    Top = 20
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 295
    Top = 60
  end
end
