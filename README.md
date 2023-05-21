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

### Pesquisar sobre conceitos
- _www.conceito.de_
