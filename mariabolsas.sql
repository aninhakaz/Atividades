create database mariabolsas;

create table produto(
produto_id serial primary key,
nome varchar(50) not null unique,
descricao text not null unique,
peso float not null,
medidas varchar(20) not null,
preco numeric(3,2) not null,
cor varchar (20),
quantidade int
);

create table pedido_produtos(
pedido_id int,
produto_id int,
primary key (pedido_id,produto_id),
foreign key (pedido_id) references pedido(pedido_id),
foreign key (produto_id) references produto(produto_id)
);

create table pedido(
pedido_id serial primary key,
produto_id int,
foreign key (produto_id) references produto(produto_id),
endereco_id int,
foreign key (endereco_id) references endereco(endereco_id),
total numeric (4,2) not null,
carrinho varchar(30) not null
);

create table categoria(
categoria_id serial primary key,
produto_id int,
foreign key (produto_id) references produto(produto_id),
disponibilidade varchar (20),
nome varchar(30)
);

create table pagamento(
pagamento_id serial primary key,
pedido_id int,
foreign key (pedido_id) references pedido(pedido_id),
cartao_id int,
foreign key (cartao_id) references cartao(cartao_id),
metodo varchar(20) not null,
taxa numeric(4,2),
desconto varchar(20)
);

create table cartao(
cartao_id serial primary key,
numero char(16) not null unique,
validade char(5) not null unique,
codigo_seg char(3) not null unique,
nome_cartao varchar(30) not null
);

create table login(
login_id serial primary key,
email varchar(30) not null unique,
senha varchar(30) not null
);

create table cadrastro(
cadastro_id serial primary key,
endereco_id int,
foreign key (endereco_id) references endereco(endereco_id),
nome varchar(30) not null,
sobrenome varchar(30) not null,
cpf char(11) not null unique,
celular char(13) not null unique,
email varchar(30) not null
);

create table endereco(
endereco_id serial primary key,
cep char(8) not null,
rua varchar(20) not null,
numero char(4) not null,
referencia varchar(30) not null,
bairro varchar(30) not null,
cidade varchar(30) not null,
estado varchar(30) not null,
pais varchar(30) not null,
destinatario varchar(30) not null
);

create table dados_usuario(
dados_pessoas_id serial primary key,
nome varchar(30) not null,
sobrenome varchar(30) not null,
cpf char(11) not null unique,
celular char(13) not null unique,
genero varchar(20) not null,
data_nascimento date not null
);

