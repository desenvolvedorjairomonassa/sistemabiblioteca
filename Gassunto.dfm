object FrmGridassunto: TFrmGridassunto
  Left = 248
  Top = 167
  Width = 696
  Height = 480
  Caption = 'Assuntos'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 56
    Align = alTop
    Color = clMaroon
    TabOrder = 0
    object ativoprocura: TCheckBox
      Left = 15
      Top = 25
      Width = 97
      Height = 17
      Caption = '&Ativo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = ativoprocuraClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 56
    Width = 688
    Height = 397
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Top = 0
      Width = 688
      Height = 397
      Align = alClient
      DataSource = DMassunto.DSassunto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          Expanded = False
          FieldName = 'assunto'
          Title.Caption = 'Assunto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 301
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdd'
          Title.Caption = 'CDD'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdu'
          Title.Caption = 'CDU'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ativo'
          Title.Caption = 'Ativo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end>
    end
  end
  object FormStorage1: TFormStorage
    Active = False
    StoredValues = <>
    Left = 540
    Top = 50
  end
  object FormPlacement1: TFormPlacement
    Active = False
    Left = 580
    Top = 50
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Assuntos'
    Left = 630
    Top = 50
  end
  object DBGridSearch1: TDBGridSearch
    CaseInsensitive = False
    DBGrid = RxDBGrid1
    HotKey = 114
    Left = 205
    Top = 196
  end
end
