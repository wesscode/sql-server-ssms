-- FULL JOIN: Tem como finalidade unir informações de duas fontes de dados.
-- Porém com o full join informamos ao sql que ele traga os dados de todos por mais que não possuam relacionamento.

SELECT cr.descricao Categoria, ca.descricao Curso FROM cursos AS cr
FULL JOIN cursos as ca ON ca.id = (cr.categoria_id +4)