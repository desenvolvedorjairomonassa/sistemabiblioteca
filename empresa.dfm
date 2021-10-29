object FrmEmpresa: TFrmEmpresa
  Left = 208
  Top = 184
  Width = 760
  Height = 457
  Caption = 'Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 389
    Width = 752
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 495
      Top = 10
      Width = 234
      Height = 25
      DataSource = DMempresa.DSempresa
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 389
    Align = alLeft
    TabOrder = 1
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 439
      Height = 231
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 2
        Width = 435
        Height = 227
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Identificação'
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 427
            Height = 199
            Align = alClient
            BevelInner = bvLowered
            BevelOuter = bvSpace
            TabOrder = 0
            object Label3: TLabel
              Left = 13
              Top = 9
              Width = 44
              Height = 13
              Caption = 'Empresa:'
            end
            object Label1: TLabel
              Left = 13
              Top = 52
              Width = 64
              Height = 13
              Caption = 'Razão social:'
            end
            object Label10: TLabel
              Left = 13
              Top = 94
              Width = 25
              Height = 13
              Caption = 'CGC:'
            end
            object nome: TDBEdit
              Left = 13
              Top = 25
              Width = 393
              Height = 21
              DataField = 'Nome'
              DataSource = DMempresa.DSempresa
              TabOrder = 0
            end
            object ativo: TDBCheckBox
              Left = 293
              Top = 122
              Width = 50
              Height = 17
              Caption = 'Ativo'
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
              Visible = False
            end
            object razaosocial: TDBEdit
              Left = 13
              Top = 68
              Width = 393
              Height = 21
              DataField = 'RazaoSocial'
              DataSource = DMempresa.DSempresa
              TabOrder = 2
            end
            object CGC: TDBEdit
              Left = 13
              Top = 112
              Width = 156
              Height = 21
              TabOrder = 3
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Endereço'
          ImageIndex = 1
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 427
            Height = 201
            Align = alTop
            BevelInner = bvLowered
            BevelOuter = bvSpace
            TabOrder = 0
            object Label4: TLabel
              Left = 12
              Top = 16
              Width = 46
              Height = 13
              Caption = 'Endereço'
            end
            object Label5: TLabel
              Left = 12
              Top = 49
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label7: TLabel
              Left = 12
              Top = 108
              Width = 22
              Height = 13
              Caption = 'País'
            end
            object Label11: TLabel
              Left = 12
              Top = 138
              Width = 28
              Height = 13
              Caption = 'E-mail'
            end
            object Label12: TLabel
              Left = 12
              Top = 171
              Width = 23
              Height = 13
              Caption = 'Web'
            end
            object Label6: TLabel
              Left = 201
              Top = 49
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object Label8: TLabel
              Left = 201
              Top = 109
              Width = 33
              Height = 13
              Caption = 'Estado'
            end
            object Label9: TLabel
              Left = 13
              Top = 78
              Width = 21
              Height = 13
              Caption = 'CEP'
            end
            object endereco: TDBEdit
              Left = 65
              Top = 12
              Width = 328
              Height = 21
              DataField = 'Ender'
              DataSource = DMempresa.DSempresa
              TabOrder = 0
            end
            object cidade: TDBEdit
              Left = 65
              Top = 45
              Width = 131
              Height = 21
              DataField = 'Cidade'
              DataSource = DMempresa.DSempresa
              TabOrder = 1
            end
            object pais: TRxDBLookupCombo
              Left = 65
              Top = 104
              Width = 131
              Height = 21
              DropDownCount = 8
              DataField = 'Pais'
              DataSource = DMempresa.DSempresa
              LookupField = 'pais'
              LookupDisplay = 'pais'
              LookupSource = DMempresa.DSPais
              TabOrder = 4
            end
            object email: TDBEdit
              Left = 65
              Top = 134
              Width = 328
              Height = 21
              DataField = 'E_mail'
              DataSource = DMempresa.DSempresa
              TabOrder = 6
            end
            object web: TDBEdit
              Left = 65
              Top = 167
              Width = 328
              Height = 21
              DataField = 'Web'
              DataSource = DMempresa.DSempresa
              TabOrder = 7
            end
            object bairro: TDBEdit
              Left = 238
              Top = 45
              Width = 155
              Height = 21
              DataField = 'Bairro'
              DataSource = DMempresa.DSempresa
              TabOrder = 2
            end
            object estado: TRxDBLookupCombo
              Left = 239
              Top = 105
              Width = 154
              Height = 21
              DropDownCount = 8
              DataField = 'Federa'
              DataSource = DMempresa.DSempresa
              LookupField = 'estado'
              LookupDisplay = 'estado'
              LookupSource = DMempresa.DSRegiao
              TabOrder = 5
            end
            object CEP: TDBEdit
              Left = 65
              Top = 74
              Width = 131
              Height = 21
              DataField = 'CEP'
              DataSource = DMempresa.DSempresa
              TabOrder = 3
            end
          end
        end
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 232
      Width = 439
      Height = 156
      Align = alClient
      BevelOuter = bvSpace
      TabOrder = 1
      object Label13: TLabel
        Left = 10
        Top = 8
        Width = 19
        Height = 13
        Caption = 'DDI'
      end
      object Label14: TLabel
        Left = 83
        Top = 8
        Width = 24
        Height = 13
        Caption = 'DDD'
      end
      object Label15: TLabel
        Left = 155
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Número'
      end
      object Label16: TLabel
        Left = 228
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Ramal'
      end
      object Label17: TLabel
        Left = 301
        Top = 8
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object DDI1: TDBEdit
        Left = 10
        Top = 29
        Width = 70
        Height = 21
        DataField = 'DDI_1'
        DataSource = DMempresa.DSempresa
        TabOrder = 0
      end
      object DDI2: TDBEdit
        Left = 10
        Top = 58
        Width = 70
        Height = 21
        DataField = 'DDI_2'
        DataSource = DMempresa.DSempresa
        TabOrder = 5
      end
      object DDI3: TDBEdit
        Left = 10
        Top = 86
        Width = 70
        Height = 21
        DataField = 'DDI_3'
        DataSource = DMempresa.DSempresa
        TabOrder = 10
      end
      object DDD1: TDBEdit
        Left = 83
        Top = 29
        Width = 70
        Height = 21
        DataField = 'DDD_1'
        DataSource = DMempresa.DSempresa
        TabOrder = 1
      end
      object DDD2: TDBEdit
        Left = 83
        Top = 58
        Width = 70
        Height = 21
        DataField = 'DDD_2'
        DataSource = DMempresa.DSempresa
        TabOrder = 6
      end
      object DDD3: TDBEdit
        Left = 83
        Top = 86
        Width = 70
        Height = 21
        DataField = 'DDD_3'
        DataSource = DMempresa.DSempresa
        TabOrder = 11
      end
      object N1: TDBEdit
        Left = 155
        Top = 29
        Width = 70
        Height = 21
        DataField = 'Fone_1'
        DataSource = DMempresa.DSempresa
        TabOrder = 2
      end
      object n2: TDBEdit
        Left = 155
        Top = 58
        Width = 70
        Height = 21
        DataField = 'Fone_2'
        DataSource = DMempresa.DSempresa
        TabOrder = 7
      end
      object n3: TDBEdit
        Left = 155
        Top = 86
        Width = 70
        Height = 21
        DataField = 'Fone_3'
        DataSource = DMempresa.DSempresa
        TabOrder = 12
      end
      object ramal1: TDBEdit
        Left = 228
        Top = 29
        Width = 70
        Height = 21
        DataField = 'Ramal_1'
        DataSource = DMempresa.DSempresa
        TabOrder = 3
      end
      object ramal2: TDBEdit
        Left = 228
        Top = 58
        Width = 70
        Height = 21
        DataField = 'Ramal_2'
        DataSource = DMempresa.DSempresa
        TabOrder = 8
      end
      object ramal3: TDBEdit
        Left = 228
        Top = 86
        Width = 70
        Height = 21
        DataField = 'Ramal_3'
        DataSource = DMempresa.DSempresa
        TabOrder = 13
      end
      object tipo1: TDBComboBox
        Left = 301
        Top = 29
        Width = 86
        Height = 21
        DataField = 'ClassTel_1'
        DataSource = DMempresa.DSempresa
        ItemHeight = 13
        Items.Strings = (
          'Telefone'
          'Celular'
          'Fax'
          'Fone/Fax')
        TabOrder = 4
      end
      object tipo2: TDBComboBox
        Left = 301
        Top = 58
        Width = 86
        Height = 21
        DataField = 'ClassTel_2'
        DataSource = DMempresa.DSempresa
        ItemHeight = 13
        Items.Strings = (
          'Telefone'
          'Celular'
          'Fax'
          'Fone/Fax')
        TabOrder = 9
      end
      object tipo3: TDBComboBox
        Left = 301
        Top = 86
        Width = 86
        Height = 21
        DataField = 'ClassTel_3'
        DataSource = DMempresa.DSempresa
        ItemHeight = 13
        Items.Strings = (
          'Telefone'
          'Celular'
          'Fax'
          'Fone/Fax')
        TabOrder = 14
      end
    end
  end
  object Panel3: TPanel
    Left = 441
    Top = 0
    Width = 311
    Height = 389
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 2
      Top = 246
      Width = 307
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 307
      Height = 244
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object ToolBar4: TToolBar
        Left = 0
        Top = 0
        Width = 307
        Height = 29
        Caption = 'ToolBar4'
        TabOrder = 0
      end
      object Imagem: TDBImage
        Left = 0
        Top = 29
        Width = 307
        Height = 215
        Align = alClient
        DataField = 'Foto'
        DataSource = DMempresa.DSempresa
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 249
      Width = 307
      Height = 138
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object ToolBar5: TToolBar
        Left = 0
        Top = 0
        Width = 307
        Height = 29
        Caption = 'ToolBar3'
        TabOrder = 0
      end
      object RxDBRichEdit1: TRxDBRichEdit
        Left = 0
        Top = 29
        Width = 307
        Height = 109
        Align = alClient
        Color = clInfoBk
        TabOrder = 1
      end
    end
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    Left = 279
    Top = 43
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'PageControl1.ActivePage')
    StoredValues = <>
    Left = 319
    Top = 43
  end
end
