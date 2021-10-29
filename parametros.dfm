object Frmparam: TFrmparam
  Left = 133
  Top = 176
  Width = 544
  Height = 375
  Caption = 'Parâmetros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 536
    Height = 319
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 16
      Top = 10
      Width = 305
      Height = 152
      Caption = ' Máscaras '
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Tombo:'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 36
        Height = 13
        Caption = 'Editora:'
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 83
        Height = 13
        Caption = 'Local depositário:'
      end
      object Label4: TLabel
        Left = 168
        Top = 16
        Width = 83
        Height = 13
        Caption = 'Grupo de leitores:'
      end
      object Label5: TLabel
        Left = 168
        Top = 56
        Width = 40
        Height = 13
        Caption = 'Suporte:'
      end
      object Edit1: TEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 16
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 16
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 168
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 168
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 4
      end
    end
    object RxCheckListBox1: TRxCheckListBox
      Left = 16
      Top = 176
      Width = 513
      Height = 127
      CheckKind = ckCheckMarks
      AutoScroll = False
      BorderStyle = bsNone
      Color = clBtnFace
      Columns = 2
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 2
      InternalVersion = 202
      Strings = (
        'Bloqueio automático de atraso'
        0
        True
        'Registra quitação de multa'
        0
        True
        'Registra empréstimos'
        0
        True
        'Registra devolução de exemplares emprestados'
        0
        True
        'Registra reserva'
        0
        True
        'Registra bloqueio'
        0
        True
        'Registra liberação'
        0
        True
        'Registra consulta'
        0
        True
        'Registra devolução de exemplares consultados'
        0
        True)
    end
    object GroupBox2: TGroupBox
      Left = 328
      Top = 10
      Width = 194
      Height = 151
      Caption = ' Grupo '
      TabOrder = 1
      object Label6: TLabel
        Left = 13
        Top = 17
        Width = 60
        Height = 13
        Caption = 'Bibliotecário:'
      end
      object Label7: TLabel
        Left = 13
        Top = 59
        Width = 43
        Height = 13
        Caption = 'Visitante:'
      end
      object Edit6: TEdit
        Left = 13
        Top = 33
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit7: TEdit
        Left = 13
        Top = 75
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 536
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 1
  end
end
