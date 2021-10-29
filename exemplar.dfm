object Frmexemplar: TFrmexemplar
  Left = 228
  Top = 137
  Width = 760
  Height = 457
  BorderIcons = [biSystemMenu]
  Caption = 'Exemplar'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
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
      DataSource = DMobra.DSmono
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 389
    Align = alClient
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
      object TSid: TTabSheet
        Caption = 'Exemplar'
        object Label14: TLabel
          Left = 8
          Top = 331
          Width = 80
          Height = 13
          Caption = '&Local depositário'
          FocusControl = depositario
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 122
          Width = 423
          Height = 106
          Caption = ' Especificações do exemplar '
          TabOrder = 2
          object Label1: TLabel
            Left = 8
            Top = 15
            Width = 31
            Height = 13
            Caption = 'Título:'
          end
          object Label2: TLabel
            Left = 8
            Top = 57
            Width = 28
            Height = 13
            Caption = 'ISBN:'
          end
          object titulo: TDBEdit
            Left = 8
            Top = 29
            Width = 411
            Height = 21
            DataField = 'Titulo_exe'
            DataSource = DMobra.DSmono
            TabOrder = 0
          end
          object isbn: TDBEdit
            Left = 8
            Top = 73
            Width = 123
            Height = 21
            DataField = 'ISBN'
            DataSource = DMobra.DSmono
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 196
          Top = 4
          Width = 229
          Height = 112
          Caption = ' Edição  '
          Color = clBtnFace
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object Label3: TLabel
            Left = 8
            Top = 22
            Width = 33
            Height = 13
            Caption = 'Edição'
          end
          object Label4: TLabel
            Left = 8
            Top = 51
            Width = 48
            Height = 13
            Caption = 'Impressão'
          end
          object Label5: TLabel
            Left = 8
            Top = 80
            Width = 38
            Height = 13
            Caption = 'Tiragem'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 142
            Top = 16
            Width = 79
            Height = 17
            Caption = 'Atualizado'
            DataField = 'Atualizado'
            DataSource = DMobra.DSmono
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 142
            Top = 37
            Width = 79
            Height = 17
            Caption = 'Revisado'
            DataField = 'Revisado'
            DataSource = DMobra.DSmono
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 142
            Top = 59
            Width = 79
            Height = 17
            Caption = 'Aumentado'
            DataField = 'Aumentado'
            DataSource = DMobra.DSmono
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 142
            Top = 80
            Width = 79
            Height = 17
            Caption = 'Ampliado'
            DataField = 'Ampliado'
            DataSource = DMobra.DSmono
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object edicao: TDBEdit
            Left = 64
            Top = 18
            Width = 53
            Height = 21
            DataField = 'Edicao'
            DataSource = DMobra.DSmono
            TabOrder = 0
          end
          object impressao: TDBEdit
            Left = 64
            Top = 47
            Width = 53
            Height = 21
            DataField = 'Impressao'
            DataSource = DMobra.DSmono
            TabOrder = 1
          end
          object tiragem: TDBEdit
            Left = 64
            Top = 76
            Width = 53
            Height = 21
            DataField = 'Tiragem'
            DataSource = DMobra.DSmono
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 264
          Top = 234
          Width = 161
          Height = 83
          Caption = ' Data de publicação '
          TabOrder = 5
          object Label8: TLabel
            Left = 20
            Top = 24
            Width = 19
            Height = 13
            Caption = 'Ano'
          end
          object Label9: TLabel
            Left = 20
            Top = 52
            Width = 39
            Height = 13
            Caption = 'Estação'
          end
          object ano: TDBEdit
            Left = 64
            Top = 20
            Width = 89
            Height = 21
            DataField = 'Ano_pub'
            DataSource = DMobra.DSmono
            TabOrder = 0
          end
          object estacao: TDBComboBox
            Left = 66
            Top = 48
            Width = 86
            Height = 21
            Style = csDropDownList
            DataField = 'Estacao'
            DataSource = DMobra.DSmono
            ItemHeight = 13
            Items.Strings = (
              'Inverno'
              'Outono'
              'Primavera'
              'Verão')
            Sorted = True
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 3
          Top = 4
          Width = 185
          Height = 113
          TabOrder = 0
          object Label10: TLabel
            Left = 8
            Top = 13
            Width = 33
            Height = 13
            Caption = '&Tombo'
            FocusControl = tombo
          end
          object Label11: TLabel
            Left = 8
            Top = 38
            Width = 35
            Height = 13
            Caption = 'Volume'
          end
          object Label12: TLabel
            Left = 8
            Top = 64
            Width = 27
            Height = 13
            Caption = 'Tomo'
          end
          object Label13: TLabel
            Left = 8
            Top = 89
            Width = 43
            Height = 13
            Caption = 'Exemplar'
          end
          object tombo: TDBEdit
            Left = 64
            Top = 9
            Width = 107
            Height = 21
            DataField = 'Tombo'
            DataSource = DMobra.DSmono
            TabOrder = 0
          end
          object volume: TDBEdit
            Left = 64
            Top = 34
            Width = 107
            Height = 21
            DataField = 'Volume'
            DataSource = DMobra.DSmono
            TabOrder = 1
          end
          object tomo: TDBEdit
            Left = 64
            Top = 60
            Width = 107
            Height = 21
            DataField = 'Tomo'
            DataSource = DMobra.DSmono
            TabOrder = 2
          end
          object exemplar: TDBEdit
            Left = 64
            Top = 85
            Width = 107
            Height = 21
            DataField = 'No_exe'
            DataSource = DMobra.DSmono
            TabOrder = 3
          end
        end
        object GroupBox5: TGroupBox
          Left = 128
          Top = 234
          Width = 129
          Height = 83
          TabOrder = 4
          object Label6: TLabel
            Left = 11
            Top = 18
            Width = 38
            Height = 13
            Caption = 'Páginas'
          end
          object Label7: TLabel
            Left = 11
            Top = 40
            Width = 47
            Height = 13
            Caption = 'Dimensão'
          end
          object paginas: TDBEdit
            Left = 65
            Top = 14
            Width = 51
            Height = 21
            DataField = 'Npag'
            DataSource = DMobra.DSmono
            TabOrder = 0
          end
          object dimensao: TDBEdit
            Left = 65
            Top = 36
            Width = 51
            Height = 21
            DataField = 'Dimensao'
            DataSource = DMobra.DSmono
            TabOrder = 1
          end
          object DBCheckBoxilustrado: TDBCheckBox
            Left = 11
            Top = 63
            Width = 97
            Height = 17
            Caption = 'Ilustrado ?'
            DataField = 'Ilust'
            DataSource = DMobra.DSmono
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object depositario: TDBLookupComboBox
          Left = 97
          Top = 327
          Width = 304
          Height = 21
          DataField = 'idlocal'
          DataSource = DMobra.DSmono
          KeyField = 'idlocal'
          ListField = 'Nome'
          ListSource = DMobra.DSlocal
          TabOrder = 6
        end
        object GroupBox6: TGroupBox
          Left = 3
          Top = 234
          Width = 121
          Height = 83
          TabOrder = 3
          object Label15: TLabel
            Left = 10
            Top = 40
            Width = 35
            Height = 13
            Caption = 'Motivo:'
          end
          object flag_emp: TDBCheckBox
            Left = 10
            Top = 16
            Width = 101
            Height = 17
            Caption = 'Não emprestar'
            DataField = 'Flag_emp'
            DataSource = DMobra.DSmono
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBComboBoxrazao: TDBComboBox
            Left = 10
            Top = 56
            Width = 104
            Height = 21
            Style = csDropDownList
            DataField = 'Razao'
            DataSource = DMobra.DSmono
            ItemHeight = 13
            Items.Strings = (
              'Obra de referência'
              'Obra rara')
            ParentShowHint = False
            ShowHint = False
            Sorted = True
            TabOrder = 1
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Assuntos'
        ImageIndex = 2
        object ToolBar2: TToolBar
          Left = 0
          Top = 0
          Width = 429
          Height = 29
          Caption = 'ToolBar1'
          Flat = True
          Images = ImageList1
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Caption = 'ToolButton1'
            ImageIndex = 0
          end
          object ToolButton2: TToolButton
            Left = 23
            Top = 0
            Caption = 'ToolButton2'
            ImageIndex = 1
          end
          object ToolButton3: TToolButton
            Left = 46
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object ToolButton4: TToolButton
            Left = 54
            Top = 0
            Caption = 'ToolButton4'
            ImageIndex = 2
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 29
          Width = 429
          Height = 332
          Align = alClient
          DataSource = DMobra.DSassunto_mono
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Assunto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 328
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'principal'
              PickList.Strings = (
                'Sim'
                'Não')
              Title.Caption = 'Principal'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idmono'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idassto'
              Visible = False
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Responsáveis'
        ImageIndex = 3
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 429
          Height = 29
          Caption = 'ToolBar2'
          Flat = True
          Images = ImageList1
          TabOrder = 0
          object ToolButton5: TToolButton
            Left = 0
            Top = 0
            Caption = 'ToolButton5'
            ImageIndex = 0
          end
          object ToolButton6: TToolButton
            Left = 23
            Top = 0
            Caption = 'ToolButton6'
            ImageIndex = 1
          end
          object ToolButton7: TToolButton
            Left = 46
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object ToolButton8: TToolButton
            Left = 54
            Top = 0
            Caption = 'ToolButton8'
            ImageIndex = 2
          end
        end
        object responsavel: TDBGrid
          Left = 0
          Top = 29
          Width = 429
          Height = 332
          Align = alClient
          DataSource = DMobra.DSautor_mono
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Autor'
              Title.Caption = 'Responsável'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 263
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipo'
              Title.Caption = 'Responsabilidade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idautor'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'idmono'
              Visible = False
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Aquisição'
        ImageIndex = 4
        object DBComboBox1: TDBComboBox
          Left = 8
          Top = 8
          Width = 145
          Height = 21
          Style = csDropDownList
          DataField = 'TipoAqs'
          DataSource = DMobra.DSmono
          ItemHeight = 13
          Items.Strings = (
            'Compra'
            'Doação'
            'Permuta')
          Sorted = True
          TabOrder = 0
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
          Images = ToolbarImages
          TabOrder = 0
          object ToolButton9: TToolButton
            Left = 0
            Top = 2
            Caption = 'ToolButton9'
            ImageIndex = 10
          end
          object ToolButton10: TToolButton
            Left = 23
            Top = 2
            Caption = 'ToolButton10'
            ImageIndex = 11
          end
          object ToolButton12: TToolButton
            Left = 46
            Top = 2
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton11: TToolButton
            Left = 54
            Top = 2
            Caption = 'ToolButton11'
            ImageIndex = 7
          end
        end
        object Imagem: TDBImage
          Left = 0
          Top = 29
          Width = 308
          Height = 215
          Align = alClient
          DataField = 'Capa'
          DataSource = DMobra.DSmono
          PopupMenu = PopupMenu1
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
        object texto: TRxDBRichEdit
          Left = 0
          Top = 0
          Width = 308
          Height = 138
          DataField = 'refbibli'
          DataSource = DMobra.DSmono
          Align = alClient
          Color = clInfoBk
          PopupMenu = PopupMen1
          TabOrder = 0
          OnChange = textoChange
        end
      end
    end
  end
  object FormPlacement1: TFormPlacement
    Options = [fpState, fpActiveControl]
    PreventResize = True
    Left = 227
    Top = 205
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 182
    Top = 203
  end
  object ImageList1: TImageList
    Left = 320
    Top = 205
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EFE3DFE3DEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF3FFF3F000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EFE3DFE3DEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF3FFF3F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF1E
      000000000000EF1EEF1EEF1EEF1EEF1EEF1EFE3DFE3DEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF3FFF3F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF1EEF1EEF1EEF1EEF1EEF1E0000
      EF1EEF1EEF1E0000EF1EEF1EEF1EEF1EEF1EEF1EFE3DFE3DEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF3FFF3F0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000EF1EEF1EEF1EEF1EEF1EEF1EFE3DFE3DEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF3FFF3F0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F000F00EF3D0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF3D0F000F000F00EF3D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000F000F000F000F000F00EF3D
      000000000000000000000000000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F000F000F000F000F00
      0F00EF3D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1E00000000EF3D0F000F000F000F00
      0F000F000F00EF3D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000F000F000F000F00
      0F000F000F000F000F00EF3D000000000000EF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1EEF1E
      EF1EEF1EEF1E0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F000F000F00
      0F000F000F000F000F000F000F00EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1EEF1EEF1EEF1EEF1EEF1E007C007C007C007C007C007C007C
      007C007C007C007C007C007C007C007C007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F001F001F00
      1F001F001F001F001F001F001F00000000001F001F00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF01EF01
      EF01EF01EF01EF01EF01FF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FEF01EF01EF010000000000001F001F001F001F00
      1F001F001F001F001F000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FF75EF75EF75EF75EF75EF75EF75EF75EF75E
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FE07F
      000000000000000000000000FF7FFF7FFF7F0000000000001F001F001F001F00
      1F001F001F00000000000000000000000000FF7FFF7FFF7FFF7FFF7FE07FE07F
      FF7FFF7FFF7FFF7FE07FE07FFF7FFF7FFF7FFF7FE07FE07FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F1F001F001F00FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000001F001F001F001F001F00
      1F0000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FEF01EF01FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001F001F001F001F001F000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FE07FFF7FFF7F
      FF7FFF7FFF7FFF7FE07FFF7FFF7FFF7FFF7F00001F001F001F00000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1F001F0000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07F000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000EF3DEF3DEF3D
      E07FE07FEF3DEF3DEF3DEF3DE07FE07F00000000000000000000000000000000
      000000000000000000000000EF3D0F000F0000000000F75E0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07F0000000000000000
      000000000000000000000000E07F000000000000000000000000000000000000
      0000000000000000EF3D0F000F000F00EF3D00000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000000000000000000000000000
      00000000EF3D0F000F000F000F000F00000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D000000000000000000000000000000000000
      EF3D0F000F000F000F000F000F000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000000000000000EF3D0F00
      0F000F000F000F000F000F00EF3D0000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D00000000000000000000EF3D0F000F000F00
      0F000F000F000F000F000F0000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F00000000000000000000E07FE07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07F00000000EF3D0F000F000F000F000F00
      0F000F000F000F000F00000000000000000000000000F75EFF7FEF01EF01FF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000E07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07FE07F007C007C007C007C007C007C007C
      007C007C007C007C007C007C007C007C007C00000000F75EFF7FEF01EF01FF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F00000000000000000000000000000000000000001F001F001F001F001F00
      1F001F001F001F001F00000000000000000000000000F75EFF7FEF01EF010000
      0000FF7FFF7FFF7F0000000000000000000000000000F75E0000000000000000
      0000FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F0000000000000000000000000000000000001F001F001F00
      1F001F001F001F001F001F000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7F0000E07F00000000000000000000000000000000000000001F00
      1F001F001F001F001F001F000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000E07FE07F0000000000000000000000000000000000000000
      00001F001F001F001F001F001F000000000000000000F75EF75EEF01EF01F75E
      F75EF75EF75EF75E0000000000000000000000000000F75EF75EF75EF75EF75E
      F75EF75EF75EF75E0000000000000000000000000000E07F0000000000000000
      00000000000000000000E07FE07F000000000000000000000000000000000000
      0000000000001F001F001F001F001F0000000000000000000000EF01EF010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F00000000000000000000000000000000
      000000000000000000001F001F001F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E07F000000000000000000000000
      E07F0000000000000000000000000000E07F0000000000000000000000000000
      00000000000000000000000000001F001F00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000007F00007F0000007F00007F00007F
      0000000000007F00000000000000000000000000000000007F00007F00007F00
      00000000007F000000000000000000007F0000000000000000007F00007F0000
      0000000000000000000000000000000000007F00007F0000000000007F00007F
      00000000000000000000000000000000FFFF0000000000001FFF000000000000
      07FF00000000000081FF000000000000C07F000000000000C01F000000000000
      E007000000000000F0010000000000000000000000000000F003000000000000
      E00F000000000000E03F000000000000C0FF00000000000083FF000000000000
      8FFF0000000000003FFF000000000000FFFFFFFFFF7EFFFFFFFFFFFF9001FFF8
      C00FC00FC003FFE0C00FC00FE003FF81C00FC00FE003FE03C00FC00FE003F803
      C00FC00FE003E007C00FC00F0001800FC00FC00F80000000C00FC00FE007C00F
      C00FC00FE00FF007800F800FE00FFC07800F800FE027FF03C01FC01FC073FFC1
      F3FFFFFF9E79FFF1FFFFFFFF7EFEFFFC00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Images = ToolbarImages
    Left = 557
    Top = 202
    object Salvar2: TMenuItem
      Caption = 'Salvar'
      ImageIndex = 10
      OnClick = Salvar2Click
    end
    object Carregarimagem1: TMenuItem
      Caption = 'Carregar imagem'
      ImageIndex = 11
      OnClick = Carregarimagem1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Copiar1: TMenuItem
      Action = EditCopyCmd
      OnClick = Copiar1Click
    end
    object Colar1: TMenuItem
      Action = EditPaste1
      Caption = 'Colar'
      OnClick = Colar1Click
    end
    object Cut2: TMenuItem
      Action = EditCut1
      Caption = 'Recortar'
      OnClick = Cut2Click
    end
    object Delete2: TMenuItem
      Action = EditDelete1
      Caption = 'Apagar'
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 557
    Top = 164
  end
  object ActionList1: TActionList
    Images = ToolbarImages
    Left = 624
    Top = 164
    object FileSaveCmd: TAction
      Category = 'File'
      Caption = '&Save'
      Checked = True
      Hint = 'Save current file'
      ImageIndex = 0
      ShortCut = 16467
    end
    object FilePrintCmd: TAction
      Category = 'File'
      Caption = '&Print'
      Hint = 'Imprime a referência'
      ImageIndex = 1
      ShortCut = 16464
    end
    object FileExitCmd: TAction
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit this application'
      ShortCut = 32856
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 624
    Top = 200
  end
  object SaveDialog: TSaveDialog
    Filter = 'Rich Text Files (*.RTF)|*.RTF|Text Files (*.TXT)|*.TXT'
    Title = 'Observação'
    Left = 656
    Top = 200
  end
  object ActionList2: TActionList
    Images = ToolbarImages
    Left = 656
    Top = 164
    object EditCopyCmd: TAction
      Category = 'Edit'
      Caption = '&Copiar'
      Hint = 'Copiar item selecionado para área de trabalho'
      ImageIndex = 4
      ShortCut = 16451
    end
    object EditFontCmd: TAction
      Category = 'Edit'
      Caption = '&Font...'
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut'
      ImageIndex = 6
      ShortCut = 16472
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      ImageIndex = 7
      ShortCut = 46
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste'
      ImageIndex = 8
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      ImageIndex = 9
      ShortCut = 32776
    end
  end
  object PopupMen1: TPopupMenu
    Images = ToolbarImages
    TrackButton = tbLeftButton
    Left = 592
    Top = 164
    object Salvar1: TMenuItem
      Action = FileSaveCmd
      Caption = '&Salvar'
      Hint = 'Salvar arquivo corrente'
      OnClick = Salvar1Click
    end
    object Carregar1: TMenuItem
      Caption = 'Carregar'
      OnClick = Carregar1Click
    end
    object Print1: TMenuItem
      Action = FilePrintCmd
      Caption = '&Imprimir'
      Hint = 'Imprimir'
      OnClick = Print1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Action = EditCopyCmd
      Hint = 'Copiar item selecionado para clipboard'
      OnClick = Copy1Click
    end
    object Paste1: TMenuItem
      Action = EditPaste1
      Caption = '&Colar'
      Hint = 'Colar'
      OnClick = Paste1Click
    end
    object Cut1: TMenuItem
      Action = EditCut1
      Caption = 'Recortar'
      Hint = 'Recortar'
    end
    object Delete1: TMenuItem
      Action = EditDelete1
      Caption = '&Apagar'
      Hint = 'Apagar'
    end
    object Undo1: TMenuItem
      Action = EditUndo1
      Caption = '&Voltar'
      Hint = 'Voltar'
    end
    object SelectAll1: TMenuItem
      Action = EditSelectAll1
      Caption = 'Selecionar tudo'
      Hint = 'Selecionar tudo'
    end
  end
  object ToolbarImages: TImageList
    Left = 688
    Top = 164
    Bitmap = {
      494C01010D000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001001000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F1000000000000000EF3D0000E07F0000
      0000EF3DEF3DEF3D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7F00000000FF7F1000100010001000000000000000FF3DFF7FFF7FFF7F
      FF7F0000E07F0000EF3DEF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7F1000FF7F100000000000000000000000EF3DE07FFF7F
      FF7FE07F0000FF7FE07F0000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7FFF7FFF7FFF7F10001000000000000000000000000000EF3DE07FFF7F
      FF7FE07F0000FF7FE07F0000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F00000000FF7F0000
      1000100010001000100010000000000000000000000000000000EF3DFF7FFF7F
      FF7FFF7F0000FF7F00000000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      FF7F0000000000000000000000000000000000000000000000000000EF3DFF7F
      FF7FE07FEF3D0000FF7FE07F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FE07FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF01EF01
      FF7FE07FFF7FFF7FFF7FE07F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF01EF01000000000000EF01
      FF7FFF7FFF7FE07FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010001000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF03EF010000FF030000EF01
      00000000FF7FFF7FFF7FE07F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000000001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF03FF0300000000FF03FF03
      FF7FFF7FFF7FE07FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000FF03FF0300000000FF03FF03
      FF7FFF7FFF7FE07FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      FF7FE07FFF7FFF7FFF7FE07F0000000000000000000000000000000000000000
      0000000000000000000010000000000000000000000000000000000010001000
      1000000010000000000010000000000000000000000000420042000000000000
      00000000000000000000000000420000000000000000000000000000EF3DFF7F
      FF7FFF7FFF7FE07FFF7FFF7F0000000000000000000010001000100010001000
      0000000000000000000010000000000000000000000000000000000000000000
      1000000010001000100000000000000000000000000000420042000000000000
      00000000000000000000000000420000000000000000000000000000EF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3D000000000000000010001000100010000000
      0000000000000000000000001000000000000000000000000000000000000000
      1000000010000000000000000000000000000000000000420042004200420042
      0042004200420042004200420042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07FE07FE07FE07F
      E07FE07FE07FE07FE07FE07FE07F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      1000100010001000100010001000100010000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07F00000000E07F
      E07FE07FE07FE07FE07FE07FE07F000000000000000000000000EF3D00000000
      0000000000000000000000000000000000000000000000000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07F0000E07FE07F
      E07FE07FE07FE07F0000E07FE07F000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000104200421042004210421000
      FF7F000000000000000000000000FF7F10000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07FE07F0000E07F
      E07FE07FE07F000000000000E07F000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07FE07F00000000
      E07FE07F00000000E07FE07FE07F000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000104200421042004210421000
      FF7F000000000000FF7F10001000100010000000000000000000000000000000
      00000000000000000000100000000000000000000000E07FE07FE07FE07F0000
      E07F00000000E07FE07FE07FE07F000000001F0000001F001F001F00FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7F1000FF7F100000000000000010001000100010001000
      00000000000000000000100000000000000000000000E07FE07FE07FE07F0000
      00000000E07FE07FE07FE07FE07F000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000104200421042004210421000
      FF7FFF7FFF7FFF7FFF7F10001000000000000000000010001000100010000000
      00000000000000000000000010000000000000000000FF03FF03FF03FF030000
      00000000FF03FF03FF03FF03FF03000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000004210420042104200421000
      1000100010001000100010000000000000000000000010001000100000000000
      00000000000000000000000010000000000000000000FF03FF030000FF03F75E
      0000000000000000FF03FF03FF03000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FEF3D000000000000000000000000104200421042004210420042
      1042004210420042104200420000000000000000000010001000000010000000
      00000000000000000000000010000000000000000000FF03FF03FF030000F75E
      00000000FF03FF03FF03FF03FF03000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FEF3D000000000000000000000000004210420000000000000000
      0000000000000000104210420000000000000000000010000000000000001000
      10000000000000000000100000000000000000000000FF03FF03FF03FF030000
      00000000FF03FF03FF03FF03FF03000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FEF3D000000000000000000000000104210420000000000000000
      0000000000000000104200420000000000000000000000000000000000000000
      00001000100010001000000000000000000000000000FF03FF03FF03FF03FF03
      00000000FF03FF03FF03FF03FF03000000000000000000000000000000000000
      0000000000000000000000001F000000000000000042104200420000E07F0000
      0000E07F00001042004210420000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF03FF03FF03FF03FF03
      FF0300000000FF03FF03FF03FF030000000000000000000000001F001F001F00
      0000000000000000000000001F001F000000000000000000000000000000E07F
      E07F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF03FF03FF03FF03FF03
      FF0300000000FF03FF03FF03FF0300000000000000000000000000001F001F00
      1F001F001F001F001F001F001F001F001F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03000000000000000000000000000000000000
      0000000000000000000000001F001F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF03FF03FF03000000000000000000000000000000000000
      0000000000000000000000001F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      1000100010001000100010001000100010000000000000000000000010001000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000100010001000100010001000100010000000000000000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000100000000000
      1000000000001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7F000000000000000000000000FF7F10000000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000FF7F00000000000000000000FF7F10000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7F000000000000FF7F10001000100010000000000000000000000010001000
      1000000010000000000010000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7F00000000000000000000FF7F10000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7F1000FF7F100000000000000000000000000000000000
      1000000010001000100000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7FFF7FFF7FFF7F10000000104200421042004210421000
      FF7FFF7FFF7FFF7FFF7F10001000000000000000000000000000000000000000
      1000000010000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7F00000000FF7F10001000100010000000004210420042104200421000
      1000100010001000100010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      1000FF7FFF7FFF7FFF7F1000FF7F100000000000104200421042004210420042
      1042004210420042104200420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      1000FF7FFF7FFF7FFF7F10001000000000000000004210420000000000000000
      0000000000000000104210420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F00000000FF7F0000
      1000100010001000100010000000000000000000104210420000000000000000
      0000000000000000104200420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      FF7F0000000000000000000000000000000000000042104200420000E07F0000
      0000E07F00001042004210420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      000000000000000000000000000000000000000000000000000000000000E07F
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010001000
      0000000000000000000000000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000000001000100000000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      E07FE07FE07F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100000000000
      1000000010000000000010000000000000000000000000420042000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      1042104210420000000000000000000000000000000000000000000000000000
      0000000000000000000010000000000000000000000000000000000010001000
      1000000010000000000010000000000000000000000000420042004200420042
      0042004200420042004200420042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000100010001000
      0000000000000000000010000000000000000000000000000000000000000000
      1000000010001000100000000000000000000000000000420042000000000000
      0000000000000000000000420042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000100010000000
      0000000000000000000000001000000000000000000000000000000000000000
      1000000010000000000000000000000000000000000000420000000000000000
      0000000000000000000000000042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000100000000000
      0000000000000000000000001000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      000000000000000000000000004200000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000010001000000010000000
      0000000000000000000000001000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      0000000000000000000000000042000000000000000000000000FF7F00000000
      000000000000FF7F000000000000000000000000000010000000000000001000
      1000000000000000000010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      0000000000000000000000000042000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000100010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      00000000000000000000000000000000000000000000000000000000FF7F0000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420000000000000000
      00000000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00F01F000000000000EA07000000000000
      E023000000000000F009DFFF00000000F009000000000000F00100000000DFFF
      F805000000000000F80500000000000090050000000000000005000000000000
      00050000000000000005FFFF0000FFFF00050000000000009805000000000000
      F8050000FFFF0000F801000000000000FFFFFFFFC003FFFFFC00FFFFC003F007
      8000FFFFC003F0070000FFFFC003F0070000FFFFC003F0070000FFF7C0034007
      0001C1F7C003F0070003C3FBC003F0070003C7FBC003F00F0003CBFBC003F01F
      0003DCF7C003F01F0FC3FF0FC003FFFB0003FFFFC003F1F98007FFFFC003F800
      F87FFFFFC003FFF9FFFFFFFFC003FFFBFFFFFFFFFFFFFFFFFFFFFC00F9FFFFFF
      FE008000F6CFEFFDFE000000F6B7C7FFFE000000F6B7C3FB80000000F8B7E3F7
      80000001FE8FF1E780000003FE3FF8CF80000003FF7FFC1F80010003FE3FFE3F
      80030003FEBFFC1F80070FC3FC9FF8CF807F0003FDDFE1E780FF8007FDDFC3F3
      81FFF87FFDDFC7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001C007FFFFF9FF
      8031BFEBFFFFF6CF80310005FFFFF6B780317E31FFFFF6B780017E35FFF7F8B7
      80010006C1F7FE8F80017FEAC3FBFE3F8FF18014C7FBFF7F8FF1C00ACBFBFE3F
      8FF1E001DCF7FEBF8FF1E007FF0FFC9F8FF1F007FFFFFDDF8FF5F003FFFFFDDF
      8001F803FFFFFDDFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PrintDialog: TPrintDialog
    Left = 688
    Top = 200
  end
  object ActionList3: TActionList
    Images = ToolbarImages
    Left = 527
    Top = 202
    object Salvar: TAction
      ImageIndex = 10
    end
    object Carregar: TAction
      ImageIndex = 11
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 527
    Top = 165
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Rich Text Files (*.RTF)|*.RTF|Text Files (*.TXT)|*.TXT'
    Left = 592
    Top = 202
  end
end
