# sql-server-ssms
Projeto de estudo voltado a linguagem T-SQL.

## Sobre Bancos default de instalação.
- master:  Armazena todas as informações das instâncias do sql server.
- msdb: Armazena agendamentos de backup, tudo o que um agente do sql precisa é armazenado.
- model: Banco modelo utilizado como exemplo para novos bancos de dados.
- tempdb: Armazena informações temporárias.
- msdb: Armazena informações dos recursos que utilizamos dentro do sqlserver.

## Módulo Hands-On-SQL-Basico
- Criando Banco
- Criando Tabela
- Inserindo registros
- Atualizando registros
- Deletando registros
- Consultando registros

## Módulo Base de conhecimentos
* O que é um índice ?
  - Na prática sql salva  os registro em páginas de 8k ao fazer uma buscar ele faz um scan nesses fragmentos o indice ajuda na performance pois ele já possui o ponteiro para onde a informação se encontra.
  - índices consomem muito espaço em disco, logo concorrendo com o espaço do nosso banco, isso pode ser uma desvantagem. Também ao persistir informação podemos perder performance. Pois o sql precisa reordenar/reestruturar o índice autómaticamente.
* O que são constraints(restrição de intergridade) ?
  - É um mecanismo de banco de dados relacionais que garante a consistência dos dados que serão persistidos no banco de dados.  
* O que é uma view ?
  - Uma view é uma tabela virtual, seus valores são oriundos de uma consulta pré-definida, ou seja, depende de uma tabela onde os dados reais estão armazenados, um dos objetivos é simplificar consultas complexas retirando a responsabilidade da aplicação montar essas consultas e quando envolve regras de negócios às vezes são criadas propositalmente para esconder a lógica dos usuários.
  - View materializada: armazena as informações das tabelas que à compõe em uma tabela fisica, logo quando requisitada ela já está com os dados garantindo peformance.
  - View não materializada: view é materializada buscando informações das tabelas que à compõe no momento que é requisitada.
 * O que são Stored Procedures ?
   - De forma básica uma Procedure basicamente é um bloco de comandos ou instruções SQL de forma organizada para executar uma ou várias tarefas, no SQL Server usamos T-SQL para criar Stored Procedures.
   - Vantagens: Compartilhada, Menos complexidade na aplicação, Segurança.
   - Desvantagem: Alta dependência do banco de dados.
* Pesquisar sobre conceitos
  - _www.conceito.de_
