unit Massunto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMassunto = class(TDataModule)
    ADOQassunto: TADOQuery;
    DSassunto: TDataSource;
    ADOQassuntoassunto: TStringField;
    ADOQassuntoidassto: TAutoIncField;
    ADOQassuntoativo: TIntegerField;
    ADOQassuntocdd: TStringField;
    ADOQassuntocdu: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMassunto: TDMassunto;

implementation
      uses Mmain;
{$R *.DFM}

procedure TDMassunto.DataModuleCreate(Sender: TObject);
begin
 ADOQassunto.Active:=True;

end;

procedure TDMassunto.DataModuleDestroy(Sender: TObject);
begin
   ADOQassunto.Active:=False;

end;

end.
