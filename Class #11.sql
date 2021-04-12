select * from `cursos`
order by `nome` desc;

select `nome`, `carga`, `ano` from `cursos`
order by `ano`, `nome`;

select `nome`, `descricao`, `carga` from `cursos`
where `ano` = '2016'
order by `nome`;

select `nome`, `descricao`, `ano` from `cursos`
where `ano` <= '2015'
order by `nome`;

select `nome`, `descricao`, `ano` from `cursos`
where `ano` between '2014' and '2016'
order by `ano`, `nome`;

select `nome`, `descricao`, `ano` from `cursos`
where `ano` in ('2014', '2016', '2020')
order by `ano`, `nome`;

select `nome`, `descricao`, `ano`, `carga` from `cursos`
where `carga` >= '40' and `ano` >= '2015'
order by `ano`, `carga`;

select `nome`, `descricao`, `ano`, `carga` from `cursos`
where `carga` >= '40' or `ano` >= '2015'
order by `ano`, `carga`;

select * from `cursos`
where `nome` like 'P%';

select * from `cursos`
where `nome` like '%a';

select * from `cursos`
where `nome` like '%a%';

select * from `cursos`
where `nome` NOT like '%a%';

select * from `cursos`
where `nome` like 'ph%p';

select * from `cursos`
where `nome` like 'ph%p_';

select * from `cursos`
where `nome` like 'p_p%';

select * from `gafanhotos`
where `nome` like '%silva%';

select distinct `nacionalidade` from `gafanhotos`
order by `nacionalidade`;