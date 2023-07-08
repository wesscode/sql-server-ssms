/*UDF:Funções do usuário*/

-- retornando varchar mascarado
CREATE FUNCTION Mascarar(@data VARCHAR(255), @quantidadeCaracteres int)
RETURNS VARCHAR(255)
AS 
BEGIN
    RETURN LEFT(@data, @quantidadeCaracteres)+ '**** ****'
END

SELECT dbo.Mascarar('Rafael Almeida', 4)
SELECT dbo.Mascarar(descricao, 4) FROM categorias 


/*Atenção: Não é indicado usar consultas dentro de funções! Ex.:Se precisar fazer uma consulta com uma função "SELECT fx(func com consulta) * FROM usuario." 
            para cada registro retornardo ele vai fazer uma nova consulta pra resolver a função.*/

-- Retornando int
CREATE FUNCTION ContarRegistros()
RETURNS INT
AS
BEGIN
    RETURN (SELECT COUNT(*) FROM categorias)
END

SELECT dbo.ContarRegistros()

-- Retornando estrutura dado
CREATE FUNCTION GetCategoriaById(@id int)
RETURNS TABLE
AS
    RETURN (SELECT * FROM categorias WHERE id=@id)

    SELECT * FROM dbo.GetCategoriaById(2)
