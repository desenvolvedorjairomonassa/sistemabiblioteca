unit mexemplar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB;

type
  TDMexemplar = class(TDataModule)
    DSmono: TDataSource;
    ADOQmono: TADOQuery;
    ADOQmonoIdmono: TIntegerField;
    ADOQmonoTipo: TStringField;
    ADOQmonoTitulo_exe: TStringField;
    ADOQmonoTombo: TStringField;
    ADOQmonoVolume: TStringField;
    ADOQmonoTomo: TIntegerField;
    ADOQmonoEdicao: TIntegerField;
    ADOQmonoImpressao: TIntegerField;
    ADOQmonoTiragem: TIntegerField;
    ADOQmonoAtualizado: TIntegerField;
    ADOQmonoRevisado: TIntegerField;
    ADOQmonoAumentado: TIntegerField;
    ADOQmonoAmpliado: TIntegerField;
    ADOQmonoAno_pub: TIntegerField;
    ADOQmonoEstacao: TStringField;
    ADOQmonoIlust: TIntegerField;
    ADOQmonoNpag: TIntegerField;
    ADOQmonoDimensao: TStringField;
    ADOQmonoISBN: TStringField;
    ADOQmonoidlocal: TIntegerField;
    ADOQmonoidempresa: TIntegerField;
    ADOQmonoIdobra: TIntegerField;
    ADOQmonoDono: TStringField;
    ADOQmonoPerda: TDateTimeField;
    ADOQmonoMotivo: TMemoField;
    ADOQmonoNo_exe: TIntegerField;
    ADOQmonoFlag_emp: TIntegerField;
    ADOQmonoRazao: TStringField;
    ADOQmonoCapa: TBlobField;
    ADOQmonoTipoAqs: TStringField;
    ADOQmonorefbibli: TMemoField;
    ADOQmonoData_compra: TDateTimeField;
    ADOQmonoData_pg: TDateTimeField;
    ADOQmonoData_chegada: TDateTimeField;
    ADOQmonoPreco: TBCDField;
    ADOQmonoObs: TMemoField;
    ADOQmonoIdforn: TIntegerField;
    procedure ADOQmonoBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMexemplar: TDMexemplar;

implementation
 uses Mmain, Mobra;
{$R *.DFM}

procedure TDMexemplar.ADOQmonoBeforePost(DataSet: TDataSet);
begin
  ADOQmono.FieldByName('tipo').AsString:='Monografia';

end;

procedure TDMexemplar.DataModuleCreate(Sender: TObject);
begin
 //ADOQmono.Active:= True;
end;

procedure TDMexemplar.DataModuleDestroy(Sender: TObject);
begin
 //ADOQmono.Active:= False;
end;

end.
