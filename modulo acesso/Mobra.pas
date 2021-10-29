unit Mobra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;
type
  TDMobra = class(TDataModule)
    ADOQobra: TADOQuery;
    ADOQidioma: TADOQuery;
    DSidioma: TDataSource;
    DSobra: TDataSource;
    ADOQEditora: TADOQuery;
    DSeditora: TDataSource;
    DSsuporte: TDataSource;
    ADOQobraTitulo: TStringField;
    ADOQobraIdobra: TAutoIncField;
    ADOQobraClassifica: TStringField;
    ADOQobraCutter: TStringField;
    ADOQobraISBN: TStringField;
    ADOQobraNvolbib: TIntegerField;
    ADOQobraNvolfis: TIntegerField;
    ADOQobraLocal: TStringField;
    ADOQobraDescriFi: TMemoField;
    ADOQobraIdioma: TStringField;
    ADOQobraTitulo_Orig: TStringField;
    ADOQobraTotal: TIntegerField;
    ADOQobraTperdas: TIntegerField;
    ADOQobraSerie: TStringField;
    ADOQobraNt_Geral: TMemoField;
    ADOQobraResumo: TMemoField;
    ADOQobraConteudo: TMemoField;
    ADOQobraIDED: TIntegerField;
    ADOQobraCodedit: TStringField;
    DSmono: TDataSource;
    ADOQmono: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    ADOQmonoImpressao: TIntegerField;
    ADOQmonoTiragem: TIntegerField;
    ADOQmonoAtualizado: TIntegerField;
    ADOQmonoRevisado: TIntegerField;
    ADOQmonoAumentado: TIntegerField;
    ADOQmonoAmpliado: TIntegerField;
    IntegerField4: TIntegerField;
    ADOQmonoEstacao: TStringField;
    ADOQmonoIlust: TIntegerField;
    ADOQmonoNpag: TIntegerField;
    ADOQmonoDimensao: TStringField;
    ADOQmonoISBN: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    ADOQmonoDono: TStringField;
    DateTimeField1: TDateTimeField;
    ADOQmonoMotivo: TMemoField;
    IntegerField8: TIntegerField;
    ADOQmonoFlag_emp: TIntegerField;
    ADOQmonoRazao: TStringField;
    ADOQmonoCapa: TBlobField;
    ADOQmonoTipoAqs: TStringField;
    ADOQmonorefbibli: TMemoField;
    ADOQmonoData_compra: TDateTimeField;
    ADOQmonoData_pg: TDateTimeField;
    ADOQmonoData_chegada: TDateTimeField;
    ADOQmonoPreco: TBCDField;
    ADOQmonoObs: TMemoField;
    ADOQmonoIdforn: TIntegerField;
    ADOQobraEditora: TStringField;
    ADOQobraidsuporte: TIntegerField;
    ADOQobratipo: TStringField;
    ADOQautor: TADOQuery;
    ADOQautor_mono: TADOQuery;
    DSautor_mono: TDataSource;
    ADOQautor_monoidmono: TIntegerField;
    ADOQautor_monoidautor: TIntegerField;
    ADOQautor_monotipoautor: TStringField;
    ADOQautor_monoAutor: TStringField;
    ADOQautornome: TStringField;
    ADOQautoridautor: TAutoIncField;
    ADOQautorCutter: TStringField;
    ADOQautor_monoTipo: TStringField;
    ADOQtiporesp: TADOQuery;
    ADOQtiporespresponsabilidade: TStringField;
    ADOQassunto: TADOQuery;
    ADOQassunto_mono: TADOQuery;
    DSassunto_mono: TDataSource;
    ADOQassunto_monoidmono: TIntegerField;
    ADOQassunto_monoidassto: TIntegerField;
    ADOQassunto_monoprincipal: TIntegerField;
    ADOQassunto_monoAssunto: TStringField;
    ADOQlocal: TADOQuery;
    ADOQlocalidempresa: TIntegerField;
    ADOQlocalidlocal: TAutoIncField;
    ADOQlocalNome: TStringField;
    ADOQlocalcodlocal: TStringField;
    DSlocal: TDataSource;
    ADOQsuporte: TADOQuery;
    ADOQsuportesuporte: TStringField;
    ADOQsuportecodigo: TStringField;
    ADOQsuporteidsuporte: TAutoIncField;
    ADOQsuporteidempresa: TIntegerField;
    ADOQserie: TADOQuery;
    DSserie: TDataSource;
    procedure ADOQobraBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQmonoBeforePost(DataSet: TDataSet);
    procedure ADOQmonoNewRecord(DataSet: TDataSet);
    procedure ADOQassunto_monoprincipalGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ADOQassunto_monoprincipalSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMobra: TDMobra;

implementation
uses Mmain,principal;
{$R *.DFM}

procedure TDMobra.ADOQobraBeforePost(DataSet: TDataSet);
begin
  ADOQobra.FieldByName('tipo').AsString:='Monografia';
end;

procedure TDMobra.DataModuleCreate(Sender: TObject);
begin
  ADOQobra.Active:=True;
  ADOQidioma.Active:=True;
  ADOQEditora.Active:=True;
  
  ADOQmono.Active:=True;
  ADOQautor.Active:=True;
  ADOQtiporesp.Active:=True;
  ADOQautor_mono.Active:=True;
  ADOQassunto.Active:=True;
  ADOQassunto_mono.Active:=True;

  ADOQlocal.Parameters[0].Value:= FrmMain.empresa;
  ADOQlocal.Active:=True;

  ADOQsuporte.Parameters[0].Value:= FrmMain.empresa;
  ADOQsuporte.Active:=True;
  
end;

procedure TDMobra.DataModuleDestroy(Sender: TObject);
begin
  ADOQidioma.Active:=False;
  ADOQEditora.Active:=False;
  ADOQsuporte.Active:=False;
  ADOQobra.Active:=False;
  ADOQmono.Active:=False;
  ADOQautor.Active:=False;
  ADOQtiporesp.Active:=False;
  ADOQautor_mono.Active:=False;
  ADOQassunto.Active:=False;
  ADOQassunto_mono.Active:=False;
  ADOQlocal.Active:=False;
end;

procedure TDMobra.ADOQmonoBeforePost(DataSet: TDataSet);
begin
  ADOQmono.FieldByName('tipo').AsString:='Monografia';
  ADOQmono.FieldByName('idobra').AsInteger:=
  ADOQobra.FieldByName('idobra').AsInteger;
end;

procedure TDMobra.ADOQmonoNewRecord(DataSet: TDataSet);
begin
  // Colocar defaults
  ADOQmonoAtualizado.Value  := 0;
  ADOQmonoRevisado.Value    := 0;
  ADOQmonoAumentado.Value   := 0;
  ADOQmonoAmpliado.Value    := 0;
  ADOQmonoIlust.Value       := 0;
  ADOQmonoFlag_emp.Value    := 0;
end;

procedure TDMobra.ADOQassunto_monoprincipalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 Case Sender.AsInteger of
  0: Text :='Não';
  1: Text :='Sim';
  end;
end;

procedure TDMobra.ADOQassunto_monoprincipalSetText(Sender: TField;
  const Text: String);
begin
 if Text = 'Sim' Then
   Sender.Value := 1
   Else if Text = 'Não' Then
     Sender.Value := 0 ;
end;

end.
