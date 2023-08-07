-- Sempre verificar o plano de execução para saber se o SQL está utilizando os Índices programados.

SELECT descricao FROM Tabela_Teste WHERE LEFT(descricao, 16) = 'DESCRICAO 900000' -- O operado LEFT anulou o Índices criado para a coluna descrição na condição.

SELECT descricao FROM Tabela_Teste WHERE descricao LIKE 'DESCRICAO 900000%'  -- Maneira correta de utilizar a condição fazendo o uso do Índices criado para a coluna.