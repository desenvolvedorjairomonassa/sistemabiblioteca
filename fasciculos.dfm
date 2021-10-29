object Frmfasciculo: TFrmfasciculo
  Left = 81
  Top = 110
  AutoScroll = False
  Caption = 'Fascículo'
  ClientHeight = 403
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 681
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 437
    Height = 374
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Exemplar'
      object GroupBox2: TGroupBox
        Left = 3
        Top = 4
        Width = 206
        Height = 141
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 44
          Width = 33
          Height = 13
          Caption = 'Edição'
        end
        object Label6: TLabel
          Left = 8
          Top = 71
          Width = 38
          Height = 13
          Caption = 'Páginas'
        end
        object Label10: TLabel
          Left = 8
          Top = 17
          Width = 33
          Height = 13
          Caption = 'Tombo'
        end
        object Label9: TLabel
          Left = 8
          Top = 98
          Width = 43
          Height = 13
          Caption = 'Exemplar'
        end
        object edicao: TDBEdit
          Left = 64
          Top = 40
          Width = 83
          Height = 21
          TabOrder = 0
        end
        object paginas: TDBEdit
          Left = 64
          Top = 67
          Width = 83
          Height = 21
          TabOrder = 1
        end
        object tombo: TDBEdit
          Left = 64
          Top = 13
          Width = 83
          Height = 21
          TabOrder = 2
        end
        object exemplar: TDBEdit
          Left = 64
          Top = 94
          Width = 83
          Height = 21
          Hint = 'Número do exemplar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 216
        Top = 4
        Width = 209
        Height = 141
        TabOrder = 0
        object Label11: TLabel
          Left = 8
          Top = 17
          Width = 35
          Height = 13
          Caption = 'Volume'
        end
        object Label13: TLabel
          Left = 8
          Top = 72
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object Label4: TLabel
          Left = 8
          Top = 44
          Width = 20
          Height = 13
          Caption = 'Mês'
        end
        object Label5: TLabel
          Left = 8
          Top = 99
          Width = 37
          Height = 13
          Caption = 'Número'
        end
        object volume: TDBEdit
          Left = 64
          Top = 13
          Width = 105
          Height = 21
          TabOrder = 0
        end
        object ano: TDBEdit
          Left = 64
          Top = 68
          Width = 105
          Height = 21
          TabOrder = 1
        end
        object mes: TDBComboBox
          Left = 64
          Top = 40
          Width = 105
          Height = 21
          Hint = 'Peródo da publicação em meses'
          ItemHeight = 13
          Items.Strings = (
            'Abr.'
            'Ago.'
            'Dez.'
            'Fev.'
            'Jan.'
            'Jul.'
            'Jun.'
            'Maio'
            'Mar.'
            'Nov.'
            'Out.'
            'Set.')
          Sorted = True
          TabOrder = 2
        end
        object numero: TDBEdit
          Left = 64
          Top = 95
          Width = 105
          Height = 21
          TabOrder = 3
        end
      end
      object GroupBox6: TGroupBox
        Left = 3
        Top = 241
        Width = 422
        Height = 71
        TabOrder = 2
        object Label15: TLabel
          Left = 114
          Top = 18
          Width = 32
          Height = 13
          Caption = 'Motivo'
        end
        object Label14: TLabel
          Left = 10
          Top = 45
          Width = 80
          Height = 13
          Caption = 'Local depositário'
        end
        object SpeedButton1: TSpeedButton
          Left = 391
          Top = 40
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            08000000000000040000400B0000400B00000001000000000000000000008000
            80008000000080800000008000000080800000008000C0C0C000C0DCC000F0CA
            A60080808000FF00FF00FF000000FFFF000000FF000000FFFF000000FF00FFFF
            FF00F0FBFF00A3A0A000D3F0FF00B1E2FF008ED3FF006BC6FF0048B8FF0024AA
            FF0000AAFF000092DC000079B900006196000049730000325000D3E3FF00B1C7
            FF008EABFF006B8FFF004873FF002457FF000055FF000049DC00003CB9000030
            96000024730000195000D3D3FF00B1B1FF008E8EFF006B6BFF004848FF002424
            FF000000FF000000DC000000B900000096000000730000005000E3D3FF00C7B1
            FF00AB8EFF008F6BFF007348FF005724FF005500FF004900DC003C00B9003000
            96002400730019005000F0D3FF00E2B1FF00D38EFF00C66BFF00B848FF00AA24
            FF00AA00FF009200DC007900B900610096004900730032005000FFD3FF00FFB1
            FF00FF8EFF00FF6BFF00FF48FF00FF24FF00FF00FF00DC00DC00B900B9009600
            96007300730050005000FFD3F000FFB1E200FF8ED300FF6BC600FF48B800FF24
            AA00FF00AA00DC009200B9007900960061007300490050003200FFD3E300FFB1
            C700FF8EAB00FF6B8F00FF487300FF245700FF005500DC004900B9003C009600
            30007300240050001900FFD3D300FFB1B100FF8E8E00FF6B6B00FF484800FF24
            2400FF000000DC000000B9000000960000007300000050000000FFE3D300FFC7
            B100FFAB8E00FF8F6B00FF734800FF572400FF550000DC490000B93C00009630
            00007324000050190000FFF0D300FFE2B100FFD38E00FFC66B00FFB84800FFAA
            2400FFAA0000DC920000B9790000966100007349000050320000FFFFD300FFFF
            B100FFFF8E00FFFF6B00FFFF4800FFFF2400FFFF0000DCDC0000B9B900009696
            00007373000050500000F0FFD300E2FFB100D3FF8E00C6FF6B00B8FF4800AAFF
            2400AAFF000092DC000079B90000619600004973000032500000E3FFD300C7FF
            B100ABFF8E008FFF6B0073FF480057FF240055FF000049DC00003CB900003096
            00002473000019500000D3FFD300B1FFB1008EFF8E006BFF6B0048FF480024FF
            240000FF000000DC000000B90000009600000073000000500000D3FFE300B1FF
            C7008EFFAB006BFF8F0048FF730024FF570000FF550000DC490000B93C000096
            30000073240000501900D3FFF000B1FFE2008EFFD3006BFFC60048FFB80024FF
            AA0000FFAA0000DC920000B97900009661000073490000503200D3FFFF00B1FF
            FF008EFFFF006BFFFF0048FFFF0024FFFF0000FFFF0000DCDC0000B9B9000096
            96000073730000505000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6
            B600AAAAAA009E9E9E009292920086868600797979006E6E6E00616161005656
            5600494949003E3E3E0032323200262626001A1A1A000E0E0E00010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010707070701010101010101
            0101010101010101010101010101010707070707070707070707010101010101
            0101010101010101010707070707070707070707070707070707010101010101
            0101010707070707070707070707070707070707070707070707010101010101
            0707070707070707070707070707070707070707070707070707010101010101
            0000000000000000000000000000000000000007070707070707010101010101
            0003030300121212120012121212000303030007070707070707010101010101
            0003030300121212120012121212000303030007070707070701010101010101
            0003030300121212120012121212000303030007070707070101010101010101
            0003030300121212120012121212000303030007070707010101010101010101
            0003030300000000000000000000000303030007070701010101010101010101
            0003030303030303030303030303030303030007070101010101010101010101
            0003030303030303030303030303030303030007070101010101010101010000
            0000000000000000000000000000000000000000000101010101010101010101
            0003030303030303030303030303030303030001010101010101010101010101
            0003030303030303030303030303030303030001010101010101010101010101
            0003031212031212031212121203121203030001010101010101010101010101
            0003030303030303030303030303030303030001010101010101010101010101
            0003030303030303030303030303030303030001010101010101010101010106
            0606030306060606030306060606030306060601010101010101010101010606
            0606060606060606060606060606060606060606010101010101010101010106
            0606010106060606010106060606010106060601010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101}
        end
        object flag_emp: TDBCheckBox
          Left = 10
          Top = 16
          Width = 101
          Height = 17
          Caption = 'Não emprestar'
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object razao: TDBComboBox
          Left = 153
          Top = 14
          Width = 104
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          Items.Strings = (
            'Obra de referência'
            'Obra rara')
          ParentShowHint = False
          ShowHint = False
          Sorted = True
          TabOrder = 1
        end
        object depositario: TDBLookupComboBox
          Left = 100
          Top = 41
          Width = 286
          Height = 21
          TabOrder = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 152
        Width = 423
        Height = 90
        Caption = ' Especificações do fascículo '
        TabOrder = 3
        object Label1: TLabel
          Left = 6
          Top = 15
          Width = 31
          Height = 13
          Caption = 'Título:'
          FocusControl = titulo
        end
        object Label2: TLabel
          Left = 6
          Top = 64
          Width = 25
          Height = 13
          Caption = 'ISSN'
        end
        object Label16: TLabel
          Left = 182
          Top = 63
          Width = 71
          Height = 13
          Caption = 'Nota indicativa'
        end
        object titulo: TDBEdit
          Left = 6
          Top = 31
          Width = 410
          Height = 21
          Hint = 'Título do fascículo'
          MaxLength = 100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object issn: TDBEdit
          Left = 48
          Top = 59
          Width = 121
          Height = 21
          Hint = 'ISSN do fascículo'
          MaxLength = 9
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object notaindicativa: TDBComboBox
          Left = 271
          Top = 59
          Width = 145
          Height = 21
          Hint = 'Nota indicativa'
          ItemHeight = 13
          Items.Strings = (
            'Edição especial'
            'Guia'
            'Suplemento')
          ParentShowHint = False
          ShowHint = True
          Sorted = True
          TabOrder = 2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Analítico de periódicos'
      ImageIndex = 2
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 429
        Height = 29
        Caption = 'ToolBar1'
        Flat = True
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
        Height = 317
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        ItemHeight = 13
        Items.Strings = (
          'Assinatura'
          'Compra'
          'Doação'
          'Permuta')
        Sorted = True
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 437
    Top = 29
    Width = 244
    Height = 374
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 2
      Top = 242
      Width = 240
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 240
      Height = 240
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object ToolBar4: TToolBar
        Left = 0
        Top = 0
        Width = 240
        Height = 29
        Caption = 'ToolBar4'
        TabOrder = 0
      end
      object Imagem: TDBImage
        Left = 0
        Top = 29
        Width = 240
        Height = 211
        Align = alClient
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 245
      Width = 240
      Height = 127
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object referencia: TDBRichEdit
        Left = 0
        Top = 29
        Width = 240
        Height = 98
        Hint = 'Referência bibliográfica'
        Align = alClient
        TabOrder = 0
      end
      object ToolBar5: TToolBar
        Left = 0
        Top = 0
        Width = 240
        Height = 29
        Caption = 'ToolBar3'
        TabOrder = 1
      end
    end
  end
end
