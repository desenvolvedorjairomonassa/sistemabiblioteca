unit Mgrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMgrupo = class(TDataModule)
    ADOQgrupo: TADOQuery;
    DSgrupo: TDataSource;
    ADOQgrupoidgrupo: TAutoIncField;
    ADOQgrupocodigo: TStringField;
    ADOQgrupodescricao: TStringField;
    ADOQgrupofilhos: TSmallintField;
    ADOQgrupoparent_grp: TIntegerField;
    ADOQgrupoidempresa: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQgrupoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMgrupo: TDMgrupo;

implementation
  Uses Mmain,principal;
{$R *.DFM}

procedure TDMgrupo.DataModuleCreate(Sender: TObject);
begin
  ADOQgrupo.Parameters[0].Value:= FrmMain.empresa;
  ADOQgrupo.Active:=True;
end;

procedure TDMgrupo.DataModuleDestroy(Sender: TObject);
begin
  ADOQgrupo.Active:=False;
end;

procedure TDMgrupo.ADOQgrupoBeforePost(DataSet: TDataSet);
begin
 ADOQgrupoidempresa.Value:= FrmMain.empresa;
end;

end.
