unit teste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ComCtrls, DBTreeView, ADODB, ImgList, DBTables, StdCtrls, ExtCtrls,
  Menus, Grids, DBGrids;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBTreeView1: TDBTreeView;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}
 uses unit2;
procedure TForm1.FormCreate(Sender: TObject);
begin
 DBTreeView1.RebuildTree(True);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 DBTreeView1.InsertNew(DBTreeView1.Selected);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 DBTreeView1.DeleteNode(DBTreeView1.Selected);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  DBTreeView1.EditNode(DBTreeView1.Selected);
end;

 initialization
 RegisterClass(TForm);

end.
