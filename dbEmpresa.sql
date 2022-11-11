drop database dbEmpresa;

create database dbEmpresa;

use dbEmpresa;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
salario decimal(9,2) not null default 0 check (salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codFunc)
);

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar (20) not null,
senha varchar (20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >=0),
valor decimal (9,2) check(valor >= 0),
codUsu int not null,
primary key(codProd),
foreign key (codUsu) references tbUsuarios(codUsu)
);

desc tbFuncionarios;
desc tbUsuarios;
desc tbProdutos;

insert into tbFuncionarios(nome,email,cpf,salario,sexo) values('Jon Jones','jonnyboy@gmail.com','263.658.963-52','2111.00','M');
insert into tbUsuarios(nome,senha,codFunc) values('jon.j','1055050',1);
insert into tbProdutos(descricao,quantidade,valor,codUsu) values('Sorvete',1,64,1);

insert into tbFuncionarios(nome,email,cpf,salario,sexo) values('Lewis Hamilton','Lew.H@gmail.com','360.964.200-26','7543.00','M');
insert into tbUsuarios(nome,senha,codFunc) values('lewis.ham','3621063',2);
insert into tbProdutos(descricao,quantidade,valor,codUsu) values('Frango resfriado',2,70,2);

insert into tbFuncionarios(nome,email,cpf,salario,sexo) values('Lisa Oliveira','lisa.O@hotmail.com','265.112.093-12','3560.00','F');
insert into tbUsuarios(nome,senha,codFunc) values('lisa.ol','0369952',3);
insert into tbProdutos(descricao,quantidade,valor,codUsu) values('Absorvete',1,9,3);

insert into tbFuncionarios(nome,email,cpf,salario,sexo) values('Paloma Mesa','palom.me@bol.com.br','186.360.111-24','2630.50','F');
insert into tbUsuarios(nome,senha,codFunc) values('lisa.ol','6852117',4);
insert into tbProdutos(descricao,quantidade,valor,codUsu) values('Agua',12,20,4);

insert into tbFuncionarios(nome,email,cpf,salario,sexo) values('Ryan Alves Cunha','RAC@gmail.com','036.314.260-90','1200.50','M');
insert into tbUsuarios(nome,senha,codFunc) values('ryan.ac','0396226',5);
insert into tbProdutos(descricao,quantidade,valor,codUsu) values('Grana Padano',1,1850,5);

select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbProdutos;