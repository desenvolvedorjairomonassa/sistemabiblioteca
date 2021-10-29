program mbibliotecario;

uses
  Forms,
  principal in 'frm\principal.pas' {FrmMain},
  sobre in 'frm\sobre.pas' {AboutBox},
  obra in 'frm\obra.pas' {Frmobra},
  Gobra in 'frm\Gobra.pas' {FrmGridObra},
  seriada in 'frm\seriada.pas' {Frmseriada},
  edforn in 'frm\edforn.pas' {Frmedforn},
  local in 'frm\local.pas' {Frmlocal},
  parametros in 'frm\parametros.pas' {Frmparam},
  fasciculos in 'frm\fasciculos.pas' {Frmfasciculo},
  ctrlempdev in 'frm\ctrlempdev.pas' {Frmctrlemp},
  Mmain in 'modulo acesso\Mmain.pas' {DMmain: TDataModule},
  Mobra in 'modulo acesso\Mobra.pas' {DMobra: TDataModule},
  idioma in 'frm\idioma.pas' {FrmIdioma},
  autor in 'frm\autor.pas' {Frmautor},
  Mautor in 'modulo acesso\Mautor.pas' {DMautor: TDataModule},
  Medforn in 'modulo acesso\Medforn.pas' {DMEditForn: TDataModule},
  Gedforn in 'frm\Gedforn.pas' {FrmGridedforn},
  Gassunto in 'frm\Gassunto.pas' {FrmGridassunto},
  Massunto in 'modulo acesso\Massunto.pas' {DMassunto: TDataModule},
  assunto in 'frm\assunto.pas' {Frmassunto},
  Gautor in 'frm\Gautor.pas' {FrmGridautor},
  pais in 'frm\pais.pas' {Frmpais},
  periodicidade in 'frm\periodicidade.pas' {Frmperiodicidade},
  mespub in 'frm\mespub.pas' {Frmmespub},
  Mseriada in 'modulo acesso\Mseriada.pas' {DMseriada: TDataModule},
  Mlocal in 'modulo acesso\Mlocal.pas' {DMlocal: TDataModule},
  Glocal in 'frm\Glocal.pas' {FrmGridlocal},
  empresa in 'frm\empresa.pas' {FrmEmpresa},
  Mempresa in 'modulo acesso\Mempresa.pas' {DMempresa: TDataModule},
  EstruturaGrupo in 'frm\EstruturaGrupo.pas' {FrmArvoregrupo},
  Mgrupo in 'modulo acesso\Mgrupo.pas' {DMgrupo: TDataModule},
  Mctrlemp in 'modulo acesso\Mctrlemp.pas' {DMctrlemp: TDataModule},
  Msuporte in 'modulo acesso\Msuporte.pas' {DMsuporte: TDataModule},
  EstruturaSuporte in 'frm\EstruturaSuporte.pas' {FrmArvoresuporte},
  leitor in 'frm\leitor.pas' {Frmleitor},
  Mleitor in 'modulo acesso\Mleitor.pas' {DMleitor: TDataModule},
  exemplar in 'frm\exemplar.pas' {Frmexemplar},
  suporte in 'frm\suporte.pas' {Frmsuporte};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Katálogos-Me';
  Application.CreateForm(TDMmain, DMmain);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
