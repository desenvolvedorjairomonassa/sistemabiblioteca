unit empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RxRichEd, DBRichEd, DBCtrls, ToolWin, ComCtrls, ExtCtrls,
  RxLookup, Mask, Placemnt;

type
  TFrmEmpresa = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel7: TPanel;
    Label3: TLabel;
    nome: TDBEdit;
    ativo: TDBCheckBox;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    endereco: TDBEdit;
    cidade: TDBEdit;
    pais: TRxDBLookupCombo;
    email: TDBEdit;
    web: TDBEdit;
    bairro: TDBEdit;
    estado: TRxDBLookupCombo;
    CEP: TDBEdit;
    Panel9: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DDI1: TDBEdit;
    DDI2: TDBEdit;
    DDI3: TDBEdit;
    DDD1: TDBEdit;
    DDD2: TDBEdit;
    DDD3: TDBEdit;
    N1: TDBEdit;
    n2: TDBEdit;
    n3: TDBEdit;
    ramal1: TDBEdit;
    ramal2: TDBEdit;
    ramal3: TDBEdit;
    tipo1: TDBComboBox;
    tipo2: TDBComboBox;
    tipo3: TDBComboBox;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    ToolBar4: TToolBar;
    Imagem: TDBImage;
    Panel5: TPanel;
    ToolBar5: TToolBar;
    RxDBRichEdit1: TRxDBRichEdit;
    Label1: TLabel;
    razaosocial: TDBEdit;
    Label10: TLabel;
    CGC: TDBEdit;
    FormPlacement1: TFormPlacement;
    FormStorage1: TFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation
 uses Mempresa;
{$R *.DFM}

procedure TFrmEmpresa.FormCreate(Sender: TObject);
begin
  DMempresa:=TDMempresa.Create(self);
end;

procedure TFrmEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
