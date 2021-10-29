object FrmMain: TFrmMain
  Left = 287
  Top = 173
  Width = 544
  Height = 375
  ActiveControl = BarraStatus
  Caption = 'Katálogos-Me'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MenuPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BarraStatus: TStatusBar
    Left = 0
    Top = 310
    Width = 536
    Height = 19
    Panels = <
      item
        Width = 450
      end
      item
        Width = 130
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Tempo: TRxTimerList
    Active = True
    Left = 8
    Top = 208
    object RxTimerEvent1: TRxTimerEvent
      OnTimer = RxTimerEvent1Timer
    end
  end
  object FormStorage1: TFormStorage
    RegistryRoot = prUsers
    StoredValues = <>
    Left = 8
    Top = 136
  end
  object FormPlacement1: TFormPlacement
    PreventResize = True
    RegistryRoot = prUsers
    Left = 48
    Top = 136
  end
  object MenuPrincipal: TRxMainMenu
    Left = 8
    Top = 176
    object Leitor1: TMenuItem
      Caption = 'Acesso'
      object Empresa1: TMenuItem
        Caption = 'Empresa'
        OnClick = Empresa1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Grupo1: TMenuItem
        Caption = 'Grupo de usuários'
        OnClick = Grupo1Click
      end
      object Leitor2: TMenuItem
        Caption = 'Leitor'
        OnClick = Leitor2Click
      end
      object Bibliotecrio1: TMenuItem
        Caption = 'Bibliotecário'
      end
      object Visitante1: TMenuItem
        Caption = 'Visitante'
      end
      object Controledeacesso1: TMenuItem
        Caption = 'Controle de acesso'
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Login1: TMenuItem
        Caption = 'Login'
      end
      object Logout1: TMenuItem
        Caption = 'Logout'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Acervo'
      object MonografiaMultimeios1: TMenuItem
        Caption = 'Monografia'
        OnClick = MonografiaMultimeios1Click
      end
      object Multimeios1: TMenuItem
        Caption = 'Multimeios'
      end
      object Peridicos1: TMenuItem
        Caption = 'Periódicos'
        OnClick = Peridicos1Click
      end
      object Assinaturadeperidicos1: TMenuItem
        Caption = 'Assinatura de periódicos'
      end
      object Analiticadeperidico1: TMenuItem
        Caption = 'Analítica de periódico'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Tabelasdinamicas1: TMenuItem
        Caption = 'Tabelas dinâmicas'
        object Idioma1: TMenuItem
          Caption = 'Idioma'
          OnClick = Idioma1Click
        end
        object Pas1: TMenuItem
          Caption = 'País/Estado-Federação'
          OnClick = Pas1Click
        end
        object Periodicidade1: TMenuItem
          Caption = 'Periodicidade'
          OnClick = Periodicidade1Click
        end
        object Proprietrio1: TMenuItem
          Caption = 'Proprietário'
        end
        object Msdepublicao1: TMenuItem
          Caption = 'Mês de publicação'
          OnClick = Msdepublicao1Click
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Editorafornecedor1: TMenuItem
        Caption = 'Editora e Fornecedor'
        OnClick = Editorafornecedor1Click
      end
      object Assunto1: TMenuItem
        Caption = 'Assunto'
        OnClick = Assunto1Click
      end
      object Autor1: TMenuItem
        Caption = 'Responsável'
        OnClick = Autor1Click
      end
      object Localdepositrio1: TMenuItem
        Caption = 'Local depositário'
        OnClick = Localdepositrio1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object Suporte1: TMenuItem
        Caption = 'Estrutura do suporte'
        OnClick = Suporte1Click
      end
    end
    object Servios1: TMenuItem
      Caption = 'Serviços'
      object Emprstimos1: TMenuItem
        Caption = 'Empréstimo'
      end
      object Devoluo1: TMenuItem
        Caption = 'Devolução'
      end
      object Reserva1: TMenuItem
        Caption = 'Reserva'
      end
      object Cancelamentodereserva1: TMenuItem
        Caption = 'Cancelamento de reserva'
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Requisio1: TMenuItem
        Caption = 'Requisição'
      end
      object Ordemdecompra1: TMenuItem
        Caption = 'Ordem de compra'
      end
      object Receberpedido1: TMenuItem
        Caption = 'Receber pedido'
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Situaodoleitor1: TMenuItem
        Caption = 'Situação do leitor'
      end
      object Reservadesalasdeleituras1: TMenuItem
        Caption = 'Reserva de sala de leitura'
      end
      object Cartadecobrana1: TMenuItem
        Caption = 'Carta de cobrança'
      end
      object Bloqueiar1: TMenuItem
        Caption = 'Punições'
        object Quitaodemulta1: TMenuItem
          Caption = 'Quitação de multa'
        end
        object Bloquearleitor1: TMenuItem
          Caption = 'Bloquear leitor'
        end
        object Bloqueioautomtico1: TMenuItem
          Caption = 'Bloqueio automático'
        end
        object Desbloquear1: TMenuItem
          Caption = 'Desbloquear leitor'
        end
      end
    end
    object Pesquisa1: TMenuItem
      Caption = 'Pesquisa'
      object Artigos1: TMenuItem
        Caption = 'Artigos'
      end
      object Obras1: TMenuItem
        Caption = 'Obras'
      end
      object Peridicos2: TMenuItem
        Caption = 'Periódicos'
      end
      object Aquisies1: TMenuItem
        Caption = 'Aquisições'
      end
      object Requisies1: TMenuItem
        Caption = 'Requisições'
      end
    end
    object Ferramentas1: TMenuItem
      Caption = 'Ferramentas'
      object Etiquetadelombada1: TMenuItem
        Caption = 'Etiqueta de lombada'
      end
      object Estatsticas1: TMenuItem
        Caption = 'Estatísticas'
      end
      object Opes1: TMenuItem
        Caption = 'Opções'
        object Parametros1: TMenuItem
          Caption = 'Parâmetros gerais'
        end
        object Controledeemprstimos1: TMenuItem
          Caption = 'Controle de empréstimo/devolução'
          OnClick = Controledeemprstimos1Click
        end
        object Controledeconsultas1: TMenuItem
          Caption = 'Controle de consulta/devolução'
        end
      end
    end
    object RecupearIm1: TMenuItem
      Caption = 'RIOB'
      Hint = 'Recuperar informação em outras bases'
      object N8: TMenuItem
        Caption = '-'
      end
    end
    object Janela1: TMenuItem
      Caption = 'Janela'
      object Minimizar1: TMenuItem
        Action = WindowMinimizeAll1
        Caption = 'Minimizar tudo'
      end
      object Restaurar1: TMenuItem
        Caption = 'Restaurar'
      end
      object Fechartudo1: TMenuItem
        Action = WindowClose1
        Caption = 'Fechar'
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda ?'
      object Contedo1: TMenuItem
        Caption = 'Conteúdo'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Sobre1: TMenuItem
        Caption = 'Sobre...'
      end
    end
  end
  object PopupMenu: TRxPopupMenu
    Left = 48
    Top = 176
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Katálogos-Me'
    GradientInactive = True
    PopupMenu = PopupMenu
    Left = 48
    Top = 208
  end
  object RxTrayIcon1: TRxTrayIcon
    Left = 8
    Top = 248
  end
  object ActionList1: TActionList
    Left = 48
    Top = 248
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      ImageIndex = 17
    end
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      ImageIndex = 15
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      ImageIndex = 16
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      ImageIndex = 5
      ShortCut = 46
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      ImageIndex = 3
      ShortCut = 32776
    end
  end
  object ImageList1: TImageList
    Left = 80
    Top = 248
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386BE71C386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B0000000000000000000000000000
      000000000000000000000000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386BFF7F386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B0000000000000000000000000000
      000000000000F75EF75EF75EF75EF75EF75E386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B0000000000000000F75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75E386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B0000000000000000000000000000
      00000000000000000000F75EF75EF75EF75E386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B000000000000EF01EF01FD7FFD7F
      0000FD7FFD7FEF01EF01F75EF75EF75E0000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B000000000000EF01EF01FD7FFD7F
      0000FD7FFD7FEF01EF01F75EF75E00000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B000000000000EF01EF01EF01EF01
      EF01EF01EF01EF01EF01F75E000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B0000000000000000000000000000
      000000000000000000000000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B000000000000EF01EF01EF01EF01
      EF01EF01EF01EF01EF010000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B000000000000EF01EF01EF01EF01
      EF01EF01EF01EF01EF010000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B00000000003C003CEF01003C003C
      EF01003C003CEF01003C0000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B00000000003C003C0000003C003C
      0000003C003C0000003C0000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B0000000000000000000000000000
      000000000000000000000000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386BFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      000000000000000000000000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B0000000000000000000000000000
      000000000000000000000000000000000000386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B386B
      386B386B386B386B386B386B386B386B386B424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF00780078FFFFFFFFFFFF00780078
      FFC0FFFFFFFFFFFFF000FFFFFFFFFFFFE000FFFFFFFFFFFFE001FFFFFFFFFFFF
      E003FFFFFFFFFFFFE007FFFFFFFFFFFFC007FFFFFFFFFFFFE00FFFFFFFFFFFFF
      E00FFFFFFFFFFFFFC00FFFFFFFFFFFFFC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000FFFF1E0F0000000000000000000000000000000000000000
      000000000000}
  end
  object XPMenu1: TXPMenu
    Font.Charset = ANSI_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clHighlight
    MenuBarColor = clBtnFace
    SelectColor = clMenu
    SelectBorderColor = clMenu
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = False
    OverrideOwnerDraw = True
    Gradient = True
    FlatMenu = True
    AutoDetect = True
    Active = True
    Left = 90
    Top = 210
  end
end
