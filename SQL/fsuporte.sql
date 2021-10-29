/* SQL Server */ 
CREATE FUNCTION fsuporte (@idsuporte int )
RETURNS varchar(30)
AS
BEGIN
DECLARE @arvore varchar(20)
DECLARE @parent int
SELECT @arvore = codigo ,@parent = parent_sup
 FROM lsuporte 
  WHERE idsuporte= @idsuporte
if @parent is not null
  SELECT @arvore = dbo.fsuporte(@parent ) + '.' + @arvore
RETURN (@arvore)
END
go


/* Exemplo de uso do function */

select dbo.fsuporte(idsuporte),* 
from lsuporte
order by dbo.fsuporte(idsuporte)


/* InterBase */
CREATE PROCEDURE FSUPORTE (
    IDSUPORTE INTEGER)
RETURNS (
    ESTRUTURANO VARCHAR(100))
AS
DECLARE VARIABLE arvore varchar(10);;
DECLARE VARIABLE parent integer;
begin
arvore = 0;
SELECT codigo ,parent_sup
 FROM lsuporte
  WHERE idsuporte = :idsuporte INTO :EstruturaNo,  :parent;
if (:parent IS NOT NULL)
 Then
  Begin
   execute procedure fsuporte :parent RETURNING_VALUES :arvore;
   EstruturaNo = arvore ||'.'|| EstruturaNo;
  end
 SUSPEND;
END

/* Oracle */





/* mostra a posição do último ponto */
ALTER FUNCTION fponto (@ponto varchar(20))
RETURNS int
AS
BEGIN
DECLARE @cadeia varchar(20)
DECLARE @posicao int
SELECT @posicao=CHARINDEX('.',@ponto,1)
  IF (@cadeia is not null) or
     (@posicao)<>0
   Begin 
     SELECT @cadeia = SUBSTRING(@ponto,@posicao+1,len(@ponto))
     SELECT @posicao = dbo.fponto(@cadeia) + @posicao
   End
RETURN (@posicao)
END


select dbo.fsuporte(idsuporte),dbo.fponto(dbo.fsuporte(idsuporte)),*
from lsuporte
order by dbo.fsuporte(idsuporte)