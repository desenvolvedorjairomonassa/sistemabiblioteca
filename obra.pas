unit obra;

{ Título: Cadastro e manutenção da obra de monografia e/ou multimeio
  Autor: Jairo Neder Monassa Moreira - jairomonassa@bigfoot.com
  Data: 11-10-2001
  Descrição: Cadastro e manutenção da obra de monografia
  e/ou multimeio. Poderá ser digitado os autores e assutos da obra

  Edições: 1º -  11-10-2001
           2º -  11-12-2001  - Acréscimo de módulos para cada grupo de
                               formulário


 }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, RxLookup, Grids, DBGrids,
  RXDBCtrl, Buttons, ToolWin, ImgList, RxGrdCpt, Placemnt, ToolEdit, Db,
  DBTables, RxQuery;

type
  TFrmobra = class(TForm)
    ImageList1: TImageList;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControlObra: TPageControl;
    TSid: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    titulo: TDBEdit;
    original: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    classificacao: TDBEdit;
    ISBN: TDBEdit;
    cutter: TDBEdit;
    Panel5: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    editora: TRxDBLookupCombo;
    Idioma: TDBLookupComboBox;
    suporte: TDBLookupComboBox;
    local: TDBComboBox;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    biblio: TDBEdit;
    fisico: TDBEdit;
    TSNotas: TTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    geral: TDBMemo;
    resumo: TDBMemo;
    conteudo: TDBMemo;
    descricaofisica: TDBMemo;
    TSexemplares: TTabSheet;
    Panel7: TPanel;
    RxDBGrid1: TRxDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    RxGradientCaption1: TRxGradientCaption;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure editoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suporteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure PageControlObraChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmobra: TFrmobra;

implementation
uses Mobra,exemplar;
{$R *.DFM}

procedure TFrmobra.RxDBGrid1DblClick(Sender: TObject);
begin

   Frmexemplar:= TFrmexemplar.Create(self);
   Frmexemplar.ShowModal;

end;

procedure TFrmobra.RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
  Var
   MSQL: TStringList ;
begin

   if (Field <> nil) then begin
      DMobra.ADOQmono.Close;
      MSQL := TStringList.Create;
      try
      MSQL.Add
     ('SELECT Idmono,Tipo,Titulo_exe,Tombo,Volume,Tomo,   '  +
      'Edicao,Impressao,Tiragem,Atualizado,Revisado,      '  +
      ' Aumentado,Ampliado,Ano_pub,Estacao,Ilust,Npag,    '  +
      ' Dimensao,ISBN,idlocal,idempresa,Idobra,Dono,      '  +
      ' Perda,Motivo,No_exe,Flag_emp,Razao,Capa,          '  +
      ' TipoAqs,refbibli,Data_compra,Data_pg,Data_chegada,'  +
      ' Preco,Obs,Idforn                                  '  +
      ' FROM lmono                                        '  +
      ' WHERE tipo = ''' +'Monografia'+''''                  +
      ' ORDER BY  '+ Field.FieldName);
      DMobra.ADOQmono.SQL.Clear;
      DMobra.ADOQmono.SQL.AddStrings(MSQL);
      DMobra.ADOQmono.Open;
     finally
      MSQL.Free;
      end;
      End
end;

procedure TFrmobra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFrmobra.ToolButton1Click(Sender: TObject);
begin
   Frmexemplar := TFrmexemplar.Create(self);
   DMobra.ADOQmono.Insert;
   Frmexemplar.ShowModal;
end;

procedure TFrmobra.editoraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case key of
     //	F5 key
     VK_F5 : with DMobra do
             Begin
             ADOQEditora.Close;
             ADOQEditora.open;
             end;
    end;
end;

procedure TFrmobra.suporteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case key of
     //	F5 key
     VK_F5 : with DMobra do
             Begin
             ADOQsuporte.Close;
             ADOQsuporte.Open;
             end;
     end ;//Case //
end;

procedure TFrmobra.ToolButton2Click(Sender: TObject);
begin

 if MessageDlg('Você gostaria de apagar?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     DMobra.ADOQmono.Delete;
     DMobra.ADOQobra.Refresh;
   end;
end;

procedure TFrmobra.ToolButton5Click(Sender: TObject);
begin
 RxDBGrid1DblClick(Sender);
end;

procedure TFrmobra.PageControlObraChange(Sender: TObject);
begin
  if DMobra.ADOQobra.State in [dsEdit,dsInsert]
  then
   if MessageDlg('Você deve gravar os dados da obra. '+#13+'Gravar agora?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     DMobra.ADOQobra.Post
     Else PageControlObra.ActivePage:=TSid;
end;

end.
