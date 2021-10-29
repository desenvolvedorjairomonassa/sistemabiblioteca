unit Mctrlemp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMctrlemp = class(TDataModule)
    ADOQemp: TADOQuery;
    DSemp: TDataSource;
    ADOQempIdgrupo: TIntegerField;
    ADOQempidempresa: TIntegerField;
    ADOQempFlag_emp: TIntegerField;
    ADOQempN_emp: TIntegerField;
    ADOQempN_dias: TIntegerField;
    ADOQempRecMulta: TIntegerField;
    ADOQempMulta: TBCDField;
    ADOQempBloqueio: TIntegerField;
    ADOQempSuspende: TIntegerField;
    ADOQempSuspFixo: TIntegerField;
    ADOQempSpen: TIntegerField;
    ADOQempidsuporte: TIntegerField;
    DSsuporte: TDataSource;
    ADOQgrupo: TADOQuery;
    ADOQgrupoidgrupo: TAutoIncField;
    ADOQgrupocodigo: TStringField;
    ADOQgrupodescricao: TStringField;
    ADOQgrupofilhos: TSmallintField;
    ADOQgrupoparent_grp: TIntegerField;
    ADOQgrupoidempresa: TIntegerField;
    DSgrupo: TDataSource;
    ADOQsuporte: TADOQuery;
    ADOQsuporteidsuporte: TAutoIncField;
    ADOQsuporteCodigo: TStringField;
    ADOQsuporteidempresa: TIntegerField;
    ADOQsuporteparent_sup: TIntegerField;
    ADOQsuporteFilhos: TSmallintField;
    ADOQsuportesuporte: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQempBeforePost(DataSet: TDataSet);
    procedure ADOQempNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMctrlemp: TDMctrlemp;

implementation
    uses Mmain,principal;
{$R *.DFM}

procedure TDMctrlemp.DataModuleCreate(Sender: TObject);
begin
 ADOQemp.Parameters[0].Value:= FrmMain.empresa;
 ADOQemp.Active:=True;

 ADOQgrupo.Parameters[0].Value:= FrmMain.empresa;
 ADOQgrupo.Active:=True;

 ADOQsuporte.Parameters[0].Value:= FrmMain.empresa;
 ADOQsuporte.Active:=True;
end;

procedure TDMctrlemp.DataModuleDestroy(Sender: TObject);
begin
 ADOQemp.Active:= False;
 ADOQgrupo.Active:= False;
 ADOQsuporte.Active:= False;
end;

procedure TDMctrlemp.ADOQempBeforePost(DataSet: TDataSet);
begin
 ADOQempidempresa.Value:= FrmMain.empresa;
end;

procedure TDMctrlemp.ADOQempNewRecord(DataSet: TDataSet);
begin
  // Colocar defaults
  ADOQempFlag_emp.Value:= 0 ;
  ADOQempSpen.Value:=0      ;
  ADOQempRecMulta.Value:=0  ;
  ADOQempBloqueio.Value:=0  ;
  ADOQempSuspende.Value:=0  ;
  
end;

end.
