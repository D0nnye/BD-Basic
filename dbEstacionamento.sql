drop database dbEstacionamento;

create database dbEstacionamento;

use dbEstacionamento;

create table tbCarros(
codEsta int auto_increment,
placa varchar(10),
cor varchar(20),
modelo varchar(40),
ano char(4),
data_entrada date,
hora_entrada time,
data_saida date,
hora_saida time,
primary key(codEsta)
);

-- Inserir na tabela carros pelo menos 10 registros

insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('JFC-6605','Verde','Chevrolet - Monza','1998','2019/05/12','16:23:00','2019/05/12','17:12:00');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('FFG-2549','Amarelo','Chevrolet - Camaro SS','2010','2011/12/09','12:36:00','2011/12/11','09:02:00');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('SPV-2001','Prata','Fiat - Palio','2002','2017/03/03','17:47:12','2017/03/03','18:09:36');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('VKL-7830','Marrom','Peugeot - 2008','2022','2022/11/09','12:30:00','2022/11/09','13:20:36');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('PPL-6591','Branco','Hyundai - Creta','2021','2022/06/24','18:48:00','2022/06/24','23:06:36');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('VID-7033','Preto','Cadillac - Escalade','2015','2022/04/03','17:32:24','2022/04/03','19:45:12');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('POL-3692','Preto','Cadillac - Escalade','2015','2022/07/25','17:36:12','2022/07/25','19:50:03');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('NAT-0693','Preto','Chevrolet - Suburban','2022','2022/07/25','19:20:12','2022/07/25','21:23:20');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('LAN-2458','Azul','Chevrolet - Vectra','1998','2018/07/25','08:32:30','2018/07/25','09:36:12');
insert into tbCarros(placa, cor, modelo, ano, data_entrada, hora_entrada, data_saida, hora_saida)
values('WAN-0363','Vermelho','Ferrari - F40','1990','2019/06/25','17:36:12','2022/07/26','19:50:03');

desc tbCarros;

select * from tbCarros;

-- Alterar pelo menos 5 registros 

update tbCarros set cor = 'Azul' where codEsta = 2;
update tbCarros set cor = 'Prata' where codEsta = 7;
update tbCarros set ano = '2005' where codEsta = 9;
update tbCarros set placa = 'LLL-6660' where codEsta = 5;
update tbCarros set hora_saida = '22:25:06' where codEsta = 10;

-- Apagar pelo menos 3 registros

delete from tbCarros where codEsta = 4;
delete from tbCarros where codEsta = 8;
delete from tbCarros where codEsta = 6;

-- Pesquisar os carros pelo nome

select * from tbCarros where modelo like '%Camaro%';

-- Pesquisar os carros pelo código

select * from tbCarros where codEsta = 10;

-- Pesquisar os carros pela data de entrada

select * from tbCarros where data_entrada ='2019/06/25';

-- Pesquisar os carros pela pela cor

select * from tbCarros where cor = 'Prata';