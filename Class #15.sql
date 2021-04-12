/*FOREIGN KEY*/
use `cadastro`;
desc `gafanhotos`;
select * from `gafanhotos`;
select * from `cursos`;

alter table `gafanhotos`
add column `cursopreferido` int;

alter table `gafanhotos`
add foreign key(`cursopreferido`)
references `cursos`(`idcurso`);

update `gafanhotos` set  `cursopreferido` = 6 where `id` = 1;

/*JOIN*/
select `nome`, `cursopreferido` from `gafanhotos`;

select `nome`, `ano` from `cursos`;

select g.`nome`, c.`nome`, c.`ano` 
from `gafanhotos` as g inner join `cursos` as c
on c.`idcurso` = g.`cursopreferido`
order by g.`nome`;

select g.`nome`, c.`nome`, c.`ano` 
from `gafanhotos` as g left outer join `cursos` as c
on c.`idcurso` = g.`cursopreferido`
order by g.`nome`;