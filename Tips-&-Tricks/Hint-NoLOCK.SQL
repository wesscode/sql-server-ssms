-- Hint NoLOCK: Ou chamado consultas "sujas", pois o mesmo traz na consulta todos os dados até mesmos dados travados por Transações.

SELECT * FROM categorias WITH (NOLOCK)