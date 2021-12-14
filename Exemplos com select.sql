#SELECT

/*

SELECT: especifica os campos a serem vizualizados na pesquisa.

FROM: especifica quais tabelas serão utilizadas na pesquisa.

WHERE: especifica quais os critérios de filtros serão utilizados.

*/

#retorna todos os registros e colunas que tem na tabela
#* significa todas as colunas
select * from tblFilme;

#retorna os registros das colunas especificadas (nome e sinopse)
select nome, sinopse from tblFilme;

# das um apelido para uma coluna
# as permite criar um apelido para uma coluna ou tabela
select tblFilme.nome as nomeFilme, sinopse from tblFilme;

select nome, sinopse from tblFilme where idFilme = 1;

/*

like - busca os dados pela igualdade, como se fosse o =

like %var - busca pelo final do atributo

like var% - busca pelo inicio do atributo

like %var% - busca por qualquer parte

*/

select nome, sinopse from tblFilme where nome like '%an%';

/*
OPERADORES LÓGICOS

and

or

not
*/

alter table tblFilme add column qtde int;

update tblFilme set qtde=5 where idFilme = 1;

update tblFilme set qtde=7 where idFilme = 2;

#exemplos usando operadores de copaeação e logicos

#<= menor ou igual
select * from tblFilme where qtde <=5; 

#<> diferente
select nome, qtde from tblFilme where qtde <> 5;

#not negação 
select nome, qtde from tblFilme where not (qtde = 5); 

#entre dois numeros
select nome, qtde from tblFilme where qtde >=3 and qtde <=6;

#selecionar numero especifico
select nome, qtde from tblFilme 
where qtde = 2 or 
	qtde = 4 or
	qtde = 6 or 
	qtde = 7;

#filtrar por uma sequencia de valores não precisando escrever o atributo varias vezes
#OBS: só funciona com o operador logico OR
select nome, qtde from tblFilme 
where qtde in (2,4,6,7);

select nome, qtde from tblFilme 
where qtde not in (2,4,6,7);

#between - permite localizar por um range de valoresd
select nome, qtde from tblFilme where qtde between 3 and 6;

select nome, qtde from tblFilme where qtde not between 3 and 6;

#Ordenação de dados
#Order by que posssuem as vertentes ASC e desc
#ASC - ordenação chescente
#DESC - ordenação decrescente

#decrescente 
select * from tblFilme order by qtde desc;

#crescente
select * from tblFilme order by qtde asc;

select nome, qtde from tblFilme where nome like '%de%' and qtde in (3,4,5) order by nome asc;

#limit - permite limitar a quantidade de resultados na tela
select * from tblFilme order by idFilme desc limit 1;

#MAX - retorna o maior valor de um atributo
#MIN - retorna o menor valor de um atributo

select min(qtde) as qtdeFilmes from tblFilme; 

select max(qtde) as qtdeFilmes from tblFilme; 

#count retorna a quantidade conforme o filtro

select count(*) as qtdeFilmes from tblFilme where nome like '%de%';

select nome, dataRelancamento from tblFilme;

#sum retorna a soma de todas as colunas selecionadas
select sum(qtde) as soma from tblFilme; 

#avg retorna a media de todas as colunas selecionadas
select avg(qtde) as media from tblFilme; 

#round retorna a quatidade de casas decimais depois da virgula
select round(avg(qtde), 1) as media from tblFilme; 

select * from tblFilme;
