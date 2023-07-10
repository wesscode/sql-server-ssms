/*SSMS: Botão direito no banco > Tarefas > Backup*/

/*T-SQL: */
USE EstudoSql
    BACKUP DATABASE EstudoSql
    TO DISK = 'D:\bkp_banco\AulaBackup.bak'
    WITH INIT,
    NAME = 'Bkp banco de dados'

    BACKUP DATABASE EstudoSql
    TO DISK = 'D:\bkp_banco\AulaBackup-01.bak'
    WITH DIFFERENTIAL,
    NAME='Bkp banco de dados - Diferencial'