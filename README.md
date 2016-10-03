# locadora
Base de dados com 1,5 Milhão de Registros<br>
<br>
Antes de aplicar os scripts crie o bando de dados locadora_populado aplicando as instruções abaixo:<br>
**CREATE DATABASE locadora_populado**<br>
<br>
A criação de tabela e inclusão de dados foi realizada em um computaodr I7 com 8GB de Ram e Hd SATA de 1TB, utilizando-se do Windows 8.<br>
<br>
O consumo médio de Memória ram foi:<br>
a) prompt do windows:1 MB<br>
b) psql:1MB <br>
<br>
Tempo tempo de execução 
<br>
"inicio do processo" 14:30:41<br>
"final do processo" 14:42:47<br>
<br>

<br>
### Uso do parametro -q
Tempo de execução para tabela clientes<br>
Start: 13:29:51,16<br>
Finish: 13:30:25,52<br>
<br>
EXEMPLO DE COIGO EXECUTADO:<br>
+++++++++++++++++++++++++++++++++++++++++++++++<br>
echo "inicio do processo" %time%<br>
set TEMP_INICIO=%time%<br>
psql -h localhost -d locadora_populado -U postgres -p 5432 -q -W -f script_InsertCliente.sql<br>
echo "inicio do processo" %TEMP_INICIO%<br>
echo "fim do processo" %time%<br>
+++++++++++++++++++++++++++++++++++++++++++++++<br>
<br>
<br>
EXECUCAO DO CODIGO GERAL<br>

<br>
O código completo está no arquivo "exec_cria_tabelas_insere_dados.bat"<br>
(será necessario entrar com a senha para cada insercao ou execucao psql no database)<br>
<br>
+++++++++++++++++++++++++++++++++++++++++++++++<br>
<br>
RESUMO 
"inicio do processo de criaþÒo das tabelas" 14:32:49,62<br>
"fim do processo de criaþÒo das tabelas" 14:42:47,36<br>
"inicio do processo insercao categoria" 14:30:50,28<br>
"fim do processo de criaþÒo das tabelas" 14:31:24,14<br>
"inicio do processo insercao CLIENTE" 14:31:24,14<br>
"fim do processo de criaþÒo das tabelas" 14:32:05,03<br>
"inicio do processo insercao LOCACAO" 14:32:49,62<br>
"fim do processo de criaþÒo das tabelas" 14:42:47,36<br>
<br>
