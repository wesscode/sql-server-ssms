--Top: Determina a quantidade de registro que deseja trazer na consulta.
--OFFSET: Pula linhas
--FETCH: Retorna uma quantidade determinada na instrução.

-- SELECT TOP 4 * FROM alunos ORDER BY id;
-- SELECT TOP 10 PERCENT * FROM alunos ORDER BY id;

-- Exemplo de páginação
SELECT * FROM alunos ORDER BY id
OFFSET 2 ROWS
FETCH FIRST 2 ROWS ONLY;