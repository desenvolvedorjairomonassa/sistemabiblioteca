unit mono;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDMmono = class(TDataModule)
    DSmono: TDataSource;
    Qmono: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMmono: TDMmono;

implementation

{$R *.DFM}

end.
