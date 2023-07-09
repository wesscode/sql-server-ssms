
/*Removendo coluna a uma tabela já existente.*/

ALTER TABLE categorias DROP CONSTRAINT DF__categoria__Teste__04E4BC85; --comando necessário porque criei a coluna com valor default. O sql cria uma constraint para a coluna.
ALTER TABLE categorias DROP COLUMN Teste;