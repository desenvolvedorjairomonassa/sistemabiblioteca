/*  

    Título : Sistema de Bibliotecas
    Autor: Jairo Neder Monassa Moreira
    Data: 07-01-2002 
   
   
   
   
   Histórico :
   
   14-01-2002 - Acrescentado os gatilhos para totalização de fasciculos
   na tabela [lfascículos]: Tnperi1,Tnperi2,Tnperi3
   Autor: Jairo Neder Monassa Moreira
   
   
   13-01-2002 - Acrescentado os gatilhos para totalização dos descendentes do grupo
   na tabela [lgrupo]:  Tfilhogrupo1,Tfilhogrupo2,Tfilhogrupo3
   Autor: Jairo Neder Monassa Moreira
   
   23-01-2002 - Acrescentado o gatilho Verifica se há ancestral correspondente 
                 através somente do código
                Acrescentado o procedimento atualiza o parente para recriar
                a estrutura do suporte 
   Autor: Jairo Neder Monassa Moreira
   
    
*/

CREATE TRIGGER Tnobras1 ON [lmono]
FOR INSERT
AS
   /* Descréscimo de monografia */
    UPDATE lobramon
    SET total=ISNULL(total,0)+1 
    FROM INSERTED, lobramon
    WHERE lobramon.idobra=INSERTED.idobra
If Exists (SELECT * FROM INSERTED, lobramon
             WHERE lobramon.idobra=INSERTED.idobra AND INSERTED.perda is not null)     
   UPDATE lobramon
   SET tperdas=isnull(tperdas,0)+1
   FROM INSERTED, lobramon
   WHERE lobramon.idobra=INSERTED.idobra      
go    
    
    
CREATE TRIGGER Tnobras2 ON [lmono]
FOR DELETE
AS
    /* Descréscimo de monografia */
    UPDATE lobramon
    SET total=ISNULL(total,0)-1
    FROM DELETED, lobramon
    WHERE lobramon.idobra=DELETED.idobra  
If Exists (SELECT * FROM DELETED, lobramon
             WHERE lobramon.idobra=DELETED.idobra AND DELETED.perda is not null)     
   UPDATE lobramon
   SET tperdas=ISNULL(tperdas,0)-1
   FROM DELETED, lobramon
   WHERE lobramon.idobra=DELETED.idobra  
go

CREATE TRIGGER Tnobras3 ON [lmono]
FOR UPDATE
AS
If update (perda)
If Exists (SELECT * FROM inserted, lobramon
             WHERE lobramon.idobra=inserted.idobra AND inserted.perda is not null) 
      UPDATE lobramon
      SET tperdas=ISNULL(tperdas,0)-1
      FROM inserted, lobramon
      WHERE lobramon.idobra=inserted.idobra  
go

CREATE TRIGGER Tnperi1 ON [lfasciculo]
FOR INSERT
AS
   /* Descréscimo de fascículo */
    UPDATE lperiodico
    SET total=ISNULL(total,0)+1 
    FROM INSERTED, lperiodico
    WHERE lperiodico.idobra=INSERTED.idobra
If Exists (SELECT * FROM INSERTED, lperiodico
             WHERE lperiodico.idobra=INSERTED.idobra AND INSERTED.perda is not null)     
   UPDATE lperiodico
   SET tperdas=isnull(tperdas,0)+1
   FROM INSERTED, lperiodico
   WHERE lperiodico.idobra=INSERTED.idobra      
go    
    
    
CREATE TRIGGER Tnperi2 ON [lfasciculo]
FOR DELETE
AS
    /* Descréscimo de fascículo */
    UPDATE lperiodico
    SET total=ISNULL(total,0)-1
    FROM DELETED, lperiodico
    WHERE lperiodico.idobra=DELETED.idobra  
If Exists (SELECT * FROM DELETED, lperiodico
             WHERE lperiodico.idobra=DELETED.idobra AND DELETED.perda is not null)     
   UPDATE lperiodico
   SET tperdas=isnull(tperdas,0)-1
   FROM DELETED, lperiodico
   WHERE lperiodico.idobra=DELETED.idobra  
go

CREATE TRIGGER Tnperi3 ON [lfasciculo]
FOR UPDATE
AS
If update (perda)
If Exists (SELECT * FROM inserted, lperiodico
             WHERE lperiodico.idobra=inserted.idobra AND inserted.perda is not null) 
      UPDATE lperiodico
      SET tperdas=isnull(tperdas,0)-1
      FROM inserted, lperiodico
      WHERE lperiodico.idobra=inserted.idobra  
go


-- verifica a quantidade de autor principal
use tiasb
CREATE TRIGGER TautorPrincipal on [lmonoautor]
FOR UPDATE,INSERT
AS
DECLARE
 @nautorp smallint
SELECT @nautorp = count(*)
      FROM INSERTED,lmonoautor  
        WHERE INSERTED.tipoautor='Autor principal'
          and lmonoautor.tipoautor='Autor principal' and
          lmonoautor.idmono=INSERTED.idmono  
IF @nautorp >1
   Begin
   RAISERROR (50001 ,16,1)
   ROLLBACK TRANSACTION
   end
go

-- verifica a quantidade de autor principal em analíticas
CREATE TRIGGER TautorPanaperi on [lanaperiautor]
FOR UPDATE,INSERT
AS
DECLARE
 @nautorp smallint
SELECT @nautorp = count(*)
      FROM INSERTED,lanaperiautor 
        WHERE INSERTED.Tipoautor='Autor principal'
          and lanaperiautor.Tipoautor='Autor principal' and
          lanaperiautor.idana=INSERTED.idana
IF @nautorp >1
   Begin
   RAISERROR (50001 ,16,1)
   ROLLBACK TRANSACTION
   end
go


--adiciona uma mensagem
sp_dropmessage 50001
sp_addmessage 50001,16,
    N'Existencia de reponsável principal para este exemplar. 
Você deverá mudar a responsabilidade, caso queira 
incluir este autor.'

-- verifica a quantidade de assunto principal
CREATE TRIGGER TassuntoPrincipal on [lmonoassunto]
FOR UPDATE,INSERT
AS
DECLARE
 @nassuntop smallint
SELECT @nassuntop = count(*)
      FROM INSERTED,lmonoassunto 
        WHERE INSERTED.principal=1
          and lmonoassunto.principal=1 and
          lmonoassunto.idmono=INSERTED.idmono  
IF @nassuntop >1
   Begin
   RAISERROR (50002 ,16,1)
   ROLLBACK TRANSACTION
   end
go
-- verifica a quantidade de assunto principal por periodico
CREATE TRIGGER TassuntoPperi on [lassuntoperi]
FOR UPDATE,INSERT
AS
DECLARE
 @nassuntop smallint
SELECT @nassuntop = count(*)
      FROM INSERTED,lassuntoperi
        WHERE INSERTED.principal=1
          and lassuntoperi.principal=1 and
          lassuntoperi.idobra=INSERTED.idobra
IF @nassuntop >1
   Begin
   RAISERROR (50002 ,16,1)
   ROLLBACK TRANSACTION
   end
go
-- verifica a validade do assunto por analítica
CREATE TRIGGER TassuntoPanaperi on [lanaperiassunto]
FOR UPDATE,INSERT
AS
DECLARE
 @nassuntop smallint
SELECT @nassuntop = count(*)
      FROM INSERTED,lanaperiassunto
        WHERE INSERTED.principal=1
          and lanaperiassunto.principal=1 and
          lanaperiassunto.idana=INSERTED.idana
IF @nassuntop >1
   Begin
   RAISERROR (50002 ,16,1)
   ROLLBACK TRANSACTION
   end
go

sp_dropmessage 50002
--mensagem do exemplar
sp_addmessage 50002,16,
    N'Existencia de assunto principal para este exemplar. 
Você deverá mudar a indicação de principal, caso queira 
incluir este assunto.'



/* Gatilhos para atualização do descendentes do suporte */
Create Trigger Tfilholsuporte1 on [lsuporte]
FOR INSERT
AS
UPDATE lsuporte
SET lsuporte.filhos=lsuporte.filhos+1 
FROM INSERTED
WHERE lsuporte.idsuporte = inserted.parent_sup;
go
Create Trigger Tfilholsuporte2 on [lsuporte]
FOR DELETE
AS
UPDATE lsuporte
SET lsuporte.filhos=lsuporte.filhos-1 
FROM DELETED
WHERE lsuporte.idsuporte = DELETED.parent_sup;
go
/* não é necessário */
Create Trigger Tfilholsuporte3 on [lsuporte]
FOR update
AS
-- ADICIONAR
UPDATE lsuporte
SET lsuporte.filhos=lsuporte.filhos+1 
FROM INSERTED
WHERE lsuporte.idsuporte = inserted.parent_sup;
-- APAGAR
UPDATE lsuporte
SET lsuporte.filhos=lsuporte.filhos-1 
FROM DELETED
WHERE lsuporte.idsuporte = DELETED.parent_sup;
GO

/* Gatilhos para atualização do descendentes do grupo */


Create Trigger Tfilhogrupo1 on [lgrupo]
FOR INSERT
AS
UPDATE lgrupo
SET lgrupo.filhos=lgrupo.filhos+1 
FROM INSERTED
WHERE lgrupo.idgrupo = inserted.parent_grp;
go
Create Trigger Tfilhogrupo2 on [lgrupo]
FOR DELETE
AS
UPDATE lgrupo
SET lgrupo.filhos=lgrupo.filhos-1 
FROM DELETED
WHERE lgrupo.idgrupo = DELETED.parent_grp;
GO
/* não é necessário */
Create Trigger Tfilhogrupo3 on [lgrupo]
FOR UPDATE
AS
-- ADICIONAR
UPDATE lgrupo
SET lgrupo.filhos=lgrupo.filhos+1 
FROM INSERTED
WHERE lgrupo.idgrupo = inserted.parent_grp;
-- APAGAR
UPDATE lgrupo
SET lgrupo.filhos=lgrupo.filhos-1 
FROM DELETED
WHERE lgrupo.idgrupo = DELETED.parent_grp;
GO

-- Apagar mensagem
sp_dropmessage 50003
--mensagem do ancestral
sp_addmessage 50003,16,
    N'Não há ascendente correspondente'

/* Verifica se há ancestral correspondente */
ALTER TRIGGER Tsvalidarvore ON [lsuporte]
FOR INSERT,UPDATE 
AS 
 IF ((SELECT dbo.fponto(INSERTED.arvore) FROM INSERTED) <> 0  )
   IF UPDATE(arvore) 
     and NOT EXISTS
     (SELECT * FROM INSERTED,lsuporte
       WHERE lsuporte.arvore = 
        SUBSTRING(INSERTED.arvore,1,dbo.fponto(INSERTED.arvore)-1))   
       BEGIN
        RAISERROR (50003 ,16,1)
        ROLLBACK TRANSACTION  
       END 

/* Atualiza o parente para atualizar a estrutura do suporte */
CREATE PROCEDURE ancestral @id int
AS
SET NOCOUNT OFF
 IF (SELECT dbo.fponto(lsuporte.arvore) 
       FROM lsuporte
        WHERE idsuporte = @id  ) <> 0  
         UPDATE lsuporte
         SET parent_sup = (SELECT pai.idsuporte 
                            FROM  lsuporte as pai
                             WHERE pai.arvore = SUBSTRING(lsuporte.arvore,1,dbo.fponto(lsuporte.arvore)-1))
         WHERE idsuporte = @id
 ELSE 
   UPDATE lsuporte
   SET parent_sup = NULL
   WHERE idsuporte = @id 
SET NOCOUNT ON
GO

/* exemplos */
INSERT INTO lsuporte (codigo,idempresa,suporte,arvore)
   VALUES ('02',1,'Teste.01','6.01')

SELECT * FROM lsuporte
where suporte = 'Teste.01'

EXEC ANCESTRAL 37


'Nunca digo o que não sei, por isso digo quando não sei, não sei!'



sp_addmessage 50004,16,
    N'Possui descendentes, então, se quizeres
     apagar deverá apagá-los'

CREATE TRIGGER Tsvalidarvore2 ON [lsuporte]
FOR DELETE
AS
 IF ((SELECT dbo.fponto(DELETED.arvore) FROM DELETED) <> 0  )
   IF UPDATE(arvore) 
     and NOT EXISTS
     (SELECT * FROM DELETED,lsuporte
       WHERE DELETED.arvore LIKE lsuporte.arvore +'%')   
       BEGIN
        RAISERROR (50004 ,16,1)
        ROLLBACK TRANSACTION  
       END 
     