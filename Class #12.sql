select count(*) from `cursos`
where `carga` > 40;

select max(`carga`) from `cursos`;

select min(`carga`) from `cursos`;

select max(`totaulas`) from `cursos` where `ano` = 2016;

select `nome`, min(`totaulas`) from `cursos` where `ano` = 2016;

select sum(`totaulas`) from `cursos` where `ano` = 2018;

select sum(`carga`) from `cursos` where `ano` = 2016;

select avg(`carga`) from `cursos` where `ano` = 2018;


/*EXERCISES*/
select * from `gafanhotos` 
where `sexo` = 'F';

select * from `gafanhotos` 
where `nascimento` between '2000-01-01' and '2015-12-31'
order by `nascimento`;

select * from `gafanhotos` 
where `profissao` like 'prog%';

select * from `gafanhotos` 
where `sexo` = 'F' and `nacionalidade` = 'Brasil' and `nome` like 'j%';

select `nome`, `nacionalidade` from `gafanhotos` 
where `sexo` = 'M' and `nome` like '%silva%' and `nacionalidade` not like 'Brasil' and `peso` < '100';

select max(`altura`) from `gafanhotos`
where `sexo` = 'M' and `nacionalidade` = 'Brasil';

select avg(`peso`) from `gafanhotos`;

select `nome`, `nacionalidade`, min(`peso`) from `gafanhotos`
where `sexo` = 'F' and `nacionalidade` not like 'Brasil' and `nascimento` between '1990-01-01' and '2000-12-31';



