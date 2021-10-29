unit idioma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, DBCtrls, ExtCtrls, StdCtrls, Mask, DBIndex, Placemnt;

type
  TFrmIdioma = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    ADOQIdioma: TADOQuery;
    DBEidioma: TDBEdit;
    DSIdioma: TDataSource;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEidiomaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIdioma: TFrmIdioma;

implementation
     uses Mmain;
{$R *.DFM}

procedure TFrmIdioma.FormCreate(Sender: TObject);
begin
  ADOQIdioma.Active:=True;
end;

procedure TFrmIdioma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFrmIdioma.FormDestroy(Sender: TObject);
begin
  ADOQIdioma.Active:=False;
end;

procedure TFrmIdioma.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
  Var Titulo: String;
begin
  if Button<>nbInsert
  Then Titulo:= 'Idioma: '+DBEidioma.Text
  Else Titulo:='Inserindo novo idioma';
  FrmIdioma.Caption:= Titulo;
end;

procedure TFrmIdioma.DBEidiomaChange(Sender: TObject);
  Var Titulo: String;
begin
  Titulo:= 'Idioma: '+DBEidioma.Text;
  FrmIdioma.Caption:= Titulo;
end;

procedure TFrmIdioma.FormActivate(Sender: TObject);
  Var Titulo: String;
begin
   Titulo:= 'Idioma: '+DBEidioma.Text;
  FrmIdioma.Caption:= Titulo;
end;

end.
