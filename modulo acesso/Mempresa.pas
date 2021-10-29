unit Mempresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMempresa = class(TDataModule)
    ADOQempresa: TADOQuery;
    DSempresa: TDataSource;
    DSPais: TDataSource;
    ADOQPais: TADOQuery;
    ADOQRegiao: TADOQuery;
    DSRegiao: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMempresa: TDMempresa;

implementation
    uses Mmain;
{$R *.DFM}

procedure TDMempresa.DataModuleCreate(Sender: TObject);
begin
 ADOQempresa.Active:=True;
  ADOQPais.Active:=True;
 ADOQRegiao.Active:=True;
end;

procedure TDMempresa.DataModuleDestroy(Sender: TObject);
begin
 ADOQempresa.Active:=False;
  ADOQPais.Active:=False;
 ADOQRegiao.Active:=False;
end;

end.
