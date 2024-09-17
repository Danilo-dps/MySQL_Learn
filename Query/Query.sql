use bancotimes;

-- seleciona todos os atributos e dados da tabela times
select * from times; 

-- seleciona os dados desses nomes
select nome,valor,anodefundacao from times; 

-- seleciona os dados desses nomes, onde estabelece esa condição, (A cláusula WHERE permite operadores lógicos diversos ( = , !=, <>, >, <, AND, OR dentre outros).
select nome,valor,anodefundacao from times 
where anodefundacao > 1900;  

-- seleciona os dados desses nomes, onde estabelece essa condição(O comando BETWEEN é ótimo para intervalos fechados.)
select nome,valor,anodefundacao from times 
where anodefundacao between 1900 and 1920; 