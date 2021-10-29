unit autor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Mask, RxGrdCpt, Placemnt;

type
  TFrmautor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    Label1: TLabel;
    DBEnome: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    RxGradientCaption1: TRxGradientCaption;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmautor: TFrmautor;

implementation

uses Mautor;

{$R *.DFM}

procedure TFrmautor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFrmautor.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Frmautor.Caption :=DBEnome.Text;
end;

end.
