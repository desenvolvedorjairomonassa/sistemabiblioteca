object Frmobra: TFrmobra
  Left = 216
  Top = 150
  Width = 785
  Height = 479
  BorderIcons = [biSystemMenu]
  Caption = 'Obra de Monografia/Multimeio'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 411
    Align = alClient
    TabOrder = 0
    object PageControlObra: TPageControl
      Left = 1
      Top = 1
      Width = 775
      Height = 409
      ActivePage = TSNotas
      Align = alClient
      MultiLine = True
      ScrollOpposite = True
      TabOrder = 0
      OnChange = PageControlObraChange
      object TSid: TTabSheet
        Caption = 'Acervo'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 91
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvSpace
          BorderStyle = bsSingle
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 17
            Width = 28
            Height = 13
            Caption = '&Título'
            FocusControl = titulo
          end
          object Label2: TLabel
            Left = 16
            Top = 51
            Width = 50
            Height = 13
            Caption = '&Do original'
            FocusControl = original
          end
          object titulo: TDBEdit
            Left = 72
            Top = 13
            Width = 402
            Height = 21
            Ctl3D = True
            DataField = 'Titulo'
            DataSource = DMobra.DSobra
            ParentCtl3D = False
            TabOrder = 0
          end
          object original: TDBEdit
            Left = 72
            Top = 47
            Width = 402
            Height = 21
            DataField = 'Titulo_Orig'
            DataSource = DMobra.DSobra
            TabOrder = 1
          end
          object GroupBox1: TGroupBox
            Left = 547
            Top = 11
            Width = 190
            Height = 65
            Caption = ' Exemplares '
            Enabled = False
            TabOrder = 2
            object Label3: TLabel
              Left = 16
              Top = 18
              Width = 24
              Height = 13
              Caption = 'Total'
            end
            object Label4: TLabel
              Left = 16
              Top = 39
              Width = 41
              Height = 13
              Caption = 'Perdidos'
            end
            object DBText1: TDBText
              Left = 83
              Top = 18
              Width = 65
              Height = 13
              DataField = 'Total'
              DataSource = DMobra.DSobra
            end
            object DBText2: TDBText
              Left = 83
              Top = 39
              Width = 65
              Height = 13
              DataField = 'Tperdas'
              DataSource = DMobra.DSobra
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 91
          Width = 767
          Height = 108
          Align = alClient
          BevelWidth = 2
          BorderStyle = bsSingle
          TabOrder = 1
          object Label5: TLabel
            Left = 16
            Top = 20
            Width = 62
            Height = 13
            Caption = '&Classificação'
            FocusControl = classificacao
          end
          object Label6: TLabel
            Left = 264
            Top = 21
            Width = 28
            Height = 13
            Caption = 'C&utter'
            FocusControl = cutter
          end
          object Label7: TLabel
            Left = 16
            Top = 50
            Width = 25
            Height = 13
            Caption = '&ISBN'
            FocusControl = ISBN
          end
          object classificacao: TDBEdit
            Left = 86
            Top = 17
            Width = 163
            Height = 21
            DataField = 'Classifica'
            DataSource = DMobra.DSobra
            TabOrder = 0
          end
          object ISBN: TDBEdit
            Left = 86
            Top = 46
            Width = 162
            Height = 21
            DataField = 'ISBN'
            DataSource = DMobra.DSobra
            TabOrder = 2
          end
          object cutter: TDBEdit
            Left = 303
            Top = 18
            Width = 160
            Height = 21
            Hint = 'Número de classificação do autor'
            DataField = 'Cutter'
            DataSource = DMobra.DSobra
            TabOrder = 1
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 199
          Width = 767
          Height = 182
          Align = alBottom
          BevelOuter = bvNone
          BevelWidth = 2
          BorderStyle = bsSingle
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          object Label10: TLabel
            Left = 358
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Editora'
          end
          object Label11: TLabel
            Left = 358
            Top = 44
            Width = 26
            Height = 13
            Caption = 'Local'
          end
          object Label12: TLabel
            Left = 358
            Top = 76
            Width = 31
            Height = 13
            Caption = 'Idioma'
          end
          object Label13: TLabel
            Left = 358
            Top = 108
            Width = 37
            Height = 13
            Caption = 'Suporte'
          end
          object editora: TRxDBLookupCombo
            Left = 406
            Top = 12
            Width = 221
            Height = 21
            Hint = 'Responsável pela publicação'
            DropDownCount = 8
            DisplayAllFields = True
            DataField = 'IDED'
            DataSource = DMobra.DSobra
            LookupField = 'ided'
            LookupDisplay = 'editora'
            LookupSource = DMobra.DSeditora
            TabOrder = 1
            OnKeyDown = editoraKeyDown
          end
          object Idioma: TDBLookupComboBox
            Left = 406
            Top = 72
            Width = 221
            Height = 21
            Hint = 'Idioma do conteúdo'
            DataField = 'Idioma'
            DataSource = DMobra.DSobra
            KeyField = 'idioma'
            ListField = 'idioma'
            ListSource = DMobra.DSidioma
            TabOrder = 3
          end
          object suporte: TDBLookupComboBox
            Left = 406
            Top = 104
            Width = 221
            Height = 21
            Hint = 'Mídia/Surporte'
            DataField = 'idsuporte'
            DataSource = DMobra.DSobra
            KeyField = 'idsuporte'
            ListField = 'suporte'
            ListSource = DMobra.DSsuporte
            TabOrder = 4
            OnKeyDown = suporteKeyDown
          end
          object local: TDBComboBox
            Left = 406
            Top = 40
            Width = 221
            Height = 21
            Hint = 'Local de publicação'
            DataField = 'Local'
            DataSource = DMobra.DSobra
            ItemHeight = 13
            Items.Strings = (
              's.l.')
            TabOrder = 2
          end
          object GroupBox2: TGroupBox
            Left = 13
            Top = 14
            Width = 223
            Height = 108
            Caption = ' Nº de volumes '
            TabOrder = 0
            object Label8: TLabel
              Left = 8
              Top = 37
              Width = 62
              Height = 13
              Caption = 'Bibliográficos'
            end
            object Label9: TLabel
              Left = 8
              Top = 72
              Width = 34
              Height = 13
              Caption = 'Físicos'
            end
            object biblio: TDBEdit
              Left = 78
              Top = 34
              Width = 51
              Height = 21
              DataField = 'Nvolbib'
              DataSource = DMobra.DSobra
              TabOrder = 0
            end
            object fisico: TDBEdit
              Left = 78
              Top = 70
              Width = 51
              Height = 21
              DataField = 'Nvolfis'
              DataSource = DMobra.DSobra
              TabOrder = 1
            end
            object UpDown1: TUpDown
              Left = 135
              Top = 30
              Width = 16
              Height = 24
              Min = 0
              Position = 0
              TabOrder = 2
              Wrap = False
            end
            object UpDown2: TUpDown
              Left = 135
              Top = 70
              Width = 16
              Height = 24
              Min = 0
              Position = 0
              TabOrder = 3
              Wrap = False
            end
          end
          object RxDBLookupCombo1: TRxDBLookupCombo
            Left = 631
            Top = 12
            Width = 105
            Height = 21
            Hint = 'Responsável pela publicação'
            DropDownCount = 8
            DisplayAllFields = True
            DataField = 'IDED'
            DataSource = DMobra.DSobra
            LookupField = 'ided'
            LookupDisplay = 'codedit'
            LookupSource = DMobra.DSeditora
            TabOrder = 5
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 631
            Top = 104
            Width = 105
            Height = 21
            Hint = 'Mídia/Surporte'
            DataField = 'idsuporte'
            DataSource = DMobra.DSobra
            KeyField = 'idsuporte'
            ListField = 'codigo'
            ListSource = DMobra.DSsuporte
            TabOrder = 6
          end
        end
      end
      object TSNotas: TTabSheet
        Caption = 'Notas'
        ImageIndex = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 381
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvSpace
          TabOrder = 0
          object Label14: TLabel
            Left = 16
            Top = 10
            Width = 68
            Height = 13
            Caption = 'Notas de série'
          end
          object Label15: TLabel
            Left = 16
            Top = 53
            Width = 59
            Height = 13
            Caption = 'Notas gerais'
          end
          object Label16: TLabel
            Left = 16
            Top = 119
            Width = 80
            Height = 13
            Caption = 'Notas de resumo'
          end
          object Label17: TLabel
            Left = 16
            Top = 186
            Width = 91
            Height = 13
            Caption = 'Notas de conteúdo'
          end
          object Label18: TLabel
            Left = 16
            Top = 260
            Width = 75
            Height = 13
            Caption = 'Descrição físca'
          end
          object geral: TDBMemo
            Left = 16
            Top = 69
            Width = 734
            Height = 44
            DataField = 'Nt_Geral'
            DataSource = DMobra.DSobra
            TabOrder = 0
          end
          object resumo: TDBMemo
            Left = 16
            Top = 135
            Width = 734
            Height = 44
            DataField = 'Resumo'
            DataSource = DMobra.DSobra
            TabOrder = 1
          end
          object conteudo: TDBMemo
            Left = 16
            Top = 204
            Width = 734
            Height = 44
            DataField = 'Conteudo'
            DataSource = DMobra.DSobra
            TabOrder = 2
          end
          object descricaofisica: TDBMemo
            Left = 16
            Top = 277
            Width = 734
            Height = 49
            DataField = 'DescriFi'
            DataSource = DMobra.DSobra
            TabOrder = 3
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 16
            Top = 27
            Width = 734
            Height = 21
            DropDownCount = 8
            DataField = 'Serie'
            DataSource = DMobra.DSobra
            LookupField = 'serie'
            LookupDisplay = 'serie'
            LookupSource = DMobra.DSserie
            TabOrder = 4
          end
        end
      end
      object TSexemplares: TTabSheet
        Caption = 'Exemplares'
        ImageIndex = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 381
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object RxDBGrid1: TRxDBGrid
            Left = 2
            Top = 31
            Width = 763
            Height = 348
            Align = alClient
            DataSource = DMobra.DSmono
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = RxDBGrid1DblClick
            IniStorage = FormPlacement1
            ShowGlyphs = False
            TitleButtons = True
            OnTitleBtnClick = RxDBGrid1TitleBtnClick
            Columns = <
              item
                Color = clSilver
                Expanded = False
                FieldName = 'Tombo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tomo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Volume'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ano_pub'
                Title.Caption = 'Ano'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Edicao'
                Title.Caption = 'Edição'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'No_exe'
                Title.Caption = 'Ex.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Titulo_exe'
                Title.Caption = 'Título'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 343
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Perda'
                Title.Caption = 'Baixa'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object ToolBar1: TToolBar
            Left = 2
            Top = 2
            Width = 763
            Height = 29
            BorderWidth = 1
            Caption = 'ToolBar1'
            Color = clMenu
            Flat = True
            Images = ImageList1
            ParentColor = False
            TabOrder = 1
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Hint = 'Adicionar'
              Caption = 'ToolButton1'
              ImageIndex = 0
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton1Click
            end
            object ToolButton2: TToolButton
              Left = 23
              Top = 0
              Hint = 'Apagar'
              Caption = 'ToolButton2'
              ImageIndex = 1
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton2Click
            end
            object ToolButton3: TToolButton
              Left = 46
              Top = 0
              Width = 8
              Caption = 'ToolButton3'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object ToolButton5: TToolButton
              Left = 54
              Top = 0
              Hint = 'Editar'
              Caption = 'ToolButton5'
              ImageIndex = 3
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton5Click
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 411
    Width = 777
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 10
      Top = 10
      Width = 234
      Height = 25
      DataSource = DMobra.DSobra
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object ImageList1: TImageList
    Left = 643
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
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
      0000000000000000000000000000000000000000000000000F000F000F000F00
      000000000000000000000000003C000000000F000F000F000F000F000F000F00
      0F000F000000000000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000000000000000000000000000000
      000000000000000000000000003C00000000000000000F000F00000000000F00
      0F000000000000000000003C003C003C00000F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0F00000000000000003C003C003C00000000000000000000000000000000
      00000000000000000000003C003C003C00000F000F000F000F000F000F000F00
      0F000000000000000000003C003C003C0000000000000F000F00000000000000
      0000000000000000003C003C003C003C003C0F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0F0000000000003C003C003C003C003C0000000000000000000000000000
      0000000000000000003C003C003C003C003C0F00FF7FFF7FFF7FFF7FFF7FFF7F
      0F00000000000000003C003C003C003C003C000000000F000F000F000F000F00
      0F0000000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0F000000000000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      0F0000000000000000000000003C00000000000000000F000F00000000000F00
      0F0000000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0F000000000000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      0F000F000F000F0000000000003C000000000000000000000F000F000F000F00
      000000000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0F000000000000000000003C000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F00000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      0F00E07FFF7F0F0000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0F000000000000000000003C000000000000FF7FFF7F8C00FF7F8C008C00
      FF7F00000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      0F00FF7FE07F0F0000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0F000000000000000000003C000000000000FF7FFF7F8C00FF7F8C00FF7F
      FF7F00000000000000000000003C000000000F00FF7FFF7FFF7F0F000F000F00
      0F00E07FFF7F0F0000000000003C000000000000000000000F000F000F000F00
      0F0000000000000000000000003C000000000F000F000F000F000F000F000F00
      0F000F000000000000000000003C000000000000FF7F8C008C00FF7FFF7F8C00
      FF7F00000000000000000000003C000000000F00FF7FFF7FFF7F0F00FF7F0F00
      E07FFF7FE07F0F0000000000003C00000000000000000F000F00000000000F00
      0F0000000000000000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000000FF7FFF7F8C00FF7F8C008C00
      FF7F00000000000000000000003C000000000F00FF7FFF7FFF7F0F000F00E07F
      FF7FE07FFF7F0F0000000000003C00000000000000000F000F00000000000F00
      0F0000000000000000000000003C00000000000000000000000000000F000F00
      0F000F000000000000000000003C000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F00000000000000000000003C000000000F000F000F000F000F00E07FFF7F
      0F000F000F000F0000000000003C000000000000000000000F000F000F000F00
      0F0000000000000000000000003C00000000000000000000000000000F00FF7F
      FF7F0F000000000000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000000000000000F00E07FFF7FE07F
      0F00E07F0F00000000000000003C000000000000000000000000000000000F00
      0F0000000000000000000000003C00000000000000000000000000000F00FF7F
      FF7F0F000000000000000000003C0000000000008C008C008C008C008C008C00
      8C0000000000000000000000003C000000000000000000000F00FF7FE07FFF7F
      0F000F000000000000000000003C000000000000000000000F000F000F000F00
      000000000000000000000000003C00000000000000000000000000000F000F00
      0F000F000000000000000000003C000000000000000000000000000000000000
      000000000000000000000000003C000000000000000000000F000F000F000F00
      0F0000000000000000000000003C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07F000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000EF3DEF3DEF3D
      E07FE07FEF3DEF3DEF3DEF3DE07FE07F000000000000744E744E744E744E744E
      744E744E744E744E744E744E00000000000000000000F75E0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07F0000000000000000
      000000000000000000000000E07F0000000000000000744EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000744EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000744EFF7F00000000FF7F
      FF7FFF7F000000000000FF7F00000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000744EFF7FFF7F0000FF7F
      FF7F000000000000FF7FFF7F00000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000744EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F00000000000000000000E07FE07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07F000000000000744EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000F75EFF7FEF01EF01FF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000E07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07FE07F00000000744EFF7F0000EF010000
      FF7F00000000FF7FFF7FFF7F00000000000000000000F75EFF7FEF01EF01FF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000000000000000000000000000000000000000744EFF7FEF01EF01EF01
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000F75EFF7FEF01EF010000
      0000FF7FFF7FFF7F0000000000000000000000000000F75E0000000000000000
      0000FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F0000000000000000000000000000744EFF7FFF7FEF01EF01
      EF01FF7FFF7FFF7FFF7FFF7F0000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7F0000E07F000000000000000000000000744EFF7FFF7FFF7FEF01
      EF01EF01FF7FFF7FFF7FFF7F0000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000E07FE07F00000000000000000000744EFF7FFF7FFF7FFF7F
      EF01EF01EF01FF7FFF7FFF7F00000000000000000000F75EF75EEF01EF01F75E
      F75EF75EF75EF75E0000000000000000000000000000F75EF75EF75EF75EF75E
      F75EF75EF75EF75E0000000000000000000000000000E07F0000000000000000
      00000000000000000000E07FE07F0000000000000000744EFF7F000000000000
      FF7FEF01EF01EF01FF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E07F000000000000000000000000E07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000EF3DEF3DEF3D
      E07FE07FEF3DEF3DEF3DEF3DE07FE07F000000000000007C007C007C007C007C
      007C007C007C007C007C007C007C0000000000000000F75E0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07F0000000000000000
      000000000000000000000000E07F0000000000000000007CFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000007CFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000007CFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000007CFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000007CFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F00000000000000000000E07FE07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07F000000000000007CFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FEF01EF01FF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000E07FE07F0000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000E07FE07FE07F00000000007CFF7F0000EF01FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FEF01EF01FF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000000000000000000000000000000000000000007CFF7FEF01EF01EF01
      FF7FFF7FFF7FFF7FFF7FFF7F007C0000000000000000F75EFF7FEF01EF010000
      0000FF7FFF7FFF7F0000000000000000000000000000F75E0000000000000000
      0000FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7FFF7F0000000000000000000000000000007CFF7FFF7FEF01EF01
      EF01FF7FFF7FFF7FFF7FFF7F007C000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F0000FF7F0000E07F000000000000000000000000007CFF7FFF7FFF7FEF01
      EF01EF01FF7FFF7FFF7FFF7F007C000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000EF01EF01EF01EF01EF01EF01
      EF01FF7FFF7FFF7F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7F000000000000E07FE07F00000000000000000000007CFF7FFF7FFF7FFF7F
      EF01EF01EF01FF7FFF7FFF7F007C0000000000000000F75EF75EEF01EF01F75E
      F75EF75EF75EF75E0000000000000000000000000000F75EF75EF75EF75EF75E
      F75EF75EF75EF75E0000000000000000000000000000E07F0000000000000000
      00000000000000000000E07FE07F0000000000000000007CFF7FFF7FFF7FFF7F
      FF7FEF01EF01EF01FF7FFF7F007C000000000000000000000000EF01EF010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0000000000000000
      E07FE07F0000000000000000E07FE07F000000000000007CFF7FFF7FFF7FFF7F
      FF7FFF7FEF01EF01EF01FF7F007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E07F000000000000000000000000
      E07F0000000000000000000000000000E07F00000000007C007C007C007C007C
      007C007C007CEF01007C007C007C00000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFEF03EF03EF03FFFFFFFF00F8FFFF
      FFFFFFFFFFFFFFFFEF03FFFFFFFFFFFFFFFFFFFFEF03EF03FFFFFFFF00F8FFFF
      FFFFFFFFFFFFFFFFEF03EF03FFFFFFFFFFFFFFFFFFFFEF03FFFFFFFF00F8FFFF
      FFFFFFFFFFFFFFFFEF03EF03EF03FFFFFFFFFFFFFFFFFFFFFFFFFFFF00F8FFFF
      FFFFFFFFFFFFFFFFFFFFEF03EF03EF03FFFFFFFFFFFFFFFFFFFFFFFF00F8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFEF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000000000000030001E0F000000000000765E41000004000000001E0F3000
      01103000765E2000505210001000200000F8FFFFFFFFEF030000000000F800F8
      00000000000000000000000000000000FFFFFFFFFF7EFFFFFFFFFFFF9001C003
      C00FC00FC003C003C00FC00FE003C003C00FC00FE003C003C00FC00FE003C003
      C00FC00FE003C003C00FC00F0001C003C00FC00F8000C003C00FC00FE007C003
      C00FC00FE00FC003800F800FE00FC003800F800FE027C003C01FC01FC073C003
      F3FFFFFF9E79C003FFFFFFFF7EFEC00300000000000000000000000000000000
      000000000000}
  end
  object FormStorage1: TFormStorage
    Active = False
    Options = [fpState, fpActiveControl]
    StoredProps.Strings = (
      'PageControlObra.ActivePage')
    StoredValues = <>
    Left = 565
  end
  object FormPlacement1: TFormPlacement
    Active = False
    PreventResize = True
    Left = 525
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Obra de Monografia/Multimeio'
    GradientInactive = True
    Left = 600
  end
end
