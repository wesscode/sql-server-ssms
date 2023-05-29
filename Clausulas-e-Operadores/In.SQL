-- IN: Operador utilizado com WHERE, passando um array de informações que queremos adicionar ao nosso filtro.

-- SELECT * FROM alunos WHERE id IN (2, 4)
SELECT * FROM alunos WHERE id IN (SELECT id FROM alunos)