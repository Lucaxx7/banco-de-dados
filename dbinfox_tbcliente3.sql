-- CRUD (Create Read Update Delete)
use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15) not null,
login varchar (50) not null unique,
senha varchar (50) not null,
perfil varchar (50) not null
);
-- descrevendo a tabela
describe tb_usuarios;
-- inserindo dados na tabela (CRUD - Create)
insert into tb_usuarios values
(1, 'Lucas Souza Oliveira','1111-1111','lucas1','123@senac','Aluno');
insert into tb_usuarios values
(2, 'Paulo Vítor','2222-2222','paulo.vitor1','paulo123','Segurança');
insert into tb_usuarios values
(3, 'Sabrina Silva','3333-3333','sabrina.silva35','sabrina123','Aluno');
select * from tb_usuarios;
















-- CRUD (Create Read Update Delete)
use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_cliente(
idcli int auto_increment primary key,
cpfcli varchar(50) unique,
nomecli varchar (50) not null,
cep varchar(15) not null,
tipo varchar (50) not null,
logradouro varchar (50) not null,
numero varchar (50) not null,
complemento varchar (50),
bairro varchar (50) not null,
cidade varchar (50) not null,
uf char (2) not null,
fone1 varchar (50) not null,
fone2 varchar (50),
emailcli varchar (50) not null
);
describe tb_cliente;
-- inserindo dados na tabela (CRUD - Create)
insert into tb_cliente values
(1, '123.456.789-00','César Silva','01234-56','Rua','Rua Cássio Álvarez','33','','Campo Belo','São Paulo','SP','98765-4321','','cesarsil@gmail.com');
select * from tb_cliente;

delete from tb_cliente where idcli=1;
insert into tb_cliente values
(null, '123.456.788-00','César Silva','01230-56','Rua','Rua Pedro José','33','','Campo Belo','São Paulo','SP','98765-4321','','pedro@gmail.com');

insert into tb_cliente values
(null, '222.256.788-00','João Carlos','01637-00','Avenida','AV. Cupecê','33','','Américanópolis','São Paulo','SP','97700-4021','','joao@gmail.com');

insert into tb_cliente values
(null, '232.209.009-00','Caio Alves','88637-50','Rua','Rua Marta Aparecida','1222','','Vila Carrão','São Paulo','SP','95408-4561','','caio@outlook.com');

insert into tb_cliente values
(null, '657.298.600-32','Lucas Castro','00933-46','Avenida','AV. Cupecê','33','','Morumbi','São Paulo','SP','96765-1245','','lucas@gmail.com');

insert into tb_cliente values
(null, '211.168.776-12','Roberto Brandão','13243-66','Rua','Rua João Dias','45','','Itaquera','São Paulo','SP','95785-9200','','roberto@bol.com.br');
select * from tb_cliente;

-- Atividade
use dbinfox;

create table tb_os(
idos int auto_increment primary key,
dataos timestamp default current_timestamp,
tipo varchar (15) not null,
situacao varchar(20) not null,
equipamento varchar (200) not null,
defeito varchar (200) not null,
servico varchar (200) not null,
tecnico varchar (200),
valor decimal (10,2)
);
alter table tb_os auto_increment = 10000;

describe tb_os;

alter table  tb_os drop column idcli;
alter table tb_os add idcli int;
alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_cliente(idcli)
on delete no action;


insert into tb_os(idcli,equipamento,defeito,tipo,situacao,servico,tecnico,valor)
values (1, 'Notebook Lenovo','travando','orçamento','aprovado','troca de RAM','', 300);
insert into tb_os(idcli,equipamento,defeito,tipo,situacao,servico,tecnico,valor)
values (2, 'Notebook Dell','Teclado com defeito','Conserto','Aprovado','Troca de teclas','', 150);
insert into tb_os(idcli,equipamento,defeito,tipo,situacao,servico,tecnico,valor)
values (4, 'PC','Vírus','Conserto','Aprovado','Formatação','Lucas', 100);

select * from tb_os;

select idos, equipamento, defeito, orcamento from tb_os;
select idos as OS, equipamento as Equipamento, defeito as Defeito,tipo as Tipo, situacao as Situação, servico as Serviço, tecnico as Técnico, valor as Total from tb_os;

select
O.idos as OS,equipamento as Equipamento, defeito as Defeito,  situacao as Situação, servico as Serviço,tecnico as Técnico, valor as Total, C.nomecli as Nome, Fone1 as Fone, emailcli as Email, dataos as Data
from tb_os as O
inner join tb_cliente as C on (O.idcli = C.idcli);









