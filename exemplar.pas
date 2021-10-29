unit exemplar;
{ Título: Cadastro e manutenção do exemplar da obra de monografia
          e/ou multimeio
  Autor: Jairo Neder Monassa Moreira - jairomonassa@bigfoot.com
  Data: 11-10-2001
  Descrição: Cadastro e manutenção do exemplar da obra de monografia
          e/ou multimeio. Poderá ser digitado os autores e assutos da obra
  Edições: 1º -  11-10-2001
           2º -  11-12-2001  - Acréscimo de módulos para cada grupo de
                               formulário
           3º -  20-01-2002  - Acréscimo do formulário escondido para
                              os campos imagem e texto                               


 }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ToolWin,
  ImgList, Buttons, Db, DBTables, Placemnt, ADODB, Menus, RxRichEd,
  DBRichEd, RXCtrls, StdActns, ActnList, ExtDlgs;

type
  TFrmexemplar = class(TForm)
    Panel1: TPanel;
    FormPlacement1: TFormPlacement;
    FormStorage1: TFormStorage;
    ImageList1: TImageList;
    RxSpeedButton1: TRxSpeedButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    PageControlExemplar: TPageControl;
    TSid: TTabSheet;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    titulo: TDBEdit;
    isbn: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    edicao: TDBEdit;
    impressao: TDBEdit;
    tiragem: TDBEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    ano: TDBEdit;
    estacao: TDBComboBox;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    tombo: TDBEdit;
    volume: TDBEdit;
    tomo: TDBEdit;
    exemplar: TDBEdit;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    paginas: TDBEdit;
    dimensao: TDBEdit;
    DBCheckBoxilustrado: TDBCheckBox;
    depositario: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    flag_emp: TDBCheckBox;
    DBComboBoxrazao: TDBComboBox;
    TabSheet3: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    ToolBar3: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    responsavel: TDBGrid;
    TabSheet5: TTabSheet;
    DBComboBox1: TDBComboBox;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    ToolBar4: TToolBar;
    Imagem: TDBImage;
    Panel5: TPanel;
    texto: TRxDBRichEdit;
    DBNavigator1: TDBNavigator;
    PopupMenu1: TPopupMenu;
    SavePictureDialog1: TSavePictureDialog;
    ActionList1: TActionList;
    FileSaveCmd: TAction;
    FilePrintCmd: TAction;
    FileExitCmd: TAction;
    FontDialog1: TFontDialog;
    SaveDialog: TSaveDialog;
    ActionList2: TActionList;
    EditCopyCmd: TAction;
    EditFontCmd: TAction;
    EditCut1: TEditCut;
    EditDelete1: TEditDelete;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    PopupMen1: TPopupMenu;
    Salvar1: TMenuItem;
    Print1: TMenuItem;
    N1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Cut1: TMenuItem;
    Delete1: TMenuItem;
    Undo1: TMenuItem;
    SelectAll1: TMenuItem;
    ToolbarImages: TImageList;
    PrintDialog: TPrintDialog;
    ActionList3: TActionList;
    Salvar: TAction;
    Carregar: TAction;
    Salvar2: TMenuItem;
    Carregarimagem1: TMenuItem;
    N2: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Cut2: TMenuItem;
    Delete2: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenDialog1: TOpenDialog;
    Carregar1: TMenuItem;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControlExemplarChange(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   function CurrText(Editor:TRxDBRichEdit) : TRxTextAttributes;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Salvar2Click(Sender: TObject);
    procedure Carregarimagem1Click(Sender: TObject);
    procedure Carregar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Cut2Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure textoChange(Sender: TObject);
  private
 //  FUpdating: Boolean;
   FFileName: string;
   Flag: boolean;
  public
    { Public declarations }
  end;

var
  Frmexemplar: TFrmexemplar;

implementation
   uses mobra, mmain;
{$R *.DFM}
function TFrmexemplar.CurrText(Editor:TRxDBRichEdit) : TRxTextAttributes;
begin
  if Editor.SelLength > 0 then Result := Editor.SelAttributes
  else Result := Editor.DefAttributes;
end;

procedure TFrmexemplar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmexemplar.PageControlExemplarChange(Sender: TObject);
begin
  if DMobra.ADOQmono.State in [dsEdit,dsInsert]
  then
   if MessageDlg('Você deve gravar os dados do exemplar. '+#13+'Gravar agora?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     DMobra.ADOQmono.Post
     Else Frmexemplar.PageControlExemplar.ActivePage:=TSid;
end;

procedure TFrmexemplar.RxSpeedButton1Click(Sender: TObject);
begin
 FormPlacement1.PreventResize :=  False;
 if  Frmexemplar.Width= 760 then flag:=True
    else flag:=False;
 if flag then
   Begin
    Frmexemplar.Width:= 445;
    Panel1.Width:= 437;
    // desabilitar os botões
    // Evita que o curso seja tabulado para estes campos, memso não
    // estando visíveis.
    Imagem.Enabled:=False;
    Texto.Enabled:=False;
    RxSpeedButton1.Caption:='->';
    Frmexemplar.Left:=289;
   end
 Else
   Begin
   Frmexemplar.Width:= 760;
   Panel1.Width:= 752;
   //habilitar os botões
   Imagem.Enabled:=True;
   Texto.Enabled:=True;
   RxSpeedButton1.Caption:='<-';
   Frmexemplar.Left:=132;
   end;
  FormPlacement1.PreventResize :=  True;
end;

procedure TFrmexemplar.Salvar1Click(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
      if MessageDlg(Format('Sobrescrever arquivo', [SaveDialog.FileName]),
        mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
    texto.Lines.SaveToFile(SaveDialog.FileName);
    FFileName := SaveDialog.FileName;
    Texto.Modified := False;
    end;
end;

procedure TFrmexemplar.Print1Click(Sender: TObject);
begin
   if PrintDialog.Execute then
    texto.Print(FFileName);
end;

procedure TFrmexemplar.FormCreate(Sender: TObject);
begin
FFileName := 'Sem nome';
CurrText(Texto).Size := -MulDiv(DefFontData.Height, 72, Screen.PixelsPerInch);
end;

procedure TFrmexemplar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var
resp: word;
begin

 with DMobra do
  if ADOQmono.UpdateStatus  in [usModified, usInserted,usDeleted] then
   Begin
    resp:= MessageDlg('Atualizações não encerradas',mtInformation,mbYesNoCancel,0);
    if resp = mryes then
      Begin
      ADOQmono.Post;
      end;
     canclose := resp <> mrcancel;
   end;
end;

procedure TFrmexemplar.Salvar2Click(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
  begin
    if FileExists(SavePictureDialog1.FileName) then
      if MessageDlg(Format('Sobrescrever arquivo',
         [SavePictureDialog1.FileName]),
         mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;

      Imagem.Picture.SaveToFile(SavePictureDialog1.FileName);
      FFileName := SavePictureDialog1.FileName;
    end;
end;

procedure TFrmexemplar.Carregarimagem1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute Then
   Imagem.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFrmexemplar.Carregar1Click(Sender: TObject);
begin
 if OpenDialog1.Execute Then
     texto.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TFrmexemplar.Colar1Click(Sender: TObject);
begin
  imagem.PasteFromClipboard;
end;

procedure TFrmexemplar.Cut2Click(Sender: TObject);
begin
 imagem.CutToClipboard;
end;

procedure TFrmexemplar.Copy1Click(Sender: TObject);
begin
  texto.CopyToClipboard;
end;

procedure TFrmexemplar.Copiar1Click(Sender: TObject);
begin
  imagem.CopyToClipboard;
end;

procedure TFrmexemplar.Paste1Click(Sender: TObject);
begin
 texto.PasteFromClipboard;
end;

procedure TFrmexemplar.textoChange(Sender: TObject);
begin
  Texto.Modified := True;
end;

end.
