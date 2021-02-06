create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned, 
totaulas int, 
ano year default '2016'
) DEFAULT CHARSET = utf8; 

desc cursos; 

alter table cursos
add column idcurso int first;

alter table cursos 
add primary key (idcurso);