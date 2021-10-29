select * from lgrupo



ALTER TABLE LGRUPO ADD parent_grp int null
ALTER TABLE LGRUPO ADD filhos smallint null
exec sp_bindefault DSTATUS_0, 'lgrupo.Filhos'
ALTER TABLE lgrupo drop column "descrição"
ALTER TABLE lgrupo ADD descricao varchar(100) null

INSERT INTO lgrupo (codigo, descricao, filhos)
Values (0,'Grupo',0)