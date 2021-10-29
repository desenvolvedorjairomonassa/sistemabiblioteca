object Frmedforn: TFrmedforn
  Left = 191
  Top = 176
  Width = 693
  Height = 435
  BorderIcons = [biSystemMenu]
  Caption = 'Editora/Fornecedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 216
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 681
      Height = 212
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Identificação'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 673
          Height = 184
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvSpace
          TabOrder = 0
          object Label1: TLabel
            Left = 248
            Top = 8
            Width = 74
            Height = 13
            Caption = 'Nome fantasia :'
          end
          object Label2: TLabel
            Left = 120
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Código'
          end
          object Label3: TLabel
            Left = 120
            Top = 48
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label10: TLabel
            Left = 120
            Top = 88
            Width = 25
            Height = 13
            Caption = 'CGC:'
          end
          object nomefantasia: TDBEdit
            Left = 248
            Top = 24
            Width = 265
            Height = 21
            DataField = 'Editora'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 2
          end
          object razaosocial: TDBEdit
            Left = 120
            Top = 64
            Width = 393
            Height = 21
            DataField = 'RazaoSocial'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 3
          end
          object ativo: TDBCheckBox
            Left = 8
            Top = 8
            Width = 50
            Height = 17
            Caption = 'Ativo'
            DataField = 'Ativo'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object codigo: TDBEdit
            Left = 120
            Top = 24
            Width = 121
            Height = 21
            DataField = 'Codedit'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 1
          end
          object tipo: TDBRadioGroup
            Left = 8
            Top = 32
            Width = 89
            Height = 89
            Caption = 'Tipo'
            DataField = 'TEdForn'
            DataSource = DMEditForn.DSEditForn
            Items.Strings = (
              'Editora'
              'Fornecedor'
              'Ambos')
            TabOrder = 5
            Values.Strings = (
              'EDITORA'
              'FORNECEDOR'
              'AMBOS')
          end
          object CGC: TDBEdit
            Left = 120
            Top = 104
            Width = 156
            Height = 21
            DataField = 'CGC'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 4
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Endereço'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 673
          Height = 184
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvSpace
          TabOrder = 0
          object Label4: TLabel
            Left = 15
            Top = 16
            Width = 46
            Height = 13
            Caption = 'Endereço'
          end
          object Label5: TLabel
            Left = 15
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label6: TLabel
            Left = 285
            Top = 49
            Width = 27
            Height = 13
            Caption = 'Bairro'
          end
          object Label7: TLabel
            Left = 15
            Top = 82
            Width = 22
            Height = 13
            Caption = 'País'
          end
          object Label8: TLabel
            Left = 285
            Top = 82
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object Label9: TLabel
            Left = 498
            Top = 49
            Width = 21
            Height = 13
            Caption = 'CEP'
          end
          object Label11: TLabel
            Left = 15
            Top = 113
            Width = 28
            Height = 13
            Caption = 'E-mail'
          end
          object Label12: TLabel
            Left = 15
            Top = 146
            Width = 23
            Height = 13
            Caption = 'Web'
          end
          object bairro: TDBEdit
            Left = 323
            Top = 45
            Width = 153
            Height = 21
            DataField = 'Bairro'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 2
          end
          object cidade: TDBEdit
            Left = 72
            Top = 45
            Width = 203
            Height = 21
            DataField = 'Cidade'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 1
          end
          object endereco: TDBEdit
            Left = 72
            Top = 12
            Width = 577
            Height = 21
            DataField = 'Ender'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 0
          end
          object CEP: TDBEdit
            Left = 528
            Top = 45
            Width = 121
            Height = 21
            DataField = 'CEP'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 3
          end
          object email: TDBEdit
            Left = 72
            Top = 109
            Width = 517
            Height = 21
            DataField = 'E_mail'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 4
          end
          object web: TDBEdit
            Left = 72
            Top = 142
            Width = 517
            Height = 21
            DataField = 'Web'
            DataSource = DMEditForn.DSEditForn
            TabOrder = 5
          end
          object pais: TRxDBLookupCombo
            Left = 72
            Top = 78
            Width = 203
            Height = 21
            DropDownCount = 8
            DataField = 'Pais'
            DataSource = DMEditForn.DSEditForn
            ListStyle = lsDelimited
            LookupField = 'pais'
            LookupDisplay = 'pais'
            LookupSource = DMEditForn.DSPais
            TabOrder = 6
          end
          object estado: TRxDBLookupCombo
            Left = 323
            Top = 78
            Width = 153
            Height = 21
            DropDownCount = 8
            DataField = 'Federa'
            DataSource = DMEditForn.DSEditForn
            LookupField = 'estado'
            LookupDisplay = 'estado'
            LookupSource = DMEditForn.DSRegiao
            TabOrder = 7
          end
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 216
    Width = 685
    Height = 151
    Align = alClient
    TabOrder = 1
    object Label13: TLabel
      Left = 51
      Top = 8
      Width = 19
      Height = 13
      Caption = 'DDI'
    end
    object Label14: TLabel
      Left = 129
      Top = 8
      Width = 24
      Height = 13
      Caption = 'DDD'
    end
    object Label15: TLabel
      Left = 208
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Número'
    end
    object Label16: TLabel
      Left = 286
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Ramal'
    end
    object Label17: TLabel
      Left = 368
      Top = 8
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label18: TLabel
      Left = 456
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Contato'
    end
    object DBEdit7: TDBEdit
      Left = 51
      Top = 29
      Width = 70
      Height = 21
      DataField = 'DDI_1'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 129
      Top = 29
      Width = 70
      Height = 21
      DataField = 'DDD_1'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 208
      Top = 29
      Width = 70
      Height = 21
      DataField = 'Fone_1'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 286
      Top = 29
      Width = 70
      Height = 21
      DataField = 'Ramal_1'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 3
    end
    object DBComboBox1: TDBComboBox
      Left = 365
      Top = 29
      Width = 81
      Height = 21
      DataField = 'ClassTel_1'
      DataSource = DMEditForn.DSEditForn
      ItemHeight = 13
      Items.Strings = (
        'Telefone'
        'Celular'
        'Fax'
        'Fone/Fax')
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 454
      Top = 29
      Width = 202
      Height = 21
      DataField = 'ObsTel_1'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 5
    end
    object DBEdit12: TDBEdit
      Left = 51
      Top = 58
      Width = 70
      Height = 21
      DataField = 'DDI_2'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 6
    end
    object DBEdit13: TDBEdit
      Left = 129
      Top = 58
      Width = 70
      Height = 21
      DataField = 'DDD_2'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 7
    end
    object DBEdit14: TDBEdit
      Left = 208
      Top = 58
      Width = 70
      Height = 21
      DataField = 'Fone_2'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 8
    end
    object DBEdit15: TDBEdit
      Left = 286
      Top = 58
      Width = 70
      Height = 21
      DataField = 'Ramal_2'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 9
    end
    object DBComboBox2: TDBComboBox
      Left = 365
      Top = 58
      Width = 81
      Height = 21
      DataField = 'ClassTel_2'
      DataSource = DMEditForn.DSEditForn
      ItemHeight = 13
      Items.Strings = (
        'Telefone'
        'Celular'
        'Fax'
        'Fone/Fax')
      TabOrder = 10
    end
    object DBEdit16: TDBEdit
      Left = 454
      Top = 58
      Width = 202
      Height = 21
      DataField = 'ObsTel_2'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 11
    end
    object DBEdit17: TDBEdit
      Left = 51
      Top = 86
      Width = 70
      Height = 21
      DataField = 'DDD_3'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 12
    end
    object DBEdit18: TDBEdit
      Left = 129
      Top = 86
      Width = 70
      Height = 21
      DataField = 'DDD_3'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 13
    end
    object DBEdit19: TDBEdit
      Left = 208
      Top = 86
      Width = 70
      Height = 21
      DataField = 'Fone_3'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 14
    end
    object DBEdit20: TDBEdit
      Left = 286
      Top = 86
      Width = 70
      Height = 21
      DataField = 'Ramal_3'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 15
    end
    object DBComboBox3: TDBComboBox
      Left = 365
      Top = 86
      Width = 81
      Height = 21
      DataField = 'ClassTel_3'
      DataSource = DMEditForn.DSEditForn
      ItemHeight = 13
      Items.Strings = (
        'Telefone'
        'Celular'
        'Fax'
        'Fone/Fax')
      TabOrder = 16
    end
    object DBEdit21: TDBEdit
      Left = 454
      Top = 86
      Width = 202
      Height = 21
      DataField = 'ObsTel_3'
      DataSource = DMEditForn.DSEditForn
      TabOrder = 17
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 367
    Width = 685
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 420
      Top = 10
      Width = 240
      Height = 25
      DataSource = DMEditForn.DSEditForn
      TabOrder = 0
    end
  end
  object FormStorage1: TFormStorage
    Options = [fpState, fpActiveControl]
    StoredProps.Strings = (
      'PageControl1.ActivePage')
    StoredValues = <>
    Left = 541
    Top = 41
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 581
    Top = 41
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Editora/Fornecedor'
    Left = 621
    Top = 41
  end
end
