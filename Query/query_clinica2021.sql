use clinica2021;

-- 1. Mostre nome e sexo dos pacientes, ordenados pelo nome
select nome, sexo
from pacientes
order by nome;

-- 2. Mostre o valor médio das idades de pacientes
select avg(idade) as idade
from pacientes;

-- 3. Mostre dia e hora das consultas, ordenadas por dia
select dia, hora 
from consultas
order by dia;

-- 4. Mostre o nome e salário de médicos que ganham mais de 2000.
select nome, salario
from medicos
where salario > 2000;

-- 5. Mostre o valor total dos dos salários de médicos
select sum(salario) as total
from medicos;

-- 6. Mostre o nome dos pacientes ordenados por nome decrescente
select nome
from pacientes
order by nome desc;

-- 7. Mostre o valor mais baixo de um salário de médico
select min(salario) as menor 
from medicos;

-- 8. Mostre nome e idade e sexo de pacientes, que tem mais de 30 anos
select nome, idade, sexo
from pacientes
where idade > 30
order by nome;

-- 9. Mostre o total de médicos que ganham menos de 3000
select count(*) as medicos
from medicos
where salario > 3000;

-- 10. Mostre a maior idade de pacientes
select max(idade) as maior
from pacientes;