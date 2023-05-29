-- Operador LIKE

-- SELECT * FROM alunos WHERE nome LIKE 'Bruno'
SELECT * FROM alunos WHERE nome LIKE 'Br%' --**Consulta pelos caracters iniciais
SELECT * FROM alunos WHERE nome LIKE '%o' --**Consulta pelos caracters finais
SELECT * FROM alunos WHERE nome LIKE '%a%' --**Consulta pelos caracters em toda string
SELECT * FROM alunos WHERE nome LIKE 'B%o' --**Consulta pelos caracters iniciam e terminam