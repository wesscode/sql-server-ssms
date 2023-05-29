-- Having: Cláusula de critério, utilizada junto com GroupBy. Trabalha em cima do resultado do agrupamento.
SELECT cidade, estado, COUNT(*) Total FROM alunos
GROUP BY cidade, estado
HAVING COUNT(*) > 1