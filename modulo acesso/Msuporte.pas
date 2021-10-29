unit Msuporte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMsuporte = class(TDataModule)
    ADOQsuporte: TADOQuery;
    DSsuporte: TDataSource;
    ADOQgrupo: TADOQuery;
    ADOQgrupoidgrupo: TAutoIncField;
    ADOQgrupocodigo: TStringField;
    ADOQgrupodescricao: TStringField;
    ADOQgrupofilhos: TSmallintField;
    ADOQgrupoparent_grp: TIntegerField;
    ADOQgrupoidempresa: TIntegerField;
    ADOQemp: TADOQuery;
    ADOQempIdgrupo: TIntegerField;
    ADOQempidempresa: TIntegerField;
    ADOQempidsuporte: TIntegerField;
    ADOQempFlag_emp: TIntegerField;
    ADOQempN_emp: TIntegerField;
    ADOQempN_dias: TIntegerField;
    ADOQempRecMulta: TIntegerField;
    ADOQempMulta: TBCDField;
    ADOQempBloqueio: TIntegerField;
    ADOQempSuspende: TIntegerField;
    ADOQempSuspFixo: TIntegerField;
    ADOQempSpen: TIntegerField;
    DSemp: TDataSource;
    DSgrupo: TDataSource;
    ADOQsuporteidsuporte: TAutoIncField;
    ADOQsuportearvore: TStringField;
    ADOQsuportesuporte: TStringField;
    ADOQsuportedescricao: TStringField;
    ADOQsuporteidempresa: TIntegerField;
    ADOQsuporteparent_sup: TIntegerField;
    ADOQsuporteFilhos: TSmallintField;
    ADOSPancestral: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQsuporteBeforePost(DataSet: TDataSet);
    procedure ADOQsuporteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMsuporte: TDMsuporte;

implementation
    uses Mmain,principal;
{$R *.DFM}

procedure TDMsuporte.DataModuleCreate(Sender: TObject);
begin
 ADOQsuporte.Parameters[0].Value:= FrmMain.empresa;
 ADOQsuporte.Active:=True;
end;

procedure TDMsuporte.DataModuleDestroy(Sender: TObject);
begin
  ADOQsuporte.Active:=False;
end;

procedure TDMsuporte.ADOQsuporteBeforePost(DataSet: TDataSet);
begin
  ADOQsuporteidempresa.Value:= FrmMain.empresa;
end;

procedure TDMsuporte.ADOQsuporteAfterPost(DataSet: TDataSet);
begin
 ADOSPancestral.Close;
 ADOSPancestral.Parameters[1].Value := ADOQsuporteidsuporte.Value;
 ADOSPancestral.ExecProc;
end;

end.
