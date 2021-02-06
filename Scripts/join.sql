use cadastro;
select * from gafanhotos;

alter table gafanhotos
ADD COLUMN cursopreferido int; 

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido; 

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido; 

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido; 

create table gafanhoto_assiste_curso (
id int NOT NULL AUTO_INCREMENT, 
data date, 
idgafanhoto int, 
idcurso int, 
PRIMARY KEY (id), 
FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id), 
FOREIGN KEY (idcurso) REFERENCES  cursos(idcurso)
) DEFAULT CHARSET = utf8;

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from gafanhoto_assiste_curso;

select g.nome, c.nome from gafanhotos as g
join gafanhoto_assiste_curso as a
on g.id = a.idgafanhoto
join cursos as c
on a.idcurso = c.idcurso;
