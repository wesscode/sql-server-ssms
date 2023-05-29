-- Função de agregação: MAX e MIN

SELECT MAX(id) from alunos --**maior valor do campo informado
SELECT MIN(id) from alunos --**menor valor do campo informado

SELECT * FROM alunos WHERE id = (SELECT MAX(id) from alunos)