
-- Estrutura e populando tabelas. 
use EstudoSql;

CREATE TABLE produtos
(
	id int identity primary key,
	descricao varchar(100)
)
GO

CREATE TABLE pedidos
(
	id int identity primary key,
	data DATE,
	observacao VARCHAR(100)
)
GO


CREATE TABLE pedido_itens
(
	id int identity primary key,
	pedido_id INT,
	produto_id INT,
	quantidade INT,
	valor DECIMAL(12, 2),
	FOREIGN KEY(pedido_id) REFERENCES pedidos(id),
	FOREIGN KEY(produto_id) REFERENCES produtos(id),
)
GO


DECLARE @produtos INT = 1 
WHILE @produtos <= 50
BEGIN  
  INSERT INTO produtos(descricao)  VALUES ('PRODUTO '+cast(@produtos as varchar));
  SET @produtos = @produtos+1
END 

DECLARE @pedidos INT = 1 
DECLARE @itens INT = 1 
WHILE @pedidos <= 1000
BEGIN  
  INSERT INTO pedidos(data, observacao)  VALUES (GETDATE(), 'OBSERVACAO '+cast(@pedidos as varchar));
  WHILE @itens <= 50
  BEGIN
	INSERT INTO pedido_itens(pedido_id,produto_id,quantidade,valor)
	VALUES  (@pedidos, @itens, 1, 1);
	SET @itens = @itens + 1;
  END
  SET @itens = 1;
  SET @pedidos = @pedidos+1
END 
GO

CREATE NONCLUSTERED INDEX idx_pedido_itens_pedido_id
ON  pedido_itens (pedido_id)
INCLUDE (produto_id,quantidade)
GO

------------------------------------------------------

-- O EXEMPLO

/*Gargalo dessa consulta é que para cada produto é 
feito o inner join. Logo ao ter 2 pedido e cada pedido tiver 50itens(produtos),
o banco realizará leitura 100x na tabela de pedidos.*/

SELECT prod.descricao, i.produto_id, SUM(i.quantidade) 
FROM pedido_itens as i
INNER JOIN pedidos p ON  i.pedido_id = p.id
INNER JOIN produtos prod ON prod.id = i.produto_id
GROUP BY prod.descricao, i.produto_id
ORDER BY i.produto_id

-- Aplicando CTE
WITH Consulta (codigo, quantidade) AS (
	SELECT i.produto_id, SUM(i.quantidade) 
	FROM pedido_itens as i
	INNER JOIN pedidos p ON  i.pedido_id = p.id
	GROUP BY i.produto_id
) 

-- após a consulta feita acima, agora busco os dados do produtos.
-- CTE ajuda na mesma ideia de Subquery ou View.
SELECT prod.descricao, c.codigo, c.quantidade FROM Consulta c
INNER JOIN produtos prod ON prod.id = c.codigo --inner join feito com base no resultado ja agrupado, logo indo ao banco 50x
ORDER BY c.codigo