unit Gobra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, ExtCtrls, Db, Placemnt, RxLookup, StdCtrls,
  gridsrch, DBIndex;

type
  TFrmGridObra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    FormStorage1: TFormStorage;
    editoraprocura: TRxDBLookupCombo;
    idiomaprocura: TRxDBLookupCombo;
    suporteprocura: TRxDBLookupCombo;
    FormPlacement1: TFormPlacement;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure idiomaprocuraCloseUp(Sender: TObject);
    procedure suporteprocuraCloseUp(Sender: TObject);
    procedure editoraprocuraCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  Procedure FiltroObra;
    { Private declarations }
  public
    { Public declarations }
//    procedure ParaibaAfterScroll(DataSet: TDataSet);
  end;

var
  FrmGridObra: TFrmGridObra;

implementation
       uses mobra,obra;
{$R *.DFM}
Procedure TFrmGridObra.FiltroObra;
var filtro:string;
 Begin
  if DMobra.ADOQobra.Filter = '' then filtro:='' ;
   //filtro da editora
    if (editoraprocura.Value <> '') and
     (editoraprocura.Value <>'<todas editoras>')
     then Filtro:='IDED='+editoraprocura.Value;
  //filtro do idioma
    if (idiomaprocura.Value <> '') and
     (idiomaprocura.Value <>'<todos os idiomas>') and
     (filtro<>'')
        Then  Filtro:='idioma='''+idiomaprocura.Value+''''+' AND '+filtro
        Else if (idiomaprocura.Value <> '') and
     (idiomaprocura.Value <>'<todos os idiomas>') and
     (filtro='')
           Then Filtro:='idioma='''+idiomaprocura.Value+''''
           Else filtro:=filtro;
   if (suporteprocura.Value <> '') and
     (suporteprocura.Value <>'<todos suportes>') and
     (filtro<>'')
         Then   Filtro:='idsuporte='+suporteprocura.Value+' AND '+filtro
         Else  if (suporteprocura.Value <> '') and
     (suporteprocura.Value <>'<todos suportes>') and
     (filtro='')
         Then  Filtro:='idsuporte='+suporteprocura.Value
         Else  Filtro:=filtro;
    with DMobra.ADOQobra do
    Begin
    Filtered:=False;
     Filter:= filtro;
    Filtered:=True;
    end ;{with}
 end;


procedure TFrmGridObra.FormCreate(Sender: TObject);
begin
   DMobra := TDMobra.Create(self);
end;

procedure TFrmGridObra.RxDBGrid1DblClick(Sender: TObject);
begin
   Frmobra := TFrmobra.Create(self);
   Frmobra.ShowModal;
end;

procedure TFrmGridObra.RxDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
   Var
   MSQL: TStringList ;
begin
 if (Field <> nil) then begin
      DMobra.ADOQobra.Close;
      MSQL := TStringList.Create;
      try
      If Field.FieldName ='Editora'
      Then
      MSQL.Add
      ('SELECT Idobra, tipo, Titulo, Classifica, Cutter, ISBN, Nvolbib, Nvolfis, '+
      'Local, DescriFi, Idioma, Titulo_Orig, Total, Tperdas, Serie, Nt_Geral,    '+
      'Resumo, Conteudo, IDED,idsuporte                                           '+
      ' FROM lobramon                                                            '+
      ' WHERE tipo = ''' +'Monografia'+''''                  +
      ' ORDER BY  IDED')
      ELSE If Field.FieldName ='Suporte'
       Then
        MSQL.Add
       ('SELECT Idobra, tipo, Titulo, Classifica, Cutter, ISBN, Nvolbib, Nvolfis, '+
      'Local, DescriFi, Idioma, Titulo_Orig, Total, Tperdas, Serie, Nt_Geral,    '+
      'Resumo, Conteudo, IDED,idsuporte                                           '+
      ' FROM lobramon                                                            '+
      ' WHERE tipo = ''' +'Monografia'+''''                  +
      ' ORDER BY  idsuporte')
      Else
      MSQL.Add
      ('SELECT Idobra, tipo, Titulo, Classifica, Cutter, ISBN, Nvolbib, Nvolfis, '+
      'Local, DescriFi, Idioma, Titulo_Orig, Total, Tperdas, Serie, Nt_Geral,    '+
      'Resumo, Conteudo, IDED,idsuporte                                          '+
      ' FROM lobramon                                                            '+
      ' WHERE tipo = ''' +'Monografia'+''''                  +
      ' ORDER BY  '+ Field.FieldName);
      DMobra.ADOQobra.SQL.Clear;
      DMobra.ADOQobra.SQL.AddStrings(MSQL);
      DMobra.ADOQobra.Open;
     finally
      MSQL.Free;
      end;
      End
end;

procedure TFrmGridObra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFrmGridObra.idiomaprocuraCloseUp(Sender: TObject);
begin
FiltroObra;

end;

procedure TFrmGridObra.suporteprocuraCloseUp(Sender: TObject);
begin
 FiltroObra;

end;

procedure TFrmGridObra.editoraprocuraCloseUp(Sender: TObject);
begin
  FiltroObra;
end;

//procedure TFrmGridObra.ParaibaAfterScroll(DataSet: TDataSet);
//begin
 // FiltroObra;
//end;

procedure TFrmGridObra.FormShow(Sender: TObject);
begin
//  DMobra.ADOQeditora.AfterScroll:= ParaibaAfterScroll(ADOQeditora);
end;

end.
