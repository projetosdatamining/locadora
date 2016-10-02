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

