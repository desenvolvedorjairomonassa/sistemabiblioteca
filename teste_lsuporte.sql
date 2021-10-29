select * from lsuporte
sp_help lsuporte

INSERT INTO lsuporte
VALUES ('Monografia','Monografia','01',1,null,1)

INSERT INTO lsuporte
VALUES ('Multimeio','Multimeio','02',1,null,1)
INSERT INTO lsuporte
VALUES ('Publicação seriada','Publicação seriada','03',1,null,1)
INSERT INTO lsuporte
VALUES ('Trilha sonora','Trilha sonora','04',1,null,1)
INSERT INTO lsuporte
VALUES ('Material Cartográfico','Material Cartográfico','05',1,null,1)

INSERT INTO lsuporte
values ('Monografia','Apostilas','01.10',1,'01',1)
ALTER TABLE [dbo].[lsuporte] ADD CONSTRAINT [PKlsuporte] PRIMARY KEY  NONCLUSTERED 
	(
		[idsuporte]
	)  ON [PRIMARY] 
GO

ALTER TABLE Lsuporte alter column tipo varchar(21) null


delete lsuporte
where suporte='apostilas'


ALTER TABLE lsuporte ADD parent_SUP varchar(20) NULL
ALTER TABLE lsuporte ADD ativo int NULL

UPDATE lsuporte
set parent_sup= substring(codigo,1,2)
where len(codigo)>1

update lsuporte 
set ativo=1
where


select * from lparametro
ALTER TABLE lparametro ADD datainivigencia datetime
ALTER TABLE lparametro ADD datafimvigencia datetime


select codigo,suporte,
from lsuporte
where ativo=1 and parent_sup is not null

SELECT suporte,codigo
  FROM lsuporte
   WHERE ativo=1 and 
    (SELECT suporte FROM lsuporte p 
         WHERE p.idsuporte=lsuporte.parent_sup) ='Monografia'


ALTER TABLE lsuporte ADD idsuporte int identity(1,1)



ALTER TABLE lsuporte
       ADD CONSTRAINT PKlsuporte PRIMARY KEY NONCLUSTERED (idsuporte)
go


ALTER TABLE lsuporte
       ADD CONSTRAINT FKlsuporte_lsuporte
              FOREIGN KEY (idsuporte)
                             REFERENCES lsuporte
go




update lsuporte 
set parent_sup=9
where  parent_sup='01'


ALTER TABLE lobramon 
     ADD idsuporte int null

select Idobra, tipo, Titulo, Classifica, Cutter, ISBN, Nvolbib, Nvolfis,
Local, DescriFi, Idioma, Titulo_Orig, Total, Tperdas, Serie, Nt_Geral,
Resumo, Conteudo, IDED,idsuporte
 FROM lobramon
WHERE 
   (select suporte from lsuporte
      where idsuporte=(select parent_sup from lsuporte 
       where idsuporte=lobramon.idsuporte)) ='Monografia'


ALTER TABLE lobramon ADD CONSTRAINT FKlobramon_lsuporte
       FOREIGN KEY (IDSUPORTE) 
                REFERENCES lsuporte
ALTER TABLE lobramon ADD CONSTRAINT PKlobramon 
     PRIMARY KEY (idobra)

ALTER TABLE lobramon ALTER COLUMN suporte varchar(100) null

ALTER TABLE [dbo].[lmono] ADD CONSTRAINT [PKidmono] PRIMARY KEY  NONCLUSTERED 
	(
		[Idmono],
		[Tipo]
	)  ON [PRIMARY] 
GO

ALTER TABLE lmono ADD CONSTRAINT FKlmono_lobramon
       FOREIGN KEY (idobra) 
                REFERENCES lobramon


select Idobra, tipo, Titulo, Classifica, Cutter, ISBN, Nvolbib, Nvolfis,
Local, DescriFi, Idioma, Titulo_Orig, Total, Tperdas, Serie, Nt_Geral,
Resumo, Conteudo, IDED,idsuporte
 FROM lobramon
WHERE 
   (select suporte from lsuporte
      where idsuporte=(select parent_sup from lsuporte 
       where idsuporte=lobramon.idsuporte)) ='Monografia'

update lobramon
set tipo='Monografia'
where idobra=8

select idmono,idautor,tipoautor from lmonoautor

alter table lmonoautor drop column tipo


select * from sysobjects
where xtype = 'U' AND name like 'l%'