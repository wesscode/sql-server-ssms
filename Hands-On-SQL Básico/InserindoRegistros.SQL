-- Subconjunto: DML(linguagem de manipulação de dados) => Inserir, atualizar, remover.

-- INSERT INTO alunos(nome, cpf, data_nascimento, ativo) VALUES ('Bruno','00000000001',GETDATE(), 0)

-- **Inserindo multiplos alunos na mesma instrução dml.
INSERT INTO alunos(nome, cpf, data_nascimento, ativo)
 VALUES 
 ('Bruno','00000000001',GETDATE(), 0),
 ('Joge', '00000000002', GETDATE(), 1),
 ('Samia', '00000000002', GETDATE(), 1)