/*SSMS: Botão direito no banco > Tarefas > Restaurar > Arquivo e arquivos agrupados*/

/*T-SQL: */
USE master
    RESTORE DATABASE EstudoSql
    FROM DISK "D:\bkp_banco\AulaBackup.bak"
    WITH REPLACE