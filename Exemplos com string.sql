#concat - permite fazer a concatenação de strings
select concat('Filme: ', nome) as resultado from tblFilme;
select * from tblFilme;

#concat_ws - concatena utilizando um simbolo como separador
select concat_ws('|', nome, duracao, dataLancamento) as resultado from tblFilme;

#localiza a posição de uma string
select locate('anos', sinopse), sinopse from tblfilme;

#reverse - inverte o conteudo da coluna
select reverse(nome) as resultado from tblFilme;

#length() - quantidade de caracteres de uma coluna
#char_lenth() - quantidade de caracteres de uma coluna disconsiderando alguns caracteres especiais
select length(nome) as qtde, char_length(nome) from tblFilme;

#insert - insere um novo conteudo dentro do texto de uma coluna
#atributos - coluna, posição inicial, quantidade de carcteres que sarao removidos, string acrescentada
select insert(sinopse, 1, 0, 'A sinopse é: ')as resultado from tblFilme;

#replace() - permite localizar um caracter e substituir por outro
#substr() - permite extrair um conteudo de uma string
select substr(sinopse, 1, 10) as resultado from tblFilme;

alter table tblFilme modify column valor float;

update tblfilme set valor = '7' where idFilme = 2;

update tblfilme set valor = '9' where idFilme = 4;

select nome, qtde, valor, round(valor - ((valor/100)*10)) as valorUnitario from tblfilme;  



