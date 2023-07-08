
select * from categorias

BEGIN TRANSACTION
UPDATE categorias SET descricao=UPPER(descricao) WHERE id > 0
GO
DELETE categorias where id = 4
GO

COMMIT
ROLLBACK


-- COMMIT: Formaliza as alterações executadas no banco
-- ROLLBACK: Desfaz as alterações executadas no banco.

/* cada aba do sqlserver aberto é tratado como uma sessão, ao iniciar uma transação e abrir uma nova sessão e consultar nas tabelas que estão em transação aberta,
a consulta vai iniciar mas ficará aguardando a transação iniciada ser concluida com (COMMIT/ROLLBACK). */

/* se eu fechar a aba que foi executada a transação, automáticamentimente é executada um ROLLBACK */