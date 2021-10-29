object FrmGridlocal: TFrmGridlocal
  Left = 192
  Top = 187
  Width = 797
  Height = 480
  Caption = 'Local depositário'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 56
    Align = alTop
    Color = clMaroon
    TabOrder = 0
    object Label2: TLabel
      Left = 18
      Top = 10
      Width = 35
      Height = 13
      Caption = 'País :'
      Color = clMaroon
      FocusControl = paisprocura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 168
      Top = 10
      Width = 69
      Height = 13
      Caption = 'Federação :'
      Color = clMaroon
      FocusControl = estadoprocura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object paisprocura: TRxDBLookupCombo
      Left = 16
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      DisplayEmpty = '<todos países>'
      EmptyValue = '<todos países>'
      ListStyle = lsDelimited
      LookupField = 'pais'
      LookupDisplay = 'pais'
      LookupSource = DMlocal.DSPais
      TabOrder = 0
      OnCloseUp = paisprocuraCloseUp
    end
    object estadoprocura: TRxDBLookupCombo
      Left = 170
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      DisplayEmpty = '<todas federações>'
      EmptyValue = '<todas federações>'
      ListStyle = lsDelimited
      LookupField = 'estado'
      LookupDisplay = 'estado'
      LookupSource = DMlocal.DSRegiao
      TabOrder = 1
      OnCloseUp = estadoprocuraCloseUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 56
    Width = 789
    Height = 397
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Top = 0
      Width = 789
      Height = 397
      Align = alClient
      DataSource = DMlocal.DSlocal
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
      TitleButtons = True
      OnTitleBtnClick = RxDBGrid1TitleBtnClick
      Columns = <
        item
          Color = clSilver
          Expanded = False
          FieldName = 'codlocal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Código'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone_1'
          Title.Caption = 'Fone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Federa'
          Title.Caption = 'Federação'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pais'
          Title.Caption = 'País'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 145
          Visible = True
        end>
    end
  end
  object FormPlacement1: TFormPlacement
    Options = [fpState, fpPosition, fpActiveControl]
    Left = 660
    Top = 71
  end
  object FormStorage1: TFormStorage
    Options = [fpState, fpPosition, fpActiveControl]
    StoredValues = <>
    Left = 695
    Top = 71
  end
  object DBGridSearch1: TDBGridSearch
    CaseInsensitive = False
    DBGrid = RxDBGrid1
    HotKey = 114
    Left = 255
    Top = 176
  end
end
