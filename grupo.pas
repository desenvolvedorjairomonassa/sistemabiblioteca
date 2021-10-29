unit grupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, DBTreeView, ExtCtrls, StdCtrls, Buttons, ImgList, Placemnt;

type
  TFrmgrupo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBTreeView1: TDBTreeView;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList1: TImageList;
    FormPlacement1: TFormPlacement;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBTreeView1GetSelectedIndex(Sender: TObject;
      Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrupo: TFrmGrupo;

implementation
     uses Mgrupo;
{$R *.DFM}

procedure TFrmgrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrmgrupo.FormCreate(Sender: TObject);
begin
  DMgrupo:= TDMgrupo.Create(self);
end;

procedure TFrmgrupo.BitBtn1Click(Sender: TObject);
begin
 DBTreeView1.InsertNew(DBTreeView1.Selected);
end;

procedure TFrmgrupo.BitBtn2Click(Sender: TObject);
begin
 DBTreeView1.DeleteNode(DBTreeView1.Selected);
end;

procedure TFrmgrupo.DBTreeView1GetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  Node.ImageIndex:=0;
  Node.SelectedIndex:=1;

end;

end.
