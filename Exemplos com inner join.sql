#RELACIONAMENTO ENTRE TABELAS

#FORMA 01 - RELACIONAMENTO PELO WHERE
select tblfilme.nome as nomeFilme, tblfilme.duracao, tblfilme.dataLancamento, tblgenero.nome as nomeGenero from tblfilme, tblgenero, tblfilmegenero 
	where tblfilme.idFilme = tblfilmegenero.idFilme and tblgenero.idGenero = tblFilmeGenero.idGenero;
    
#FORMA 02 - RELACIONAMENTO PELO FROM --- MAIS RÁPIDO    
#inner join - relaciona tabelas e tras igualdade entre elas
select tblfilme.nome as nomeFilme, tblfilme.duracao, tblfilme.dataLancamento, tblgenero.nome as nomeGenero 
	from tblfilme inner join tblfilmegenero on tblfilme.idFilme = tblfilmegenero.idFilme inner join tblgenero on tblgenero.idGenero = tblfilmegenero.idGenero;
    
#left join - relaciona tabelas e traz a igualdade entre elas e o que eiste na tabela da esquerda que não relacionado com a tabela da direita
select tblfilme.nome as nomeFilme, tblfilme.duracao, tblfilme.dataLancamento, tblgenero.nome as nomeGenero 
	from tblfilme left join tblfilmegenero on tblfilme.idFilme = tblfilmegenero.idFilme left join tblgenero on tblgenero.idGenero = tblfilmegenero.idGenero;

#right join - relaciona tabelas e traz a igualdade entre elas e o que eiste na tabela da direita que não relacionado com a tabela da direita
select tblfilme.nome as nomeFilme, tblfilme.duracao, tblfilme.dataLancamento, tblgenero.nome as nomeGenero 
	from tblfilme right join tblfilmegenero on tblfilme.idFilme = tblfilmegenero.idFilme right join tblgenero on tblgenero.idGenero = tblfilmegenero.idGenero;
    
select tblfilme.nome as nomeFilme, tblfilme.tituloOriginal, tblfilme.duracao, tblgenero.nome as nomeGenero, tblAtor.nome as nomeAtor, tblator.dataNacimento as dataNascimenoAtor, tblsexo.nome as nomeSexoAtor
    from tblfilme inner join tblfilmegenero on tblfilme.idFilme = tblfilmegenero.idFilme inner join tblgenero on tblgenero.idGenero = tblfilmegenero.idGenero
    inner join tblfilmeator on tblfilme.idFilme = tblfilmeator.idFilme inner join tblator on tblator.idAtor = tblfilmeator.idAtor
    inner join tblsexo on tblsexo.idSexo = tblator.idSexo where tblfilme.dataLancamento > '2010-01-01';

