SELECT * FROM LMONOAUTOR



ALTER TRIGGER TautorPrincipal on [lmonoautor]
FOR UPDATE,INSERT
AS
DECLARE
 @@MSG varchar(100),
 @@nautorp smallint
SELECT @@MSG='Existencia de reponsável principal '+
       'para este exemplar.'+
    ' Você deverá mudar a responsabilidade,
    caso queira '+
   'incluir este autor.'
SELECT @@nautorp = count(*)
      FROM INSERTED,lmonoautor  
        WHERE INSERTED.tipoautor='Autor principal'
          and lmonoautor.tipoautor='Autor principal' and
          lmonoautor.idmono=INSERTED.idmono  
IF @@nautorp >1
   Begin
   RAISERROR (@@msg ,16,1)
   ROLLBACK TRANSACTION
   end
go



select * from lmonoautor
where tipoautor='Autor principal' and idmono=11


SELECT @@MSG='Já existe autor principal '+
       'para este exemplar.'+
    ' Você deverá mudar a responsabilidade,
    caso queira '+
   'incluir este autor.'