-- CREATE DATABASE EstudoSql;

-- DROP DATABASE EstudoSql;

 -- **forçando o banco de dados está sendo acessado por somente um usuário.
-- ALTER DATABASE EstudoSql SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- DROP DATABASE EstudoSql

CREATE DATABASE EstudoSql;

-- ** criando o banco informando nome do arquivo e o local onde deve ser armazenado.
CREATE DATABASE Estudo2 ON (Name='Dev_mdf', FILENAME='D:\teste.mdf')
LOG ON (NAME='Dev_log', FILENAME='D:\teste.ldf') -- informando nome e local do arquivo de LOG.

