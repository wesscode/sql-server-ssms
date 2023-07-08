
CREATE PROCEDURE PesquisaCategoriaPorId(@id int)
AS 
BEGIN
    SELECT * FROM categorias WHERE id=@id
END

EXEC dbo.PesquisaCategoriaPorId 1


CREATE OR ALTER PROCEDURE PersistirDadosEmCategorias(@descricao VARCHAR(255))
AS
BEGIN
    IF(@descricao IS NULL)
    BEGIN
        RAISERROR('Descrição não é valida', 16, 1)
        RETURN
    END
    INSERT INTO categorias (descricao, cadastrado_em) VALUES (@descricao, GETDATE())
END


EXEC PersistirDadosEmCategorias @descricao='Categoria procedure'
EXEC PersistirDadosEmCategorias @descricao=null