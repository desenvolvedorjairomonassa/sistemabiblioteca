unit Mmain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMmain = class(TDataModule)
    ADOConexao: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMmain: TDMmain;

implementation

{$R *.DFM}

end.
