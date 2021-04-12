select count(*) from `gafanhotos`
where `sexo` = 'F' and `altura` > '1.90';

select `carga`, count(`nome`) from `cursos`
group by `carga`;

select `totaulas`, count(*) from `cursos`
group by `totaulas`;

select `carga`, count(*) from `cursos`
where `totaulas` = 30
group by `carga`;

select `carga`, count(*) from `cursos`
group by `carga`
having count(`nome`) > 3;

select `ano`, count(*) from `cursos`
group by `ano`
having count(*) >= 5
order by count(*) desc;

select `ano`, count(*) from `cursos`
group by `ano`
having ano >= 2016
order by count(*) desc;

select `ano`, count(*) from `cursos`
where `totaulas` > 30
group by `ano`
having ano >= 2013
order by count(*) desc;

select avg(`carga`) from `cursos`;

select `carga`, count(*) from `cursos`
where `ano` > 2015
group by `carga`
having `carga` > (select avg(`carga`) from `cursos`);

/* exercises: uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos*/
select `profissao`, count(*) from `gafanhotos`
group by `profissao`;

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */

select `sexo`, count(*) from `gafanhotos`
where `nascimento` > '2005-01-01'
group by `sexo`;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3 gafanhotos com essa nacionalidade. */
select `nacionalidade`, count(*) from `gafanhotos`
where `nacionalidade` <> 'Brasil'
group by `nacionalidade`
having count(*) > 3;

/* 4-uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/
select `altura`, count(*) from `gafanhotos`
where `peso` > 100
group by `altura`
having `altura` > (select avg(altura) from gafanhotos);
