
-- (Halitando as estatística)
-- IO: saber quantas leituras foram executadas
-- TIME ON: saber o tempo de custo que a cpu levou para executar as instruções.
SET STATISTICS IO, TIME ON

SELECT COUNT (*) FROM Tabela_Teste WITH(NOLOCK)


SELECT SUM(s.row_count) FROM sys.dm_db_partition_stats as s
WHERE OBJECT_NAME(object_id) = 'Tabela_Teste'
AND s.index_id IN (0,1) -- And para saber se é índice que está na reap ou agregado;