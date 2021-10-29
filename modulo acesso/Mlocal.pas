unit Mlocal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMlocal = class(TDataModule)
    ADOQlocal: TADOQuery;
    DSlocal: TDataSource;
    ADOQlocalidempresa: TIntegerField;
    ADOQlocalidlocal: TAutoIncField;
    ADOQlocalNome: TStringField;
    ADOQlocalcodlocal: TStringField;
    ADOQlocalEnder: TStringField;
    ADOQlocalBairro: TStringField;
    ADOQlocalCidade: TStringField;
    ADOQlocalFedera: TStringField;
    ADOQlocalPais: TStringField;
    ADOQlocalCEP: TStringField;
    ADOQlocalE_mail: TStringField;
    ADOQlocalWeb: TStringField;
    ADOQlocalFoto: TBlobField;
    ADOQlocalDDI_1: TIntegerField;
    ADOQlocalDDI_2: TIntegerField;
    ADOQlocalDDI_3: TIntegerField;
    ADOQlocalDDD_1: TIntegerField;
    ADOQlocalDDD_2: TIntegerField;
    ADOQlocalDDD_3: TIntegerField;
    ADOQlocalFone_1: TStringField;
    ADOQlocalFone_2: TStringField;
    ADOQlocalFone_3: TStringField;
    ADOQlocalRamal_1: TIntegerField;
    ADOQlocalRamal_2: TIntegerField;
    ADOQlocalRamal_3: TIntegerField;
    ADOQlocalClassTel_1: TStringField;
    ADOQlocalClassTel_2: TStringField;
    ADOQlocalClassTel_3: TStringField;
    ADOQlocalObsTel_1: TMemoField;
    ADOQlocalObsTel_2: TMemoField;
    ADOQlocalObsTel_3: TMemoField;
    ADOQlocalobs: TMemoField;
    DSPais: TDataSource;
    ADOQPais: TADOQuery;
    ADOQRegiao: TADOQuery;
    DSRegiao: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQlocalBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMlocal: TDMlocal;

implementation
uses MMain,principal;
{$R *.DFM}

procedure TDMlocal.DataModuleCreate(Sender: TObject);
begin
//ADOQlocal.Parameters.ParamByName('idempresa').Value := FrmMain.empresa;
 ADOQlocal.Parameters[0].Value:= FrmMain.empresa;
 ADOQlocal.Active:=True;
 ADOQPais.Active:=True;
 ADOQRegiao.Active:=True;

end;

procedure TDMlocal.DataModuleDestroy(Sender: TObject);
begin
 ADOQlocal.Active:=False;
 ADOQPais.Active:=False;
 ADOQRegiao.Active:=False;
end;

procedure TDMlocal.ADOQlocalBeforePost(DataSet: TDataSet);
begin
 ADOQlocalidempresa.Value:= FrmMain.empresa;
end;

end.
