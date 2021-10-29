unit suporte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, RxRichEd, DBRichEd, Mask;

type
  TFrmsuporte = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RxDBRichEdit1: TRxDBRichEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmsuporte: TFrmsuporte;

implementation
  uses Msuporte;
{$R *.DFM}

procedure TFrmsuporte.FormCreate(Sender: TObject);
begin
  //DMsuporte:= TDMsuporte.Create(self);
end;

end.
