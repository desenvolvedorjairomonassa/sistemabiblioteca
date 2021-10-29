unit seriada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, ToolWin, Grids, DBGrids, ToolEdit, RXDBCtrl, StdCtrls,
  DBCtrls, RxLookup, Mask, ExtCtrls, RxRichEd, DBRichEd, Buttons;

type
  TFrmseriada = class(TForm)
    ImageList1: TImageList;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    titulo: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    ISSN: TDBEdit;
    CNN: TDBEdit;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    editora: TRxDBLookupCombo;
    Idioma: TDBLookupComboBox;
    suporte: TDBLookupComboBox;
    local: TDBComboBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    iniciopub: TDBDateEdit;
    terminopub: TDBDateEdit;
    especial: TRxDBRichEdit;
    TabSheet2: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmseriada: TFrmseriada;

implementation
     uses Mseriada;
{$R *.DFM}

procedure TFrmseriada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree; 
end;

procedure TFrmseriada.FormCreate(Sender: TObject);
begin
   DMseriada := TDMSeriada.Create(self);
end;

end.
