object Frmctrlemp: TFrmctrlemp
  Left = 255
  Top = 175
  BorderStyle = bsToolWindow
  Caption = 'Controle de empréstimo'
  ClientHeight = 351
  ClientWidth = 557
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 557
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object DBNavigator2: TDBNavigator
      Left = 290
      Top = 10
      Width = 240
      Height = 25
      DataSource = DMctrlemp.DSemp
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 557
    Height = 99
    Align = alTop
    TabOrder = 1
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 256
      Top = 24
      Width = 284
      Height = 21
      DropDownCount = 8
      DataField = 'Idgrupo'
      DataSource = DMctrlemp.DSemp
      LookupField = 'idgrupo'
      LookupDisplay = 'descricao'
      LookupSource = DMctrlemp.DSgrupo
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 256
      Top = 56
      Width = 284
      Height = 21
      DropDownCount = 8
      DataField = 'idsuporte'
      DataSource = DMctrlemp.DSemp
      EmptyValue = '<Suporte>'
      LookupField = 'idsuporte'
      LookupDisplay = 'suporte'
      LookupSource = DMctrlemp.DSsuporte
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 99
    Width = 557
    Height = 211
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 116
      Height = 13
      Caption = 'Número de empréstimos '
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 84
      Width = 74
      Height = 13
      Caption = 'Número de dias'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 128
      Top = 114
      Width = 14
      Height = 13
      Caption = 'R$'
    end
    object Label4: TLabel
      Left = 280
      Top = 56
      Width = 146
      Height = 13
      Caption = 'Número fixo de dias suspensos'
      FocusControl = DBEdit4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 12
      Width = 89
      Height = 17
      Caption = 'Emprestar'
      Color = clBtnFace
      DataField = 'Flag_emp'
      DataSource = DMctrlemp.DSemp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit1: TDBEdit
      Left = 153
      Top = 52
      Width = 51
      Height = 21
      DataField = 'N_emp'
      DataSource = DMctrlemp.DSemp
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 153
      Top = 80
      Width = 51
      Height = 21
      DataField = 'N_dias'
      DataSource = DMctrlemp.DSemp
      TabOrder = 2
    end
    object DBCheckBox2: TDBCheckBox
      Left = 24
      Top = 112
      Width = 97
      Height = 17
      Caption = 'Recebe multa'
      DataField = 'RecMulta'
      DataSource = DMctrlemp.DSemp
      TabOrder = 3
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit3: TDBEdit
      Left = 153
      Top = 110
      Width = 51
      Height = 21
      DataField = 'Multa'
      DataSource = DMctrlemp.DSemp
      TabOrder = 4
    end
    object DBCheckBox3: TDBCheckBox
      Left = 24
      Top = 140
      Width = 73
      Height = 17
      Caption = 'Bloqueio'
      DataField = 'Bloqueio'
      DataSource = DMctrlemp.DSemp
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 24
      Top = 168
      Width = 169
      Height = 17
      Caption = 'Suspensão por dias de atraso'
      DataField = 'Suspende'
      DataSource = DMctrlemp.DSemp
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit4: TDBEdit
      Left = 437
      Top = 52
      Width = 51
      Height = 21
      DataField = 'SuspFixo'
      DataSource = DMctrlemp.DSemp
      TabOrder = 7
    end
    object DBCheckBox5: TDBCheckBox
      Left = 104
      Top = 22
      Width = 161
      Height = 17
      Caption = 'Nenhuma penalidade'
      DataField = 'Spen'
      DataSource = DMctrlemp.DSemp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 8
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object FormPlacement1: TFormPlacement
    Options = [fpState, fpActiveControl]
    PreventResize = True
    Left = 8
    Top = 318
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 48
    Top = 318
  end
end
