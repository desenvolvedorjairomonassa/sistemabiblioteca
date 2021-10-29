unit Mseriada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMseriada = class(TDataModule)
    ADOQidioma: TADOQuery;
    DSidioma: TDataSource;
    ADOQEditora: TADOQuery;
    DSeditora: TDataSource;
    ADOQsuporte: TADOQuery;
    DSsuporte: TDataSource;
    ADOQautor: TADOQuery;
    ADOQautornome: TStringField;
    ADOQautoridautor: TAutoIncField;
    ADOQautorCutter: TStringField;
    ADOQtiporesp: TADOQuery;
    ADOQtiporespresponsabilidade: TStringField;
    ADOQassunto: TADOQuery;
    ADOQperiodico: TADOQuery;
    DSperiodico: TDataSource;
    ADOQperiodicoIdobra: TAutoIncField;
    ADOQperiodicoTitulo: TStringField;
    ADOQperiodicoISSN: TStringField;
    ADOQperiodicoCNN: TStringField;
    ADOQperiodicoPeriodicidade: TStringField;
    ADOQperiodicoIdioma: TStringField;
    ADOQperiodicoLocal: TStringField;
    ADOQperiodicoData_ini: TDateTimeField;
    ADOQperiodicoData_fim: TDateTimeField;
    ADOQperiodicoTotal: TIntegerField;
    ADOQperiodicoTperdas: TIntegerField;
    ADOQperiodicoNt_geral: TMemoField;
    ADOQperiodicoIDED: TIntegerField;
    ADOQperiodicoidsuporte: TIntegerField;
    ADOQperiodicotipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMseriada: TDMseriada;

implementation
   uses Mmain;
{$R *.DFM}

procedure TDMseriada.DataModuleCreate(Sender: TObject);
begin
  ADOQidioma.Active  := True;
  ADOQsuporte.Active := True;
  ADOQEditora.Active := True;
  ADOQperiodico.Active := True;

end;

procedure TDMseriada.DataModuleDestroy(Sender: TObject);
begin
  ADOQidioma.Active  := False;
  ADOQsuporte.Active := False;
  ADOQEditora.Active := False;
  ADOQperiodico.Active := False;
end;

end.
