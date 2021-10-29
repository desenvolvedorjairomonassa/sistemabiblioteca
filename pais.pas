unit pais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, DBCtrls, ExtCtrls, Db, ADODB, StdCtrls, Mask,
  RxGrdCpt, Placemnt;

type
  TFrmpais = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    DSPais: TDataSource;
    ADOQPais: TADOQuery;
    ADOQRegiao: TADOQuery;
    DSRegiao: TDataSource;
    ADOQPaispais: TStringField;
    Label1: TLabel;
    pais: TDBEdit;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    RxGradientCaption1: TRxGradientCaption;
    ADOQRegiaoestado: TStringField;
    ADOQRegiaopais: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmpais: TFrmpais;

implementation
     uses Mmain;
{$R *.DFM}

procedure TFrmpais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmpais.FormCreate(Sender: TObject);
begin
  ADOQPais.Active:=True;
  ADOQRegiao.Active:=True;
end;

procedure TFrmpais.FormDestroy(Sender: TObject);
begin
  ADOQPais.Active:=False;
  ADOQRegiao.Active:=False;
end;

end.
