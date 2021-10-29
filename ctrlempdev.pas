unit ctrlempdev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, DBSearch, RxDBComb, ExtCtrls, RxLookup, Placemnt, Mask;

type
  TFrmctrlemp = class(TForm)
    Panel1: TPanel;
    DBNavigator2: TDBNavigator;
    Panel2: TPanel;
    Panel3: TPanel;
    FormPlacement1: TFormPlacement;
    FormStorage1: TFormStorage;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmctrlemp: TFrmctrlemp;

implementation
   uses Mctrlemp;
{$R *.DFM}

procedure TFrmctrlemp.FormCreate(Sender: TObject);
begin
 DMctrlemp:=TDMctrlemp.Create(self);
end;

procedure TFrmctrlemp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

end.
