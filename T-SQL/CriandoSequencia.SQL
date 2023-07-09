/*Tipo aceitos: Int, bigint, tinyint, smallint, decimal, numeric*/

CREATE SEQUENCE MinhaSequencia
AS INT
START WITH 6
INCREMENT BY 1
MINVALUE 6
MAXVALUE 1000
NO CYCLE --ao atingir valor max ele gera exceção


SELECT NEXT VALUE FOR MinhaSequencia

CREATE TABLE TabelaTeste
(
    id int DEFAULT NEXT VALUE FOR MinhaSequencia,
    descricao varchar(20)
)

INSERT INTO TabelaTeste (descricao) VALUES ('Teste 02')
SELECT * FROM TabelaTeste