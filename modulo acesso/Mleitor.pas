unit Mleitor;
 {
  Título: Módulo de dados de acesso as informações do leitor
  Autor: Jairo Neder Monassa Moreira - jairomonassa@bigfoot.com
  Data: 17-01-2002
  Descrição: Módulo de dados de acesso as informações do leitor
 }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMleitor = class(TDataModule)
    ADOQleitor: TADOQuery;
    DSleitor: TDataSource;
    ADOQleitorIdleitor: TAutoIncField;
    ADOQleitorIdgrupo: TIntegerField;
    ADOQleitorNome: TStringField;
    ADOQleitorEnder: TStringField;
    ADOQleitorCidade: TStringField;
    ADOQleitorBairro: TStringField;
    ADOQleitorFedera: TStringField;
    ADOQleitorPais: TStringField;
    ADOQleitorCEP: TStringField;
    ADOQleitorE_mail: TStringField;
    ADOQleitorWeb: TStringField;
    ADOQleitorObs: TMemoField;
    ADOQleitorcomercial: TStringField;
    ADOQleitorresidencial: TStringField;
    ADOQleitorCelular: TStringField;
    ADOQleitorDtnascimento: TDateTimeField;
    ADOQleitoridempresa: TIntegerField;
    DSPais: TDataSource;
    ADOQPais: TADOQuery;
    ADOQRegiao: TADOQuery;
    DSRegiao: TDataSource;
    ADOQleitorativo: TSmallintField;
    ADOQleitorfoto: TBlobField;
    ADOQgrupo: TADOQuery;
    ADOQgrupoidgrupo: TAutoIncField;
    ADOQgrupocodigo: TStringField;
    ADOQgrupodescricao: TStringField;
    ADOQgrupofilhos: TSmallintField;
    ADOQgrupoparent_grp: TIntegerField;
    ADOQgrupoidempresa: TIntegerField;
    DSgrupo: TDataSource;
    ADOQgrupogrupo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQleitorBeforePost(DataSet: TDataSet);
    procedure ADOQleitorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMleitor: TDMleitor;

implementation
  uses Mmain, principal;
{$R *.DFM}

procedure TDMleitor.DataModuleCreate(Sender: TObject);
begin
   ADOQleitor.Parameters[0].Value:= FrmMain.Empresa;
   ADOQleitor.Active:= True;

   ADOQPais.Active:=True;
   ADOQRegiao.Active:=True;

  ADOQgrupo.Parameters[0].Value:= FrmMain.empresa;
  ADOQgrupo.Active:=True;
end;

procedure TDMleitor.DataModuleDestroy(Sender: TObject);
begin
   ADOQleitor.Active:= False;
   ADOQPais.Active:=False;
   ADOQRegiao.Active:=False;
end;

procedure TDMleitor.ADOQleitorBeforePost(DataSet: TDataSet);
begin
 ADOQleitoridempresa.Value:=  FrmMain.empresa;
end;

procedure TDMleitor.ADOQleitorNewRecord(DataSet: TDataSet);
begin
  ADOQleitorativo.Value:= 1;
end;

end.
