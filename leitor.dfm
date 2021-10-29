object Frmleitor: TFrmleitor
  Left = 208
  Top = 140
  AutoScroll = False
  Caption = 'Leitor'
  ClientHeight = 430
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    BevelOuter = bvLowered
    Color = clMenu
    TabOrder = 0
    object RxSpeedButton1: TRxSpeedButton
      Left = 408
      Top = 10
      Width = 25
      Height = 25
      Caption = '->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = RxSpeedButton1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 10
      Top = 10
      Width = 234
      Height = 25
      DataSource = DMleitor.DSleitor
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 389
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 437
      Top = 0
      Width = 3
      Height = 389
      Cursor = crHSplit
    end
    object PageControlExemplar: TPageControl
      Left = 0
      Top = 0
      Width = 437
      Height = 389
      ActivePage = TabSheet5
      Align = alLeft
      RaggedRight = True
      TabOrder = 0
      object TabSheet5: TTabSheet
        Caption = 'Identificação'
        ImageIndex = 4
        object Label3: TLabel
          Left = 13
          Top = 4
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label13: TLabel
          Left = 11
          Top = 109
          Width = 56
          Height = 13
          Caption = 'Nascimento'
        end
        object Label14: TLabel
          Left = 13
          Top = 53
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object nome: TDBEdit
          Left = 13
          Top = 20
          Width = 393
          Height = 21
          DataField = 'Nome'
          DataSource = DMleitor.DSleitor
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 339
          Top = 71
          Width = 61
          Height = 17
          Caption = 'Ativo'
          DataField = 'ativo'
          DataSource = DMleitor.DSleitor
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBDateEdit1: TDBDateEdit
          Left = 84
          Top = 105
          Width = 121
          Height = 21
          DataField = 'Dtnascimento'
          DataSource = DMleitor.DSleitor
          CheckOnExit = True
          NumGlyphs = 2
          CalendarStyle = csDialog
          TabOrder = 2
        end
        object GroupBox1: TGroupBox
          Left = 13
          Top = 147
          Width = 393
          Height = 193
          Caption = ' Contatos '
          Color = clSilver
          ParentColor = False
          TabOrder = 3
          object Label1: TLabel
            Left = 24
            Top = 19
            Width = 58
            Height = 13
            Caption = 'Residencial:'
          end
          object Label2: TLabel
            Left = 24
            Top = 76
            Width = 49
            Height = 13
            Caption = 'Comerical:'
          end
          object Label10: TLabel
            Left = 24
            Top = 134
            Width = 35
            Height = 13
            Caption = 'Celular:'
          end
          object DBEdit1: TDBEdit
            Left = 24
            Top = 37
            Width = 121
            Height = 21
            DataField = 'residencial'
            DataSource = DMleitor.DSleitor
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 24
            Top = 94
            Width = 121
            Height = 21
            DataField = 'comercial'
            DataSource = DMleitor.DSleitor
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 24
            Top = 151
            Width = 121
            Height = 21
            DataField = 'Celular'
            DataSource = DMleitor.DSleitor
            TabOrder = 2
          end
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 104
          Top = 69
          Width = 220
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Idgrupo'
          DataSource = DMleitor.DSleitor
          EmptyValue = '<grupo>'
          FieldsDelimiter = '|'
          ImeMode = imChinese
          LookupField = 'idgrupo'
          LookupDisplay = 'grupo'
          LookupSource = DMleitor.DSgrupo
          TabOrder = 4
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 13
          Top = 69
          Width = 88
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'Idgrupo'
          DataSource = DMleitor.DSleitor
          EmptyValue = '<grupo>'
          FieldsDelimiter = '|'
          ImeMode = imChinese
          LookupField = 'idgrupo'
          LookupDisplay = 'codigo'
          LookupSource = DMleitor.DSgrupo
          TabOrder = 5
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Endereço'
        ImageIndex = 1
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 429
          Height = 361
          Align = alClient
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
            DataSource = DMleitor.DSleitor
            TabOrder = 0
          end
          object cidade: TDBEdit
            Left = 65
            Top = 45
            Width = 131
            Height = 21
            DataField = 'Cidade'
            DataSource = DMleitor.DSleitor
            TabOrder = 1
          end
          object pais: TRxDBLookupCombo
            Left = 65
            Top = 104
            Width = 131
            Height = 21
            DropDownCount = 8
            DataField = 'Pais'
            DataSource = DMleitor.DSleitor
            LookupField = 'pais'
            LookupDisplay = 'pais'
            LookupSource = DMleitor.DSPais
            TabOrder = 4
          end
          object email: TDBEdit
            Left = 65
            Top = 134
            Width = 328
            Height = 21
            DataField = 'E_mail'
            DataSource = DMleitor.DSleitor
            TabOrder = 6
          end
          object web: TDBEdit
            Left = 65
            Top = 167
            Width = 328
            Height = 21
            DataField = 'Web'
            DataSource = DMleitor.DSleitor
            TabOrder = 7
          end
          object bairro: TDBEdit
            Left = 238
            Top = 45
            Width = 155
            Height = 21
            DataField = 'Bairro'
            DataSource = DMleitor.DSleitor
            TabOrder = 2
          end
          object estado: TRxDBLookupCombo
            Left = 239
            Top = 105
            Width = 154
            Height = 21
            DropDownCount = 8
            DataField = 'Federa'
            DataSource = DMleitor.DSleitor
            LookupField = 'estado'
            LookupDisplay = 'estado'
            LookupSource = DMleitor.DSRegiao
            TabOrder = 5
          end
          object CEP: TDBEdit
            Left = 65
            Top = 74
            Width = 131
            Height = 21
            DataSource = DMleitor.DSleitor
            TabOrder = 3
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 440
      Top = 0
      Width = 312
      Height = 389
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 2
        Top = 246
        Width = 308
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 308
        Height = 244
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object ToolBar4: TToolBar
          Left = 0
          Top = 0
          Width = 308
          Height = 29
          Caption = 'ToolBar4'
          TabOrder = 0
        end
        object Imagem: TDBImage
          Left = 0
          Top = 29
          Width = 308
          Height = 215
          Align = alClient
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 249
        Width = 308
        Height = 138
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object RxDBRichEdit1: TRxDBRichEdit
          Left = 0
          Top = 0
          Width = 308
          Height = 138
          DataField = 'Obs'
          DataSource = DMleitor.DSleitor
          Align = alClient
          Color = clInfoBk
          PlainText = True
          TabOrder = 0
        end
      end
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 342
    Top = 304
  end
  object FormPlacement1: TFormPlacement
    Options = [fpState, fpActiveControl]
    PreventResize = True
    Left = 387
    Top = 309
  end
end
