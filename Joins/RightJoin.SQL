-- RIGHT JOIN: Tem como finalidade unir informações de duas fontes de dados.
-- Porém com o right join informamos ao sql que ele dê prioridade a tabela que está a DIREITA do operador JOIN

--**prioridade a categorias, pois é a tabela a direita. Logo traz todas as categorias mesmo que não possua curso.
SELECT cr.descricao Categoria, ca.descricao Curso FROM cursos AS cr
RIGHT JOIN cursos as ca ON ca.id = cr.categoria_id