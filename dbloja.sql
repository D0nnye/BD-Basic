-- apagar o bd
drop database dbloja;

-- criando banco de dados
create database dbloja;

-- vizualizar o bd
show databases;

-- acessando o bd
use dbloja;

-- criando as tabales para o bd
create table tbFuncionarios(
codfunc int auto_increment,
nome varchar(50),
email varchar(50),
cpf char(14),
tel char(10),
primary key(codfunc)
);

create table tbUsuarios(
codusu int auto_increment,
nome varchar(15),
senha varchar(14),
primary key(codusu)
);

create table tbProdutos(
codprod int auto_increment,
descricao varchar(50),
preco  decimal(9,2),
validade date,
quantidade int,
tipo varchar(10),
primary key(codprod)
);


-- vizualizar as tabelas do bd
show tables;

-- vizualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;
desc tbProdutos;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('Mateus Bilão','mateus.b@gmail.com','236.246.359-77','96375-2495');
insert into tbFuncionarios(nome,email,cpf,tel)
values('Guilherme Paulo','gui.paulinho10@bol.com','230.968.421-69','95236-2206');

insert into tbUsuarios(nome,senha) values('mat.bilão','906358');
insert into tbUsuarios(nome,senha) values('gui.paulo','521486');

insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Banana',20.50,'2022-11-07',12,'Duzia');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Coca-Cola',23.99,'2024-01-07',2,'Duas unidades');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Pão de queijo',26.00,'2022-11-06',12,'Duzia');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Banana',13.25,'2022-11-07',24,'Duas duzia');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Banana',32.10,'2022-11-07',12,'Duzia');

-- vizualizar os registros da tabela
select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbProdutos;

-- alterando os registros
update tbUsuarios set senha = '596669' where codusu =1;

select * from tbUsuarios;

--excluindo registros das tabelas
delete from tbUsuarios where codusu = 2;

select * from tbUsuarios;

-- Alterar os valores para 10%
-- update tbProdutos set preco = preco * 1.10 where preco > 21.00;


-- Buscar por código
-- select * from tbProdutos where codprod = 1;

-- Buscar por nome
-- select * from tbProdutos where descricao like '%a%'

-- Buscar com distinc 
-- select distinct descricao from tbprodutos;


