
-- Após muito tempo de uso é necessário desfragmentar os índices para evitar perdas de performance.

ALTER INDEX idx_tabela_teste_descricao ON Tabela_Teste REORGANIZE -- reorganiza o índice específico da tabela.
ALTER INDEX ALL ON Tabela_Teste REORGANIZE --reorganiza todos os índices da tabela.

ALTER INDEX ALL ON Tabela_Teste REBUILD  -- recria todos os índices da tabela.
ALTER INDEX idx_tabela_teste_descricao ON Tabela_Teste REBUILD  -- recria o índice especifico da tabela.

SELECT OBJECT_NAME(ips.object_id) AS object_name,
       i.name AS index_name, 
       ips.avg_fragmentation_in_percent, 
       ips.page_count
FROM sys.dm_db_index_physical_stats(DB_ID(), default, default, default, 'SAMPLED') AS ips
INNER JOIN sys.indexes AS i 
ON ips.object_id = i.object_id
   AND ips.index_id = i.index_id
   AND i.name IS NOT NULL
ORDER BY page_count DESC;
