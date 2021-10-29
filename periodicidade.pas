unit periodicidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Placemnt;

type
  TFrmperiodicidade = class(TForm)
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    periodicidade: TDBEdit;
    ADOQperiodicidade: TADOQuery;
    DSperiodicidade: TDataSource;
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
  Frmperiodicidade: TFrmperiodicidade;

implementation
    uses Mmain;
{$R *.DFM}

procedure TFrmperiodicidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrmperiodicidade.FormCreate(Sender: TObject);
begin
  ADOQperiodicidade.Active:=True;
end;

procedure TFrmperiodicidade.FormDestroy(Sender: TObject);
begin
 ADOQperiodicidade.Active:=False;
end;

end.
