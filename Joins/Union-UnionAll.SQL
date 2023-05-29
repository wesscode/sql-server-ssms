-- UNION e UNION ALL: Operadores de junção tem como finalidade mergear o resultado de várias consultas.

--UNION: Faz a distinção dos resultados, elimina resultados duplicados.
SELECT descricao FROM cursos WHERE id= 1
UNION
SELECT descricao FROM categorias WHERE id = 2
UNION
SELECT 'Valor dinamico'
UNION
SELECT 'Valor dinamico'

--UNION ALL: Traz o resultado sem alteração.
SELECT descricao FROM cursos WHERE id= 1
UNION ALL
SELECT descricao FROM categorias WHERE id = 2
UNION ALL
SELECT 'Valor dinamico'
UNION ALL
SELECT 'Valor dinamico'