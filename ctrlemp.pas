unit ctrlemp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, ToolWin, ComCtrls;

type
  TFrmctrlempGrid = class(TForm)
    ToolBar1: TToolBar;
    RxDBGrid1: TRxDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmctrlempGrid: TFrmctrlempGrid;

implementation

{$R *.DFM}

end.
