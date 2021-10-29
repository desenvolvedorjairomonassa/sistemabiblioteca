unit mespub;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, Db, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFrmmespub = class(TForm)
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    mespub: TDBEdit;
    ADOQmespub: TADOQuery;
    DSmespub: TDataSource;
    FormPlacement1: TFormPlacement;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmmespub: TFrmmespub;

implementation
    uses Mmain;
{$R *.DFM}

procedure TFrmmespub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmmespub.FormCreate(Sender: TObject);
begin
  ADOQmespub.Active:=True;
end;

procedure TFrmmespub.FormDestroy(Sender: TObject);
begin
  ADOQmespub.Active:=False;
end;

end.
