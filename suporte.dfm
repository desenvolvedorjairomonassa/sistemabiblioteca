object Frmsuporte: TFrmsuporte
  Left = 240
  Top = 290
  Width = 348
  Height = 284
  Caption = 'Suporte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 216
    Width = 340
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 10
      Top = 10
      Width = 234
      Height = 25
      DataSource = DMsuporte.DSsuporte
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 216
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Código'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 15
      Top = 49
      Width = 37
      Height = 13
      Caption = 'Suporte'
    end
    object Label3: TLabel
      Left = 15
      Top = 93
      Width = 48
      Height = 13
      Caption = 'Descrição'
    end
    object DBEdit1: TDBEdit
      Left = 15
      Top = 20
      Width = 124
      Height = 21
      DataField = 'arvore'
      DataSource = DMsuporte.DSsuporte
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 15
      Top = 65
      Width = 280
      Height = 21
      DataField = 'suporte'
      DataSource = DMsuporte.DSsuporte
      TabOrder = 1
    end
    object RxDBRichEdit1: TRxDBRichEdit
      Left = 15
      Top = 109
      Width = 280
      Height = 93
      DataField = 'descricao'
      DataSource = DMsuporte.DSsuporte
      AutoURLDetect = False
      Color = clInfoBk
      LangOptions = [rlAutoKeyboard, rlAutoFont]
      MaxLength = 250
      PlainText = True
      ScrollBars = ssVertical
      SelectionBar = False
      StreamFormat = sfPlainText
      StreamMode = [smSelection]
      TabOrder = 2
      WordSelection = False
    end
  end
end
