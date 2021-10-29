unit EstruturaSuporte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, ImgList, ComCtrls, DBTreeView, StdCtrls, Buttons, ExtCtrls,
  RxRichEd, DBRichEd, Mask, DBCtrls, Menus;

type
  TFrmArvoresuporte = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    DBTreeView1: TDBTreeView;
    ImageList1: TImageList;
    FormPlacement1: TFormPlacement;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    FormStorage1: TFormStorage;
    ImageList2: TImageList;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBTreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBTreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArvoresuporte: TFrmArvoresuporte;

implementation
    uses Msuporte,suporte;
{$R *.DFM}

procedure TFrmArvoresuporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFrmArvoresuporte.FormCreate(Sender: TObject);
begin
 DMsuporte := TDMsuporte.Create(self);
end;

procedure TFrmArvoresuporte.BitBtn1Click(Sender: TObject);
begin

  Try
   DBTreeView1.Enabled:= False;
   DMsuporte.ADOQsuporte.Insert;
   Frmsuporte := TFrmsuporte.Create(self);
   Frmsuporte.ShowModal;

  Finally
   Frmsuporte.Free;
   DBTreeView1.Enabled:= True;
   DMsuporte.ADOQsuporte.Refresh;
  end;

end;

procedure TFrmArvoresuporte.BitBtn2Click(Sender: TObject);
begin
 if  MessageDlg ('Deseja apagar ?',mtConfirmation,[mbYes,mbNo],0) = mrYes
  Then DBTreeView1.DeleteNode(DBTreeView1.Selected);
end;

procedure TFrmArvoresuporte.BitBtn3Click(Sender: TObject);
begin
    DBTreeView1.FullExpand
end;

procedure TFrmArvoresuporte.BitBtn4Click(Sender: TObject);
begin
 DBTreeView1.FullCollapse;
end;

procedure TFrmArvoresuporte.DBTreeView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := false;
  if( Sender is TDBTreeView ) then
  if( TDBTreeView(Sender) = DBTreeView1 ) then
  Accept := true;
end;

procedure TFrmArvoresuporte.DBTreeView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var

 TargetNode : TTreeNode;
 SourceNode : TTreeNode;
Begin

  TargetNode := DBTreeView1.GetNodeAt( X, Y );
  {Just to make things a bit easier}
   SourceNode := DBTreeView1.Selected;
   {Make sure something was dropped onto}
   if( TargetNode = nil ) then
       begin
        EndDrag( false );
        Exit;
       end;

{Dropping onto self or onto parent?}

if ((TargetNode = DBTreeView1.Selected) or
    (TargetNode = DBTreeView1.Selected.Parent))
    then
    begin
      ShowMessage( 'Nó destino é o mesmo do nó origem' );
      EndDrag( false );
   Exit;

end;
    {No drag-drop of the root allowed}
   if( SourceNode.Level = 0 ) then
     begin
      ShowMessage( 'Impossível arrastar e soltar a raiz' );
      EndDrag( false );
      Exit;
     end;
 {Can't drop a parent onto a child}
{ if( IsAParentNode( DBTreeView1.Selected, TargetNode ) ) then
  begin
    ShowMessage( 'Cant drop parent onto child' );
    EndDrag( false );
    Exit;
end; }
{Does a node with this name exists as a child of TargetNde}
{ if( IsDuplicateName( TargetNode.GetFirstChild, SourceNode.Text, true ) ) then
  begin
    ShowMessage( 'A node with this name already exists' );
    EndDrag( false );
    Exit;
  end;   }

   {Drag drop was valid so move the nodes}
   DBTreeView1.MoveTreeNode( SourceNode,  TargetNode  );

   {Delete the old node}
   SourceNode.Delete;
   {Show the nodes that were just moved}
    TargetNode.Expand(  true  );

End;

procedure TFrmArvoresuporte.BitBtn5Click(Sender: TObject);
begin
  Try
   DBTreeView1.Enabled:= False;
   DMsuporte.ADOQsuporte.Edit;
   Frmsuporte := TFrmsuporte.Create(self);
   Frmsuporte.ShowModal;

  Finally
   Frmsuporte.Free;
   DBTreeView1.Enabled:= True;
   DMsuporte.ADOQsuporte.Refresh;
  end;

end;

end.
