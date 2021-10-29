unit leitor;
 {
  Título: Cadastro das informações do leitor
  Autor: Jairo Neder Monassa Moreira - jairomonassa@bigfoot.com
  Data: 17-01-2002
  Descrição: Módulo de dados de acesso as informações do leitor
 }


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, ComCtrls, RXCtrls, StdCtrls, RxRichEd, DBRichEd,
  ToolWin, Placemnt, RxLookup, Mask, ToolEdit, RXDBCtrl, DBSearch, DBFEdit;

type
  TFrmleitor = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    PageControlExemplar: TPageControl;
    TabSheet5: TTabSheet;
    Splitter1: TSplitter;
    RxSpeedButton1: TRxSpeedButton;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    ToolBar4: TToolBar;
    Imagem: TDBImage;
    Panel5: TPanel;
    RxDBRichEdit1: TRxDBRichEdit;
    TabSheet1: TTabSheet;
    Panel8: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    endereco: TDBEdit;
    cidade: TDBEdit;
    pais: TRxDBLookupCombo;
    email: TDBEdit;
    web: TDBEdit;
    bairro: TDBEdit;
    estado: TRxDBLookupCombo;
    CEP: TDBEdit;
    nome: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBDateEdit1: TDBDateEdit;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label14: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
   Flag:Boolean;
  public
    { Public declarations }
  end;

var
  Frmleitor: TFrmleitor;

implementation
       uses Mleitor;
{$R *.DFM}

procedure TFrmleitor.RxSpeedButton1Click(Sender: TObject);
begin
 FormPlacement1.PreventResize :=  False;
 if  Frmleitor.Width= 760 then flag:=True
    else flag:=False;
 if flag then
   Begin
    Frmleitor.Width:= 445;
    Panel1.Width:= 437;
    // desabilitar os botões
    // Evita que o curso seja tabulado para estes campos, memso não
    // estando visíveis.
    Imagem.Enabled:=False;
    RxDBRichEdit1.Enabled:=False;
    RxSpeedButton1.Caption:='->';
    Frmleitor.Left:=289;
//    ShowMessage(IntToStr(Frmleitor.Top));
//    ShowMessage(IntToStr(Frmleitor.Left));
   end
 Else
   Begin
   Frmleitor.Width:= 760;
   Panel1.Width:= 752;
   //habilitar os botões
   Imagem.Enabled:=True;
   RxDBRichEdit1.Enabled:=True;
   RxSpeedButton1.Caption:='<-';
   Frmleitor.Left:=132;
   end;
  FormPlacement1.PreventResize :=  True;
end;

procedure TFrmleitor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrmleitor.FormCreate(Sender: TObject);
begin
  DMleitor:=TDMleitor.Create(self);
end;

end.
