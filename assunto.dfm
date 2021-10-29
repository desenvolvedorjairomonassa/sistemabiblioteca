object Frmassunto: TFrmassunto
  Left = 279
  Top = 397
  Width = 651
  Height = 199
  Caption = 'Assunto'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 131
    Width = 643
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 0
    object DBNavigator2: TDBNavigator
      Left = 383
      Top = 10
      Width = 240
      Height = 25
      DataSource = DMassunto.DSassunto
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 643
    Height = 131
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 30
      Width = 44
      Height = 13
      Caption = 'Assunto :'
      FocusControl = assunto
    end
    object Label3: TLabel
      Left = 15
      Top = 80
      Width = 29
      Height = 13
      Caption = 'CDD :'
      FocusControl = cdd
    end
    object Label4: TLabel
      Left = 160
      Top = 80
      Width = 29
      Height = 13
      Caption = 'CDU :'
      FocusControl = cdu
    end
    object assunto: TDBEdit
      Left = 15
      Top = 45
      Width = 500
      Height = 21
      DataField = 'assunto'
      DataSource = DMassunto.DSassunto
      TabOrder = 0
    end
    object cdd: TDBEdit
      Left = 15
      Top = 95
      Width = 124
      Height = 21
      DataField = 'cdd'
      DataSource = DMassunto.DSassunto
      TabOrder = 2
    end
    object cdu: TDBEdit
      Left = 160
      Top = 95
      Width = 124
      Height = 21
      DataField = 'cdu'
      DataSource = DMassunto.DSassunto
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 535
      Top = 47
      Width = 97
      Height = 17
      Caption = '&Ativo'
      DataField = 'ativo'
      DataSource = DMassunto.DSassunto
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 525
    Top = 15
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 570
    Top = 15
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Assunto'
    Left = 600
    Top = 10
  end
end
