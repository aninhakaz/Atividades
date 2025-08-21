create database laiscorrea;

create table usuario(
usuario_id serial primary key,
name varchar(30) not null,
apelido varchar(10) not null,
data_nascimente date not null,
raça varchar(30) not null,
email varchar(30) not null unique,
cpf char(11) not null unique,
celular char(13) not null unique,
senha varchar(30) not null unique
);

create table endereco(
endereco_id serial primary key,
cep char(8) not null,
estado varchar(30) not null,
cidade varchar(30) not null,
bairro varchar(30) not null,
rua varchar(30) not null,
complemento text not null,
numero char (4)
);

create table loja(
loja_id serial primary key,
pagamento_id int,
produto_id int
);

create table produto(
produto_id serial primary key,
titulo varchar(30) not null unique,
preco numeric(4,2) not null,
quantidade varchar not null,
frete numeric(4,2) not null,
descricao text,
endereco_id int
);

create table endereco_entrega(
endereco_entrega_id serial primary key,
usuario_id int,
produto_id int,
endereco_id int,
pagamento_id int
);

create table pagamento(
pagamento_id serial primary key,
produto_id int,
tipo varchar (10),
endereco_id int
);

create table faturamento(

);