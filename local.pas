unit local;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, DBCtrls, ExtCtrls, StdCtrls, Mask, RxLookup, RxRichEd,
  DBRichEd, Placemnt;

type
  TFrmlocal = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel7: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    nome: TDBEdit;
    codigo: TDBEdit;
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
    Splitter1: TSplitter;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    ToolBar4: TToolBar;
    Imagem: TDBImage;
    Panel5: TPanel;
    RxDBRichEdit1: TRxDBRichEdit;
    ativo: TDBCheckBox;
    FormPlacement1: TFormPlacement;
    FormStorage1: TFormStorage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlocal: TFrmlocal;

implementation
    uses mlocal;
{$R *.DFM}

end.
