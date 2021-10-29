object FrmGridautor: TFrmGridautor
  Left = 224
  Top = 145
  Width = 696
  Height = 480
  Caption = 'Autor'
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
      DataSource = DMautor.DSautor
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
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 432
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idautor'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Cutter'
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
    Active = False
    StoredValues = <>
    Left = 540
    Top = 25
  end
  object FormPlacement1: TFormPlacement
    Active = False
    Left = 580
    Top = 25
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Autor'
    Left = 630
    Top = 25
  end
  object DBGridSearch1: TDBGridSearch
    CaseInsensitive = False
    DBGrid = RxDBGrid1
    HotKey = 114
    Left = 90
    Top = 181
  end
end
