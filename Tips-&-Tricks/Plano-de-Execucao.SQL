
use EstudoSql;
 -- Sem index criado do campo, plano de execução usa o TableScan
 -- onde ele ler cada página para encontrar o dado. Quanto menos larga a seta do plano de execução for,
 -- mais performática é sua query.
 SELECT descricao FROM Tabela_Teste WHERE descricao = 'DESCRICAO 900000';

 --criando index para o campo para melhorar a performance, mudando o plano de
 -- execução de TableScan para Index Seek
 CREATE INDEX idx_tabela_teste_descricao ON Tabela_Teste(descricao)

 CREATE TABLE Tabela_Teste
 (
    id INT,
    descricao VARCHAR(80)
 );

 DECLARE @id INT = 1
 DECLARE @p1 INT, @p2 INT, @p3 INT, @p4 INT
 WHILE @id <= 200000
 BEGIN 
    SET @p1 = @id+200000
    SET @p2 = @id+400000
    SET @p3 = @id+600000
    SET @p4 = @id+800000

    INSERT INTO Tabela_Teste(id, descricao)
    VALUES (@id, 'Descricao '+CAST(@id as VARCHAR(7))),
    (@p1, 'Descricao '+CAST(@p1 as VARCHAR(7))),
    (@p2, 'Descricao '+CAST(@p2 as VARCHAR(7))),
    (@p3, 'Descricao '+CAST(@p3 as VARCHAR(7))),
    (@p4, 'Descricao '+CAST(@p4 as VARCHAR(7)));
    SET @id = @id+1
    END