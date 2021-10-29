object Frmpais: TFrmpais
  Left = 336
  Top = 239
  Width = 476
  Height = 376
  Caption = 'País'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 86
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 20
      Width = 28
      Height = 13
      Caption = 'País :'
      FocusControl = pais
    end
    object pais: TDBEdit
      Left = 25
      Top = 35
      Width = 406
      Height = 21
      DataField = 'pais'
      DataSource = DSPais
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 308
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
      DataSource = DSPais
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 86
    Width = 468
    Height = 222
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object RxDBGrid1: TRxDBGrid
      Left = 2
      Top = 2
      Width = 464
      Height = 218
      Align = alClient
      DataSource = DSRegiao
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'estado'
          Title.Alignment = taCenter
          Title.Caption = 'Região/Federação'
          Width = 436
          Visible = True
        end>
    end
  end
  object DSPais: TDataSource
    AutoEdit = False
    DataSet = ADOQPais
    Left = 420
    Top = 40
  end
  object ADOQPais: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT pais '
      '  FROM LDPais')
    Left = 340
    Top = 35
    object ADOQPaispais: TStringField
      FieldName = 'pais'
      Size = 100
    end
  end
  object ADOQRegiao: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    DataSource = DSPais
    Parameters = <
      item
        Name = 'pais'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'SELECT estado,pais'
      '  FROM ldestado'
      '  WHERE pais= :pais')
    Left = 320
    Top = 90
    object ADOQRegiaoestado: TStringField
      FieldName = 'estado'
      Size = 100
    end
    object ADOQRegiaopais: TStringField
      FieldName = 'pais'
      Size = 100
    end
  end
  object DSRegiao: TDataSource
    DataSet = ADOQRegiao
    Left = 415
    Top = 90
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 110
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 165
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'País'
    Left = 240
  end
end
