object FrmGridObra: TFrmGridObra
  Left = 179
  Top = 91
  Width = 800
  Height = 545
  Caption = 'Obra de Monografia/Multimeio'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 56
    Align = alTop
    Color = clMaroon
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 10
      Width = 49
      Height = 13
      Caption = 'Editora :'
      Color = clMaroon
      FocusControl = editoraprocura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 170
      Top = 10
      Width = 46
      Height = 13
      Caption = 'Idioma :'
      Color = clMaroon
      FocusControl = idiomaprocura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 320
      Top = 10
      Width = 53
      Height = 13
      Caption = 'Suporte :'
      Color = clMaroon
      FocusControl = suporteprocura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object editoraprocura: TRxDBLookupCombo
      Left = 15
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      DisplayEmpty = '<todas editoras>'
      EmptyValue = '<todas editoras>'
      ListStyle = lsDelimited
      LookupField = 'ided'
      LookupDisplay = 'editora'
      LookupSource = DMobra.DSeditora
      TabOrder = 0
      OnCloseUp = editoraprocuraCloseUp
    end
    object idiomaprocura: TRxDBLookupCombo
      Left = 168
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      DisplayEmpty = '<todos os idiomas>'
      EmptyValue = '<todos os idiomas>'
      ListStyle = lsDelimited
      LookupField = 'idioma'
      LookupDisplay = 'idioma'
      LookupSource = DMobra.DSidioma
      TabOrder = 1
      OnCloseUp = idiomaprocuraCloseUp
    end
    object suporteprocura: TRxDBLookupCombo
      Left = 320
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      DisplayEmpty = '<todos suportes>'
      EmptyValue = '<todos suportes>'
      ListStyle = lsDelimited
      LookupField = 'idsuporte'
      LookupDisplay = 'suporte'
      LookupSource = DMobra.DSsuporte
      TabOrder = 2
      OnCloseUp = suporteprocuraCloseUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 56
    Width = 792
    Height = 462
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Top = 0
      Width = 792
      Height = 462
      Align = alClient
      DataSource = DMobra.DSobra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = RxDBGrid1DblClick
      IniStorage = FormStorage1
      TitleButtons = True
      OnTitleBtnClick = RxDBGrid1TitleBtnClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Titulo'
          Title.Caption = 'Título'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 325
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'Classifica'
          Title.Caption = 'Classificação'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 118
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'Cutter'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Editora'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Local'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Idioma'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Suporte'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 527
    Top = 12
  end
  object FormPlacement1: TFormPlacement
    Left = 580
    Top = 20
  end
end
