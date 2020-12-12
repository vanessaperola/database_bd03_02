create table cliente(
id int not null auto_increment primary key,
nome varchar(40)
);

create table funcionario(
id int not null auto_increment primary key,
nome varchar(40)
);

create table entregador(
id int not null auto_increment primary key,
nome varchar(40)
);

create table cardapio(
id int not null auto_increment primary key,
nome varchar(40),
num_item int,
preco double
);

create table pizza(
id int not null auto_increment primary key,
nome varchar(40),
tamanho varchar (10),
idcardapio int not null,
foreign key (idcardapio) references cardapio(id)
);

create table igrediente(
id int not null auto_increment primary key,
nome varchar(40),
idpizza int not null,
foreign key (idpizza) references pizza (id)
);







