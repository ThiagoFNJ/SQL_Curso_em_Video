create table if not exists teste(
id int, 
nome varchar(10),
idade int
) DEFAULT CHARSET = utf8;

insert into teste value 
(1, 'MARIA', '22'),
(2, 'MARIA', '22'),
(3, 'MARIA', '22');

drop table if exists teste;