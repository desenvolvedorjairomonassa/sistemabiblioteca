unit Edforn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, Placemnt, RxLookup,
  RxRichEd, DBRichEd, RxGrdCpt;

type
  TFrmedforn = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    nomefantasia: TDBEdit;
    razaosocial: TDBEdit;
    ativo: TDBCheckBox;
    codigo: TDBEdit;
    tipo: TDBRadioGroup;
    CGC: TDBEdit;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    bairro: TDBEdit;
    cidade: TDBEdit;
    endereco: TDBEdit;
    CEP: TDBEdit;
    email: TDBEdit;
    web: TDBEdit;
    Panel5: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBEdit21: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    pais: TRxDBLookupCombo;
    estado: TRxDBLookupCombo;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    RxGradientCaption1: TRxGradientCaption;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmedforn: TFrmedforn;

implementation
  uses MEdForn;
{$R *.DFM}

procedure TFrmedforn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
