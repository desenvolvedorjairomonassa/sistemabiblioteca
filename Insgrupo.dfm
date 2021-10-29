object FrmInsgrupo: TFrmInsgrupo
  Left = 338
  Top = 261
  Width = 547
  Height = 157
  Caption = 'Grupo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 17
    Width = 33
    Height = 13
    Caption = 'Código'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 66
    Width = 48
    Height = 13
    Caption = 'Descrição'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 33
    Width = 124
    Height = 21
    DataField = 'codigo'
    DataSource = DMgrupo.DSgrupo
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 82
    Width = 400
    Height = 21
    DataField = 'descricao'
    DataSource = DMgrupo.DSgrupo
    TabOrder = 1
  end
end
