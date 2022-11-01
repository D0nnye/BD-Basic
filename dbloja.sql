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

-- vizualizar as tabelas do bd
show tables;

-- vizualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('Mateus Bilão','mateus.b@gmail.com','236.246.359-77','96375-2495');
insert into tbFuncionarios(nome,email,cpf,tel)
values('Guilherme Paulo','gui.paulinho10@bol.com','230.968.421-69','95236-2206');

insert into tbUsuarios(nome,senha) values('mat.bilão','906358');
insert into tbUsuarios(nome,senha) values('gui.paulo','521486');

-- vizualizar os registros da tabela
select * from tbFuncionarios;
select * from tbUsuarios;

-- alterando os registros
update tbUsuarios set senha = '596669' where codusu =1;

select * from tbUsuarios;

--excluindo registros das tabelas
delete from tbUsuarios where codusu = 2;

select * from tbUsuarios;