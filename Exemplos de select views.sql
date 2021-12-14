#GROUP BY - Permite agrupar por colunas do banco, ele elimmina a repetição da coluna trazendo apenas uma ocorrencia para ela.
select tblFilme.nome as nomeFilme, tblFilme.dataLancamento, tblFilme.sinopse, 
	   tblGenero.nome, tblAtor.nome as nomeAtor, tblAtor.dataNacimento, 
       tblNacionalidade.nome as nacionalidadeAtor,
       tblDiretor.nome as nomeDiretor, 
       tblRoteirista.nome as nomeRoteirista
    
from tblFilme 
	inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
	inner join tblGenero
		on tblGenero.idGenero = tblFilmeGenero.idGenero
	inner join tblFilmeAtor
		on tblFilme.idFilme = tblFilmeAtor.idFilme
	inner join tblAtor
		on tblAtor.idAtor = tblFilmeAtor.idAtor
	inner join tblFilmeDiretor
		on	tblFilme.idFilme = tblFilmeDiretor.idFilme
	inner join tblDiretor
        on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
	inner join tblFilmeRoteirista
        on tblFilme.idFilme = tblFilmeRoteirista.idFilme
	inner join tblRoteirista
        on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista
	inner join tblAtorNacionalidade
        on tblAtor.idAtor = tblAtorNacionalidade.idAtor
	inner join tblNacionalidade
        on tblNacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade
        
group by tblFilme.nome
order by tblFilme.nome asc,tblAtor.nome desc, tblDiretor.nome asc;

#CRIANDO UMA VIEW - view é um scrip APENAS DE SELECT que fica armazenado diretamente no banco de dados e pré processado,
#fazendo co  que no back-end fique um codigo mais limpo e que sua aplicação tenha um poder de processamento mais rapido

create view listarFilmes as 
select tblFilme.nome as nomeFilme, tblFilme.dataLancamento, tblFilme.sinopse, 
	   tblGenero.nome, tblAtor.nome as nomeAtor, tblAtor.dataNacimento, 
       tblNacionalidade.nome as nacionalidadeAtor,
       tblDiretor.nome as nomeDiretor, 
       tblRoteirista.nome as nomeRoteirista
    
from tblFilme 
	inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
	inner join tblGenero
		on tblGenero.idGenero = tblFilmeGenero.idGenero
	inner join tblFilmeAtor
		on tblFilme.idFilme = tblFilmeAtor.idFilme
	inner join tblAtor
		on tblAtor.idAtor = tblFilmeAtor.idAtor
	inner join tblFilmeDiretor
		on	tblFilme.idFilme = tblFilmeDiretor.idFilme
	inner join tblDiretor
        on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
	inner join tblFilmeRoteirista0
        on tblFilme.idFilme = tblFilmeRoteirista.idFilme
	inner join tblRoteirista
        on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista
	inner join tblAtorNacionalidade
        on tblAtor.idAtor = tblAtorNacionalidade.idAtor
	inner join tblNacionalidade
        on tblNacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade
        
group by tblFilme.nome
order by tblFilme.nome asc,tblAtor.nome desc, tblDiretor.nome asc;

show tables;

select * from listarFilmes;