create database HubInovation charset utf8mb4 collate utf8mb4_unicode_ci;

use HubInovation;

create table formularioCadastro(
ID_usuario int not null auto_increment,
nome varchar(100) not null,
email varchar(100) not null,
telefone varchar(15) not null,
cpf varchar(14) not null,
data_de_nascimento date not null,
sexo enum('Masculino', 'Feminino'),
consentimento varchar(1),
primary key(ID_usuario)
);


create table palestra(
id_palestra int not null,
tema_palestra varchar(255),
descricao_palestra text(200) not null,
quantidade_vaga int not null,
sala_palestra varchar(100),
primary key(id_palestra)
);


create table palestrante(
id_palestrante int not null auto_increment,
imagem_perfil_palestrante varchar(200),
linkedin_palestrante varchar(200),
instagram_palestrante varchar(200),
primary key(id_palestrante)
);






