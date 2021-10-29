unit Gautor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, RxGrdCpt, Placemnt, StdCtrls, ExtCtrls, Db,
  gridsrch;

type
  TFrmGridautor = class(TForm)
    Panel1: TPanel;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    RxGradientCaption1: TRxGradientCaption;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    DBGridSearch1: TDBGridSearch;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridautor: TFrmGridautor;

implementation
      uses mautor, autor;
{$R *.DFM}

procedure TFrmGridautor.FormCreate(Sender: TObject);
begin
   DMautor := TDMautor.Create(self);
end;

procedure TFrmGridautor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrmGridautor.RxDBGrid1DblClick(Sender: TObject);
begin
  Frmautor := TFrmautor.Create(self);
  Frmautor.ShowModal;
end;

procedure TFrmGridautor.RxDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
  Var MSQL: TStringList ;
begin
 if (Field <> nil) then
   begin
    DMautor.ADOQautor.Close;
    MSQL := TStringList.Create;
     try
       MSQL.Add
      ('SELECT nome,idautor,Cutter ' +
      ' FROM lautor               ' +
     ' ORDER BY '+Field.FieldName);
      DMautor.ADOQautor.SQL.Clear;
      DMautor.ADOQautor.SQL.AddStrings(MSQL);
      DMautor.ADOQautor.Open;
     finally
      MSQL.Free;
      end;  {fim-finally}
   end ;{fim-if}
end;

end.
