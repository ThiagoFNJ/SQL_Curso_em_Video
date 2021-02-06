drop database cadastro;

create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro; 
create table pessoas(
id int NOT NULL auto_increment, 
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('F', 'M'),
peso decimal(5, 2), 
altura decimal(3, 2),
nacionalidade varchar(20) DEFAULT 'BRASIL' ,
primary key (id)
) default charset = utf8;

insert into pessoas
( id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(1,'Rodrigo', '1995-02-01','M', '104.0','1.80', 'Brasil'); 

select	* from pessoas; 

describe pessoas;