-- Subconjunto: DML(linguagem de manipulação de dados) => Inserir, atualizar, remover.

SELECT * FROM alunos
/*
    UPDATE tabela 
    SET campo=newvalor, campo1=newvalor1, campo2= campo2+'x'
    WHERE filtro
*/

UPDATE alunos SET data_nascimento=GETDATE(), ativo=1