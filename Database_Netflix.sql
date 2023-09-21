#CREATE database NetFlix character set utf8mb4 collate utf8mb4_unicode_ci; (Criando o Banco de Dados)
#use NetFlix; (selecionando a base de dados)


###### criando Tabelas de elementos
create table Ator(
nome varchar(50) not null,
data_nascimento varchar(10) not null,
local_nascimento varchar(50),
primary key (nome)
);

create table Video(
temporada int not null, 
episódio int not null, 
titulo varchar(30) not null,
ano int not null,
duracao int not null,
produtora varchar(50) not null,
tipo varchar(30),
primary key(titulo));

create table Usuario(
cpf varchar(14) not null,
endereco varchar(50) not null,
email varchar(30) not null unique,
senha varchar(8) not null,
nome varchar(50) not null,
cartao varchar(20) not null,
telefone varchar(11),
primary key(cpf));

create table Mensalidade(
mesAno date not null,
valorPago float not null,
dataPagamento date not null,
primary key(mesAno));


use NetFlix;
rename table Mensalidade to mensalidade; # muda o nome da Tabela
describe mensalidade;

alter table mensalidade add column id_cliente int first;
describe mensalidade;
describe table Usuario;
describe Usuario; describe mensalidade;









