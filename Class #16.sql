/*JOIN MULTIPLE TABLES*/
create table `gafanhoto-assite-cursos` (
`id` int not null auto_increment,
`data` date,
`idgafanhoto` int,
`idcurso` int,
primary key (`id`),
foreign key (`idgafanhoto`) references `gafanhotos`(`id`),
foreign key (`idcurso`) references `cursos`(`idcurso`)
);

insert into `gafanhoto-assite-cursos` values
(default, '2014-03-01', '1', '2');

select g.`nome`, c.`nome` from `gafanhotos` as g
join `gafanhoto-assite-cursos` as a
on g.`id` = a.`idgafanhoto`
join `cursos` as c
on a.`idcurso` = c.`idcurso` 
order by g.`nome`;

select * from `gafanhoto-assite-cursos`;