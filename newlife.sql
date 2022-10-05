drop database if exists newlife;
create database newlife;
use newlife;

create table apartamentos (
	idApto int primary key auto_increment,
    numApto int not null
);

create table moradores(
	idMorador int primary key auto_increment,
    idApto int not null,
    morador varchar(50) not null,
    rg varchar(12) not null,
    cpf varchar(14) not null,
    tel1 varchar(17) not null,
    tel2 varchar(17),
    email varchar(50) not null,
    contatoEmergencia varchar(50),
    telEmergencia varchar(17),
    obs varchar(200),
    foreign key (idApto) references apartamentos(idApto)
);

create table veiculos(
	idVeiculo int primary key auto_increment,
    idApto int not null,
    placa varchar(10) not null,
    marca varchar(30) not null,
    modelo varchar(30) not null,
    cor varchar(20) not null,
    foreign key(idApto) references apartamentos(idApto)
);

create table visitantes(
	idVisitante int primary key auto_increment,
    idApto int not null,
    visitante varchar(50) not null,
    rg varchar(12) not null,
    cpf varchar(14) not null,
    tel1 varchar(17) not null,
    tel2 varchar(17),
    obs varchar(200),
    foreign key(idApto) references apartamentos(idApto)
);

create table funcionarios(
	idFuncionario int primary key auto_increment,
    idApto int not null,
    funcionario varchar(50),
    rg varchar(12) not null,
    cpf varchar(14) not null,
    tel1 varchar(17) not null,
    tel2 varchar(17),
    obs varchar(200),    
    foreign key(idApto) references apartamentos(idApto)
);
