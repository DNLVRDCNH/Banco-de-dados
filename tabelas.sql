
create database aula_bigdata
	character set utf8mb4
    collate utf8mb4_unicode_ci;

use aula_bigdata;

create table if not exists user (
	usu_id int not null auto_increment,
    usu_nome varchar(30) not null,
    usu_ativo bit not null,
    primary key(usu_id)
);

create table if not exists clientes (
	usu_id int not null auto_increment,
    cli_renda decimal(10,2) not null,
    primary key(usu_id)
);

create table if not exists funcionarios (
	usu_id int not null auto_increment,
    func_num_filhos tinyint not null,
    func_salario decimal(10,2) not null,
    primary key(usu_id)
);

create table if not exists contato (
	cont_id int not null auto_increment,
    usu_id int not null,
    cont_tipo varchar(20) not null,
    cont_contato varchar(60) not null,
    cont_prncipal bit not null,
    primary key (cont_id)
);