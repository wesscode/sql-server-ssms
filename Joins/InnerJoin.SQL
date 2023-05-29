-- INNER JOIN: Tem como finalidade unir informações de duas fontes de dados.

SELECT * FROM categorias
SELECT * FROM cursos

-- SELECT *  FROM cursos AS cr
-- INNER JOIN categorias as ca ON ca.id = cr.categoria_id

SELECT cr.descricao Curso, ca.descricao Categoria FROM cursos AS cr
INNER JOIN categorias as ca ON ca.id = cr.categoria_id