-- COUNT: Função de agregação que retorna a quantidade de linhas da tabela.
-- SUM: Função de agregação que retorna a soma da coluna informada.

-- SELECT * FROM cursos
SELECT COUNT(*), SUM(total_horas), SUM(valor) FROM cursos