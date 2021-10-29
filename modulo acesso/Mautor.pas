unit Mautor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMautor = class(TDataModule)
    ADOQautor: TADOQuery;
    DSautor: TDataSource;
    ADOQautornome: TStringField;
    ADOQautoridautor: TAutoIncField;
    ADOQautorCutter: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMautor: TDMautor;

implementation
    uses Mmain;
{$R *.DFM}

procedure TDMautor.DataModuleCreate(Sender: TObject);
begin
 ADOQautor.Active:=True;

end;

procedure TDMautor.DataModuleDestroy(Sender: TObject);
begin
ADOQautor.Active:=False;
end;

end.
