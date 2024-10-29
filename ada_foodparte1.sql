create table cliente (
	id serial primary key not null,
	nome varchar(255) not null,
	cpf varchar(11) not null unique,
	telefone varchar(11),
	email varchar(50),
	data_nascimento date
);



create table reserva (
	id serial primary key not null,
	data_reserva date,
	hora_reserva time,
	numero_mesa int,
	id_cliente int,
	foreign key(id_cliente) references cliente(id)
	
	
);



create table mesa (
	id serial primary key not null,
	capacidade int,
	numero_mesa int

);


create table reserva_mesa (
	id serial primary key not null,
	-- criei as colunas
	id_reserva integer not null,
	id_mesa integer not null,
	-- crio as conexões com as tabelas
	foreign key(id_reserva) references reserva(id),
	foreign key(id_mesa) references mesa(id),
	unique(id_reserva, id_mesa)

);





create table pedido (
	id serial primary key not null,
	data_pedido date not null,
	hora_pedido time not null,
	id_cliente integer not null,
	foreign key(id_cliente) references cliente(id)
	
);


	
		
create table funcionario (
    id serial primary key not null,
    nome_funcionario varchar(50) not null,
    cpf_funcionario varchar(11) not null unique,
    telefone_funcionario varchar(11) not null,
    id_cargo integer not null,
    foreign key(id_cargo) references cargo(id)

);


create table cargo (
	id serial primary key not null,
	nome_cargo varchar(50) not null
	
);


create table pedido_funcionario (
	id serial primary key not null,
	-- criei as colunas
	id_pedido integer not null,
	id_funcionario integer not null,
	-- crio as conexões com as tabelas
	foreign key(id_pedido) references pedido(id),
	foreign key(id_funcionario) references funcionario(id),
	unique(id_pedido, id_funcionario)	
	
);




create table prato (
	id serial primary key not null,
	nome_prato varchar(50) not null,
	descricao_prato varchar(200),
	preco_prato float
	
);


create table pedido_prato (
	id serial primary key not null,
	id_prato integer not null,
	id_pedido integer not null,
	foreign key(id_prato) references prato(id),
	foreign key(id_pedido) references pedido(id),
	unique(id_prato, id_pedido)
);
