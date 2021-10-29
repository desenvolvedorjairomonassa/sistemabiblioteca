unit fasciculos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, Mask, Buttons,
  ToolWin;

type
  TFrmfasciculo = class(TForm)
    ToolBar1: TToolBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    edicao: TDBEdit;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    volume: TDBEdit;
    ano: TDBEdit;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    flag_emp: TDBCheckBox;
    razao: TDBComboBox;
    TabSheet3: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DBGrid1: TDBGrid;
    TabSheet5: TTabSheet;
    DBComboBox1: TDBComboBox;
    Panel1: TPanel;
    Splitter2: TSplitter;
    Panel2: TPanel;
    ToolBar4: TToolBar;
    Imagem: TDBImage;
    Panel3: TPanel;
    referencia: TDBRichEdit;
    ToolBar5: TToolBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    titulo: TDBEdit;
    issn: TDBEdit;
    notaindicativa: TDBComboBox;
    mes: TDBComboBox;
    Label6: TLabel;
    paginas: TDBEdit;
    Label10: TLabel;
    tombo: TDBEdit;
    Label4: TLabel;
    numero: TDBEdit;
    Label5: TLabel;
    Label9: TLabel;
    exemplar: TDBEdit;
    Label14: TLabel;
    depositario: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmfasciculo: TFrmfasciculo;

implementation

{$R *.DFM}

end.
