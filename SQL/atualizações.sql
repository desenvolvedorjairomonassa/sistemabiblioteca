/*
   Título : Atualizações
   Autor: Jairo Neder MOnassa Moreira (jairmonassa@bigfoot.com)
   Data : 13-01-2002
   SGBD: SQL Server 
   Descrição : Atualizações para correção dos dados do banco

/* atualizações dos descendentes de cada grupo */

UPDATE lgrupo
set filhos=(select count(*) from lgrupo gf where g.idgrupo=gf.parent_grp)
from lgrupo g

/* atualizações dos descendentes de cada suporte */

UPDATE lsuporte
set filhos=(select count(*) from lsuporte sf where s.idsuporte=sf.parent_sup)
from lsuporte s


INSERT INTO lctrlemp (idgrupo,idsuporte,idempresa)
select distinct idgrupo,idsuporte,g.idempresa 
from lgrupo g,lsuporte s
where s.idempresa = g.idempresa
and g.filhos = 0  and s.filhos = 0



UPDATE lobramon
SET total = (select count(*) from lmono where lmono.idobra=lobramon.idobra)

UPDATE lobramon
SET tperdas = (select count(*) from lmono 
               where lmono.idobra=lobramon.idobra and lmono.perda is not null)