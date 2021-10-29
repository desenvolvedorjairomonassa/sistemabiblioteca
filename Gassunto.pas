unit Gassunto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxGrdCpt, Placemnt, Grids, DBGrids, RXDBCtrl, RxLookup, StdCtrls,
  ExtCtrls, Db, gridsrch;

type
  TFrmGridassunto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    RxGradientCaption1: TRxGradientCaption;
    ativoprocura: TCheckBox;
    DBGridSearch1: TDBGridSearch;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure ativoprocuraClick(Sender: TObject);
  private
  procedure FiltroAssunto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridassunto: TFrmGridassunto;

implementation
   uses Massunto,assunto;
{$R *.DFM}
procedure TFrmGridassunto.FiltroAssunto;
var filtro:string;
Begin
 if DMassunto.ADOQassunto.Filter = '' then filtro:='' ;
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
   with DMassunto.ADOQassunto do
  Begin
   Filtered:=False;
   Filter:= filtro;
   Filtered:=True;
  End {fim-with}  ;
end;  {fim-Filtroassunto}

procedure TFrmGridassunto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;

end;

procedure TFrmGridassunto.FormCreate(Sender: TObject);
begin
   DMassunto:= TDMassunto.Create(self);
end;

procedure TFrmGridassunto.RxDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
   Var
   MSQL: TStringList ;
begin
   if (Field <> nil) then
   begin
   With DMassunto.ADOQassunto do
   Begin
      Close;
      MSQL := TStringList.Create;
      try
      MSQL.Add
      ('SELECT assunto,idassto,ativo,cdd,cdu ' +
       ' FROM lassunto                       ' +
       ' ORDER BY '+  Field.FieldName );
      SQL.Clear;
      SQL.AddStrings(MSQL);
      Open;
     finally
      MSQL.Free;
      end;  {fim-finally}
    end {fim-with}
   end ;{fim-if}
end;

procedure TFrmGridassunto.RxDBGrid1DblClick(Sender: TObject);
begin
   Frmassunto := TFrmassunto.Create(self);
 Frmassunto.ShowModal;
end;

procedure TFrmGridassunto.ativoprocuraClick(Sender: TObject);
begin
 FiltroAssunto;
end;

end.
