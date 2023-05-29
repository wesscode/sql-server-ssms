-- LEFT JOIN: Tem como finalidade unir informações de duas fontes de dados.
-- Porém com o left join informamos ao sql que ele dê prioridade a tabela que está a ESQUEDA clausula JOIN


-- INSERT INTO categorias (descricao) VALUES ('Categoria Test')

--**prioridade a categorias, pois é a tabela a esquerda. Logo traz todas as categorias mesmo que não possua curso.
SELECT ca.descricao Categoria, cr.descricao Curso FROM categorias AS ca
LEFT JOIN cursos as cr ON cr.categoria_id = ca.id