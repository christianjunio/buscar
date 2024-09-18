create database projetec;
use projetec;

drop table onibus;
show tables;
desc usuario;
desc onibus;

create table usuario(
cod int(10) auto_increment primary key,
email varchar(100) not null,
nome char(50) not null, 
senha varchar(50) not null,
dataN date,
telefone int(13)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table onibus(
linha int(8) primary key not null ,
bairroOri char(50) not null,
bairroDes char(50) not null,
preço float(4) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table usa(
cod int (10),
linha int(8),
primary key(cod, linha),
foreign key (cod) references usuario(cod),
foreign key (linha) references onibus(linha)
);
create table chat(
id_chat int primary key not null,
dataehora datetime,
mensagem varchar(255),
linha_onibus int(8) not null,
 INDEX par_linha (linha_onibus),
foreign key(linha_onibus) references onibus(linha)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO usuario (cod, email, nome, senha, dataN, telefone, cpf)
VALUES ("","geovana@gmail.com", "geovana", "Https0668", "11/24/2000", 3194445556667, "123.456.789-10" )
