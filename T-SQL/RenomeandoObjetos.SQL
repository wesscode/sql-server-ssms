
/*sp_rename: procedure do sistema disponivel para renomear nomes de objetos.*/

SELECT * from categorias

ALTER TABLE categorias ADD Teste VARCHAR(100)

-- Renomeia coluna
EXECUTE sp_rename'dbo.categorias.Teste', 'Observacao', 'COLUMN'

-- Renomeia tabela
EXECUTE sp_rename'dbo.TabelaTeste', 'TabelaAlterada'