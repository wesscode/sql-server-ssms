/*Funções incorporadas do sql*/
/*https://learn.microsoft.com/pt-br/sql/t-sql/functions/functions?view=sql-server-ver15*/

SELECT LEFT(descricao, 4), descricao FROM categorias -- substring obtendo os 4 primeiros
SELECT RIGHT(descricao, 4), descricao FROM categorias -- substring obtendo os 4 últimos
SELECT SUBSTRING(descricao, 2, 4), descricao FROM categorias -- substring entre o resultado

/*qualquer operação + null, o resultado será null*/
SELECT 'Bruno' + ' Morais' + NULL
SELECT CONCAT('BRUNO', ' MORAIS', ' SANTOS')
SELECT CONCAT(descricao, ' TESTE') FROM categorias

SELECT ISNULL(NULL, 'DEFAULT') 
SELECT ISNULL(descricao, 'Sem descrição') FROM categorias --se existir alguma descrição null ele retona o valor default ao lado.

SELECT COALESCE(null, null, null, 'DEFAULT', 'SEGUNDO') --qnd encontrar um valor que não é null ele retorna o primeiro valor se não default
SELECT 2 * COALESCE(NULL, 1) --Evita erros se retornar null

SELECT IIF(1 > 0, 'MAIOR QUE ZERO', 'MENOR QUE ZERO')
SELECT IIF(LEN(descricao) > 5, 'MAIOR QUE 5', 'MENOR QUE 5'), descricao FROM categorias --condições

SELECT CAST(GETDATE() AS DATE), CAST(GETDATE() AS TIME) --conversão
