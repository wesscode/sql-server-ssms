

CREATE OR ALTER VIEW vwCursos
AS
SELECT c.descricao, ca.descricao as categoria, ca.cadastrado_em FROM cursos as c 
INNER JOIN categorias as ca 
ON c.categoria_id = ca.id

SELECT * FROM vwCursos WHERE descricao = 'EF Core'
DROP VIEW vwCursos