# locadora
Base de dados com 1,5 Milhão de Registros<br>
<br>
<br>
A criação de tabela e inclusão de dados foi realizada em um computaodr I7 com 8GB de Ram e Hd SATA de 1TB, utilizando-se do Windows 8.<br>
<br>
O consumo médio de Memória ram foi:<br>
a) prompt do windows:1 MB<br>
b) psql:1MB <br>
<br>
### Uso do parametro -a
Tempo de execução para tabela clientes<br>
Start: 13:12:21,91<br>
Finish: 13:15:01,09<br>
<br>
COIGO EXECUTADO:<br>
+++++++++++++++++++++++++++++++++++++++++++++++<br>
echo "inicio do processo" %time%<br>
set TEMP_INICIO=%time%<br>
psql -h localhost -d locadora_populado -U postgres -p 5432 -a -W -f script_InsertCliente.sql<br>
echo "inicio do processo" %TEMP_INICIO%<br>
echo "fim do processo" %time%<br>
+++++++++++++++++++++++++++++++++++++++++++++++<br>

### Uso do parametro -q
Tempo de execução para tabela clientes<br>
Start: 13:29:51,16<br>
Finish: 13:30:25,52<br>
<br>
COIGO EXECUTADO:<br>
+++++++++++++++++++++++++++++++++++++++++++++++<br>
echo "inicio do processo" %time%<br>
set TEMP_INICIO=%time%<br>
psql -h localhost -d locadora_populado -U postgres -p 5432 -q -W -f script_InsertCliente.sql<br>
echo "inicio do processo" %TEMP_INICIO%<br>
echo "fim do processo" %time%<br>
+++++++++++++++++++++++++++++++++++++++++++++++<br>



"inicio geral do processo" 14:30:41,44

E:\BACKUPS_DINAMICOS\2016-2\BD2\Aulas\Bloco 0x -  Tuning\arquivos_locadora_tuning_1_5milhao>echo "inicio do processo de criaþÒo d
as tabelas" 14:32:49,62
"inicio do processo de criaþÒo das tabelas" 14:32:49,62

E:\BACKUPS_DINAMICOS\2016-2\BD2\Aulas\Bloco 0x -  Tuning\arquivos_locadora_tuning_1_5milhao>echo "fim do processo de criaþÒo das
tabelas" 14:42:47,36
"fim do processo de criaþÒo das tabelas" 14:42:47,36




+*************************************************

RESUMO (será necessario entrar com a senha para cada insercao ou execucao psql no database)

"inicio geral do processo" 14:30:41,44
"final do processo completo 14:42:47,38

"inicio do processo de criaþÒo das tabelas" 14:32:49,62
"fim do processo de criaþÒo das tabelas" 14:42:47,36
"inicio do processo insercao categoria" 14:30:50,28
"fim do processo de criaþÒo das tabelas" 14:31:24,14
"inicio do processo insercao CLIENTE" 14:31:24,14
"fim do processo de criaþÒo das tabelas" 14:32:05,03
"inicio do processo insercao LOCACAO" 14:32:49,62
"fim do processo de criaþÒo das tabelas" 14:42:47,36

