--SAVE POINT: Nos da a capacidade de fazer um rollback de um determinado ponto da transação.

select * from categorias


BEGIN TRANSACTION
INSERT INTO categorias (descricao, cadastrado_em) VALUES ('Categoria Nova 1', GETDATE());
INSERT INTO categorias (descricao, cadastrado_em) VALUES ('Categoria Nova 2', GETDATE()); 

SAVE TRANSACTION AtualizacaoPoint
UPDATE categorias SET descricao='Aplicação WEB' WHERE descricao ='WEB'
GO

ROLLBACK TRANSACTION AtualizacaoPoint
COMMIT