-- GroupBy: Cláusula para agrupar dados.

SELECT cidade, estado, COUNT(*) FROM alunos
GROUP BY cidade, estado