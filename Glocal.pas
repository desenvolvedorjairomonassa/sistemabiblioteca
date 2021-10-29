unit Glocal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  gridsrch, Placemnt, Grids, DBGrids, RXDBCtrl, RxLookup, StdCtrls,
  ExtCtrls, Db;

type
  TFrmGridlocal = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    paisprocura: TRxDBLookupCombo;
    estadoprocura: TRxDBLookupCombo;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    FormPlacement1: TFormPlacement;
    FormStorage1: TFormStorage;
    DBGridSearch1: TDBGridSearch;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure paisprocuraCloseUp(Sender: TObject);
    procedure estadoprocuraCloseUp(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
     Procedure Filtrolocal;
  public
    { Public declarations }
  end;

var
  FrmGridlocal: TFrmGridlocal;

implementation
 uses mlocal, local;
{$R *.DFM}
procedure TFrmGridlocal.Filtrolocal;
var filtro:string;
Begin
if DMlocal.ADOQlocal.Filter = '' then filtro:='' ;
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
 //execução do filtro
   with DMlocal.ADOQlocal do
  Begin
   Filtered:=False;
   Filter:= filtro;
   Filtered:=True;
  End {fim-with}  ;
End; { fim-procedure }

procedure TFrmGridlocal.FormCreate(Sender: TObject);
begin
 DMlocal:=TDMlocal.Create(self);
end;

procedure TFrmGridlocal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFrmGridlocal.RxDBGrid1DblClick(Sender: TObject);
begin
 frmlocal := Tfrmlocal.Create(self);
 frmlocal.ShowModal;
end;

procedure TFrmGridlocal.paisprocuraCloseUp(Sender: TObject);
begin
 Filtrolocal;
end;

procedure TFrmGridlocal.estadoprocuraCloseUp(Sender: TObject);
begin
  Filtrolocal;
end;

procedure TFrmGridlocal.RxDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
  Var
   MSQL: TStringList ;
begin
 if (Field <> nil) then
   begin
      DMlocal.ADOQlocal.Close;
      MSQL := TStringList.Create;
      try
      MSQL.Add
      ('SELECT idempresa,idlocal,Nome,codlocal,Ender,Bairro,Cidade,Federa,Pais,' +
       'CEP,E_mail,Web,Foto,DDI_1,DDI_2,DDI_3, DDD_1,DDD_2,DDD_3,  '             +
       ' Fone_1,Fone_2,Fone_3,Ramal_1,Ramal_2,Ramal_3,ClassTel_1,  '             +
       ' ClassTel_2,ClassTel_3, ObsTel_1,ObsTel_2,ObsTel_3,obs     '             +
       ' FROM llocal'                                                            +
       ' ORDER BY                                      '+
        Field.FieldName );
      DMlocal.ADOQlocal.SQL.Clear;
      DMlocal.ADOQlocal.SQL.AddStrings(MSQL);
//      showmessage( DMEditForn.ADOQEditForn.SQL.Text);
      DMlocal.ADOQlocal.Open;
     finally
      MSQL.Free;
      end;  {fim-finally}
   end ;{fim-if}
end;

end.
