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
### Trecho de código semelhante ao do arquivo que executa os scripts de criação e inserção 
Tempo de execução para tabela clientes<br>
Start: 13:29:51<br>
Finish: 13:30:25<br>
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

Baixe os aquivos zip e descompacte na mesma pasta
<br>
O código completo está no arquivo "exec_cria_tabelas_insere_dados.bat"<br>
(será necessario entrar com a senha para cada insercao ou execucao psql no database)<br>
