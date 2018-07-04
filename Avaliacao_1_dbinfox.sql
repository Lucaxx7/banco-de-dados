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
