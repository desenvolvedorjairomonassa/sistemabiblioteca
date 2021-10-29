unit assunto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, RxGrdCpt, Placemnt, StdCtrls, Mask;

type
  TFrmassunto = class(TForm)
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    Label1: TLabel;
    assunto: TDBEdit;
    Label3: TLabel;
    cdd: TDBEdit;
    Label4: TLabel;
    cdu: TDBEdit;
    FormStorage1: TFormStorage;
    FormPlacement1: TFormPlacement;
    RxGradientCaption1: TRxGradientCaption;
    DBCheckBox1: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmassunto: TFrmassunto;

implementation
      uses Massunto;
{$R *.DFM}

end.
