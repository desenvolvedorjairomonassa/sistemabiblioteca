unit Gedforn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, RxLookup, ExtCtrls, StdCtrls, RxDBComb,
  Placemnt, Db, gridsrch, DBIndex;

type
  TFrmGridedforn = class(TForm)
    Panel1: TPanel;
    paisprocura: TRxDBLookupCombo;
    estadoprocura: TRxDBLookupCombo;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    tipoprocura: TComboBox;
    FormPlacement1: TFormPlacement;
    FormStorage1: TFormStorage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ativoprocura: TCheckBox;
    DBGridSearch1: TDBGridSearch;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure paisprocuraCloseUp(Sender: TObject);
    procedure estadoprocuraCloseUp(Sender: TObject);
    procedure tipoprocuraChange(Sender: TObject);
    procedure ativoprocuraClick(Sender: TObject);
  private
    Procedure FiltroEdFornecedor;
  public
    { Public declarations }
  end;

var
  FrmGridedforn: TFrmGridedforn;

implementation
    uses Medforn, Mobra, edforn;
{$R *.DFM}
Procedure TFrmGridedforn.FiltroEdFornecedor;
var filtro:string;
Begin
if DMEditForn.ADOQEditForn.Filter = '' then filtro:='' ;
 //busca do tipo
 If (tipoprocura.Text<>'')
 Then If (tipoprocura.Text='EDITORA')
       Then  Filtro:='TEdForn='''+'EDITORA'+''''
    else if tipoprocura.Text='FORNECEDOR'
       Then  Filtro:='TEdForn='''+'FORNECEDOR'+''''
    else if tipoprocura.Text='AMBOS'
       Then  Filtro:='TEdForn='''+'AMBOS'+''''
       Else if (tipoprocura.Text='TODOS')  or (tipoprocura.Text='')
          Then filtro:='';
  //busca do país
  if (paisprocura.Value <> '') and
     (paisprocura.Value <>'<todos países>') and
     (filtro<>'')
     Then   filtro:='pais='''+paisprocura.Value+''''+' AND '+filtro
     else  if (paisprocura.Value <> '') and
     (paisprocura.Value <>'<todos países>') and
     (filtro='')
          Then  filtro:='pais='''+paisprocura.Value+''''
          else filtro:=filtro;
  // busca do estado
  if (estadoprocura.Value <> '') and
     (estadoprocura.Value <>'<todas federações>') and
     (filtro<>'')
     then  Filtro:='federa='''+estadoprocura.Value+''''+' AND '+filtro
     else if (estadoprocura.Value <> '') and
     (estadoprocura.Value <>'<todas federações>') and
     (filtro='')
          Then   Filtro:='federa='''+estadoprocura.Value+''''
          else filtro:=filtro;
 // indicativo de ativo
 if (ativoprocura.State<>cbUnchecked) and
    (ativoprocura.State<>cbGrayed) and
    (filtro<>'')
       Then filtro:='ativo=1'+' AND '+filtro
       Else If (ativoprocura.State<>cbUnchecked) and
    (ativoprocura.State<>cbGrayed) and
    (filtro='')
           Then  filtro:='ativo=1'
           else filtro:=filtro;
 //execução do filtro           
   with DMEditForn.ADOQEditForn do
  Begin
   Filtered:=False;
   Filter:= filtro;
   Filtered:=True;
  End {fim-with}  ;
end;  {fim-FiltroEdFornecedor}


procedure TFrmGridedforn.FormCreate(Sender: TObject);
begin
  DMEditForn :=TDMEditForn.Create(self);
end;

procedure TFrmGridedforn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrmGridedforn.RxDBGrid1DblClick(Sender: TObject);
begin
 frmedforn := Tfrmedforn.Create(self);
 frmedforn.ShowModal;
end;

procedure TFrmGridedforn.RxDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
  Var
   MSQL: TStringList ;
begin
 if (Field <> nil) then
   begin
      DMEditForn.ADOQEditForn.Close;
      MSQL := TStringList.Create;
      try
      MSQL.Add
      ('SELECT TEdForn, Ativo, IDED, Codedit, Editora, '+
       ' RazaoSocial, CGC, Ender, Bairro, Cidade,      '+
       ' Federa, Pais, CEP, E_mail, Web,               '+
       ' Obs, DDI_1, DDI_2, DDI_3, DDD_1,              '+
       ' DDD_2, DDD_3, Fone_1, Fone_2, Fone_3,         '+
       ' Ramal_1, Ramal_2, Ramal_3, ClassTel_1,        '+
       ' ClassTel_2, ClassTel_3, ObsTel_1, ObsTel_2,   '+
       ' ObsTel_3                                      '+
       ' FROM leditora                                 '+
       ' ORDER BY                                      '+
       Field.FieldName );
      DMEditForn.ADOQEditForn.SQL.Clear;
      DMEditForn.ADOQEditForn.SQL.AddStrings(MSQL);
//      showmessage( DMEditForn.ADOQEditForn.SQL.Text);
      DMEditForn.ADOQEditForn.Open;
     finally
      MSQL.Free;
      end;  {fim-finally}
   end ;{fim-if}
end;

procedure TFrmGridedforn.paisprocuraCloseUp(Sender: TObject);
begin
   FiltroEdFornecedor;
end;

procedure TFrmGridedforn.estadoprocuraCloseUp(Sender: TObject);
begin
  FiltroEdFornecedor;
end;

procedure TFrmGridedforn.tipoprocuraChange(Sender: TObject);
begin
   FiltroEdFornecedor;
end;

procedure TFrmGridedforn.ativoprocuraClick(Sender: TObject);
begin
  FiltroEdFornecedor;
end;

end.
