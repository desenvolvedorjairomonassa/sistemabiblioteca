unit medforn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMEditForn = class(TDataModule)
    ADOQEditForn: TADOQuery;
    DSEditForn: TDataSource;
    ADOQEditFornTEdForn: TStringField;
    ADOQEditFornAtivo: TIntegerField;
    ADOQEditFornIDED: TAutoIncField;
    ADOQEditFornCodedit: TStringField;
    ADOQEditFornEditora: TStringField;
    ADOQEditFornRazaoSocial: TStringField;
    ADOQEditFornCGC: TStringField;
    ADOQEditFornEnder: TStringField;
    ADOQEditFornBairro: TStringField;
    ADOQEditFornCidade: TStringField;
    ADOQEditFornFedera: TStringField;
    ADOQEditFornPais: TStringField;
    ADOQEditFornCEP: TStringField;
    ADOQEditFornE_mail: TStringField;
    ADOQEditFornWeb: TStringField;
    ADOQEditFornObs: TMemoField;
    ADOQEditFornDDI_1: TIntegerField;
    ADOQEditFornDDI_2: TIntegerField;
    ADOQEditFornDDI_3: TIntegerField;
    ADOQEditFornDDD_1: TIntegerField;
    ADOQEditFornDDD_2: TIntegerField;
    ADOQEditFornDDD_3: TIntegerField;
    ADOQEditFornFone_1: TStringField;
    ADOQEditFornFone_2: TStringField;
    ADOQEditFornFone_3: TStringField;
    ADOQEditFornRamal_1: TIntegerField;
    ADOQEditFornRamal_2: TIntegerField;
    ADOQEditFornRamal_3: TIntegerField;
    ADOQEditFornClassTel_1: TStringField;
    ADOQEditFornClassTel_2: TStringField;
    ADOQEditFornClassTel_3: TStringField;
    ADOQEditFornObsTel_1: TStringField;
    ADOQEditFornObsTel_2: TStringField;
    ADOQEditFornObsTel_3: TStringField;
    DSPais: TDataSource;
    ADOQPais: TADOQuery;
    ADOQRegiao: TADOQuery;
    DSRegiao: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQEditFornNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEditForn: TDMEditForn;

implementation
      uses Mmain;
{$R *.DFM}

procedure TDMEditForn.DataModuleCreate(Sender: TObject);
begin
  ADOQEditForn.Active:=True;
  ADOQPais.Active:=True;
  ADOQRegiao.Active:=True;
end;

procedure TDMEditForn.DataModuleDestroy(Sender: TObject);
begin
 ADOQEditForn.Active:=False;
 ADOQPais.Active:=False;
 ADOQRegiao.Active:=False;
end;

procedure TDMEditForn.ADOQEditFornNewRecord(DataSet: TDataSet);
begin
   ADOQEditFornAtivo.Value:=1;
end;

end.
