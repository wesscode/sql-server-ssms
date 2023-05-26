/*OrderBy: Palavra chave. Tem como finalidade ordernar os registros
 que são retornados através das consultas que são executadas na base de dados.*/

-- ASC
 SELECT * FROM alunos ORDER BY nome ASC

-- ASC
 SELECT * FROM alunos ORDER BY nome DESC

 -- POSIÇÃO DA COLUNA
 SELECT * FROM alunos ORDER BY 1

 -- ORDERNANDO MAIS DE UMA COLUNA, OBEDECE AS POSIÇÕES DA COLUNA
 SELECT * FROM alunos ORDER BY nome ASC, cpf DESC, estado ASC