CREATE FUNCTION Flmonoautor (@vIdmono int)  
RETURNS varchar(255) AS  
BEGIN 
DECLARE @autores varchar(255) 
DECLARE autor_cursor CURSOR FOR
SELECT nome FROM lautor,lmonoautor
 WHERE lmonoautor.idautor=lautor.idautor 
   and idmono=@vIdmono
OPEN autor_cursor
 FETCH NEXT FROM autor_cursor INTO  @autores
WHILE @@FETCH_STATUS = 0
 BEGIN
   FETCH NEXT FROM autor_Cursor 
 END
CLOSE autor_cursor
DEALLOCATE autor_cursor
RETURNS (@autores)
END


FETCH NEXT FROM autor_cursor
SELECT @@CURSOR_ROWS

select * from dbo.lmonoautor