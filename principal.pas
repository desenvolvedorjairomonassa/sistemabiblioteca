unit principal;
{ Título: Tela principal do TIASB
  Autor: Jairo Neder Monassa Moreira - jairomonassa@bigfoot.com
  Data: 10-2001
  Descrição: Tela principal do Tecnologia da Informação Aplicado a Sistemas
   de Bibliotecas


 }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TimerLst, ComCtrls, Menus, RxMenus, Placemnt, RxGrdCpt, DualList, RXShell,
  StdCtrls, RxRichEd, StdActns, ActnList, ImgList,lib, XPMenu, Bc_XPMenu;

type
  TFrmMain = class(TForm)
    BarraStatus: TStatusBar;
    Tempo: TRxTimerList;
    RxTimerEvent1: TRxTimerEvent;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    MenuPrincipal: TRxMainMenu;
    PopupMenu: TRxPopupMenu;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    RxGradientCaption1: TRxGradientCaption;
    Cadastro1: TMenuItem;
    Tabelasdinamicas1: TMenuItem;
    Idioma1: TMenuItem;
    Suporte1: TMenuItem;
    Pas1: TMenuItem;
    Periodicidade1: TMenuItem;
    MonografiaMultimeios1: TMenuItem;
    Peridicos1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Editorafornecedor1: TMenuItem;
    Assunto1: TMenuItem;
    Autor1: TMenuItem;
    Localdepositrio1: TMenuItem;
    Servios1: TMenuItem;
    Emprstimos1: TMenuItem;
    Devoluo1: TMenuItem;
    Reserva1: TMenuItem;
    Requisio1: TMenuItem;
    Ordemdecompra1: TMenuItem;
    Receberpedido1: TMenuItem;
    Proprietrio1: TMenuItem;
    Msdepublicao1: TMenuItem;
    Opes1: TMenuItem;
    Parametros1: TMenuItem;
    Controledeemprstimos1: TMenuItem;
    Ferramentas1: TMenuItem;
    Etiquetadelombada1: TMenuItem;
    Pesquisa1: TMenuItem;
    Analiticadeperidico1: TMenuItem;
    Artigos1: TMenuItem;
    Obras1: TMenuItem;
    Peridicos2: TMenuItem;
    Aquisies1: TMenuItem;
    Requisies1: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    Quitaodemulta1: TMenuItem;
    Estatsticas1: TMenuItem;
    Leitor1: TMenuItem;
    Grupo1: TMenuItem;
    Leitor2: TMenuItem;
    Bibliotecrio1: TMenuItem;
    Situaodoleitor1: TMenuItem;
    Cancelamentodereserva1: TMenuItem;
    Controledeacesso1: TMenuItem;
    Contedo1: TMenuItem;
    N3: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    Sair1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Controledeconsultas1: TMenuItem;
    Reservadesalasdeleituras1: TMenuItem;
    Assinaturadeperidicos1: TMenuItem;
    Cartadecobrana1: TMenuItem;
    Bloqueiar1: TMenuItem;
    Bloquearleitor1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Bloqueioautomtico1: TMenuItem;
    Desbloquear1: TMenuItem;
    RecupearIm1: TMenuItem;
    N8: TMenuItem;
    Visitante1: TMenuItem;
    Janela1: TMenuItem;
    Minimizar1: TMenuItem;
    Restaurar1: TMenuItem;
    Fechartudo1: TMenuItem;
    ActionList1: TActionList;
    WindowArrange1: TWindowArrange;
    WindowCascade1: TWindowCascade;
    WindowClose1: TWindowClose;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    EditCopy1: TEditCopy;
    EditCut1: TEditCut;
    EditDelete1: TEditDelete;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    ImageList1: TImageList;
    Multimeios1: TMenuItem;
    Empresa1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    XPMenu1: TXPMenu;
    procedure RxTimerEvent1Timer(Sender: TObject);
    procedure MonografiaMultimeios1Click(Sender: TObject);
    procedure Idioma1Click(Sender: TObject);
    procedure Editorafornecedor1Click(Sender: TObject);
    procedure Assunto1Click(Sender: TObject);
    procedure Autor1Click(Sender: TObject);
    procedure Pas1Click(Sender: TObject);
    procedure Periodicidade1Click(Sender: TObject);
    procedure Msdepublicao1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Peridicos1Click(Sender: TObject);
    procedure Localdepositrio1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Controledeemprstimos1Click(Sender: TObject);
    procedure Suporte1Click(Sender: TObject);
    procedure Leitor2Click(Sender: TObject);
  private
    { Private declarations }
  public
   empresa: smallint;
  end;

var
  FrmMain: TFrmMain;

implementation
  uses gobra, idioma, autor,  Gedforn, Gassunto, Gautor, pais,
  periodicidade, mespub, seriada, Glocal,empresa,
  EstruturaGrupo, ctrlempdev, suporte, leitor, EstruturaSuporte;
{$R *.DFM}

procedure TFrmMain.RxTimerEvent1Timer(Sender: TObject);
begin
 BarraStatus.Panels[3].Text:=DateTimeToStr(now);
end;

procedure TFrmMain.MonografiaMultimeios1Click(Sender: TObject);
begin

If FormExists (FrmMain,FrmGridObra)
   Then   FrmGridObra.Show
    Else FrmGridObra := TFrmGridObra.Create(self);
end;

procedure TFrmMain.Idioma1Click(Sender: TObject);
begin
  If FormExists (FrmMain,Frmidioma)
   Then   Frmidioma.Show
    Else Frmidioma := TFrmidioma.Create(self);
end;

procedure TFrmMain.Editorafornecedor1Click(Sender: TObject);
begin

    If FormExists (FrmMain,FrmGridedforn)
        Then   FrmGridedforn.Show
        Else FrmGridedforn := TFrmGridedforn.Create(self);

end;

procedure TFrmMain.Assunto1Click(Sender: TObject);
begin
      If FormExists (FrmMain,FrmGridassunto)
        Then   FrmGridassunto.Show
        Else FrmGridassunto := TFrmGridassunto.Create(self);
end;

procedure TFrmMain.Autor1Click(Sender: TObject);
begin
        If FormExists (FrmMain,FrmGridautor)
        Then   FrmGridautor.Show
        Else FrmGridautor := TFrmGridautor.Create(self);
end;

procedure TFrmMain.Pas1Click(Sender: TObject);
begin
  If FormExists (FrmMain,FrmPais)
     Then   FrmPais.Show
     Else FrmPais := TFrmPais.Create(self);
end;

procedure TFrmMain.Periodicidade1Click(Sender: TObject);
begin
    If FormExists (FrmMain,Frmperiodicidade)
     Then   Frmperiodicidade.Show
     Else Frmperiodicidade := TFrmperiodicidade.Create(self);
end;

procedure TFrmMain.Msdepublicao1Click(Sender: TObject);
begin
      If FormExists (FrmMain,Frmmespub)
     Then   Frmmespub.Show
     Else Frmmespub:= TFrmmespub.Create(self);
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //verifica se há janela aberta
  If MDIChildCount <> 1
    Then Action:=caFree
    Else Begin
         ShowMessage('Feche todas as janelas');
          Action:=caNone;
         end


end;

procedure TFrmMain.Peridicos1Click(Sender: TObject);
begin
       If FormExists (FrmMain,Frmseriada)
     Then   Frmseriada.Show
     Else Frmseriada:= TFrmseriada.Create(self);
end;

procedure TFrmMain.Localdepositrio1Click(Sender: TObject);
begin
     If FormExists (FrmMain,FrmGridlocal)
     Then   FrmGridlocal.Show
     Else FrmGridlocal:= TFrmGridlocal.Create(self);
end;

procedure TFrmMain.Empresa1Click(Sender: TObject);
begin
      If FormExists (FrmMain,FrmEmpresa)
     Then FrmEmpresa.Show
     Else FrmEmpresa:= TFrmEmpresa.Create(self);
end;

procedure TFrmMain.Grupo1Click(Sender: TObject);
begin
     If FormExists (FrmMain,FrmArvoreGrupo)
     Then FrmArvoreGrupo.Show
     Else FrmArvoreGrupo:= TFrmArvoreGrupo.Create(self);
end;

procedure TFrmMain.Sair1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
 empresa:=1;
end;

procedure TFrmMain.Controledeemprstimos1Click(Sender: TObject);
begin
   If FormExists (FrmMain,Frmctrlemp)
   Then Frmctrlemp.Show
   Else Frmctrlemp:= TFrmctrlemp.Create(self);
end;

procedure TFrmMain.Suporte1Click(Sender: TObject);
begin
{ Frmsuporte:= TFrmsuporte.Create(self);
  Frmsuporte.Show;}
   If FormExists (FrmMain,FrmArvoresuporte)
   Then FrmArvoresuporte.Show
   Else FrmArvoresuporte:= TFrmArvoresuporte.Create(self);
end;

procedure TFrmMain.Leitor2Click(Sender: TObject);
begin
   If FormExists (FrmMain,Frmleitor)
   Then Frmleitor.Show
   Else Frmleitor:= TFrmleitor.Create(self);
end;

end.
