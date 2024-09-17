use bancotimes;
-- use + Nome do banco de dados: para usar o banco de dados
-- show tables: para mostrar as tabelas
-- describe + nome da tabela: para descrever a tabela

describe times;
describe jogadores;

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

-- seleciona alguns dados de jogadores
select nome, salario, datanascimento
from jogadores;

-- Mostre jogadores que ganham mais de 3000 ou menos de 2000.
select nome, salario, datanascimento
from jogadores where salario > 3000 or salario < 2000;

-- Mostre os dados do jogador cujo nome seja “jorge”
select nome,salario,datanascimento
from jogadores where nome= 'jorge';

-- order by Lista de jogadores ordenadas por nome
select nome,salario,datanascimento
from jogadores order by nome;

-- Lista de Jogadores ordenados pelo maior salário, usando a clásula desc 
select nome,salario,datanascimento
from jogadores order by salario desc;

-- Contagem de jogadores (total de jogadores)
select count(nome) as total
from jogadores;

-- Maior salário de jogadores
select max(salario) as maior
from jogadores;

-- Salário médio dos jogadores
select avg(salario) as media
from jogadores;

-- Soma total dos salários dos jogadores
select sum(salario) as soma
from jogadores;

-- Lista com diferentes salários de jogadores
select distinct salario
from jogadores;

--           questões
-- 1. Mostre nome e ano de fundação dos times, ordenados pelo nome
select nome,anodefundacao
from times order by nome;

-- 2. Mostre o valor médio dos times
select avg(valor) as Média
from times;

-- 3. Mostre o nome, salário e data de nascimento de jogadores do mais velho para o mais novo
select nome,salario,datanascimento
from jogadores order by datanascimento;

-- 4. Mostre o nome e salário de jogadores que ganham mais de 2000.
select nome,salario
from jogadores
where salario > 2000;

-- 5. Mostre o valor total dos times
select sum(valor) as valor
from times;

-- 6. Mostre o nome dos jogadores ordenados por nome decrescente
select nome 
from jogadores
order by nome desc;

-- 7. Mostre o valor mais baixo de um time
select min(valor) as menor
from times;

-- 8. Mostre nome e data de nascimento para jogadores nascidos a partir do ano 2000
select nome, datanascimento
from jogadores
where datanascimento >= '2000-01-01';

-- 9. Mostre o total de jogadores que ganham menos de 3000
select count(*) as total
from jogadores
where salario < 3000;

-- 10. Mostre o maior valor de times
select max(valor) as maior
from times;
