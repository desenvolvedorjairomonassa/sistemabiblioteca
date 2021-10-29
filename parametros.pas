unit parametros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXCtrls, StdCtrls, ToolWin, ComCtrls, ExtCtrls, RxLogin, DBSecur;

type
  TFrmparam = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    GroupBox1: TGroupBox;
    RxCheckListBox1: TRxCheckListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmparam: TFrmparam;

implementation

{$R *.DFM}

end.
