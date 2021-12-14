#FUNCTIONS E PROCEDURES

#DELIMITER - especifica qual será o simbolo para encerramento da function

#deterministic - para especificar que o retorno da função será o mesmo tipo de dados da entrada de argumento (caso houver)
#exou quando não existirem argumentos de entrada

#not deterministic - para especificar que o retorno da função será diferente do tipo de dados da entrada de argumento

DELIMITER $$
create function saudacao()
	returns char(15) #define o tipo de dados de retorno da função
    deterministic
	
	BEGIN 
    #DECLARAÇÃO VARIAVEIS DA FUNCTION
	declare horaAtual time;
    declare hora char(2);
    declare mensagem char(15);
    
#para atribuir um dados a uma variavel utilizamos o comando set

	set horaAtual = curtime();
    set hora = hour (horaAtual);
    
    if hora >= 5 and hora <12 then set mensagem = 'Bom dia!';
    elseif hora >=12 and hora <18 then set mensagem = 'Boa tarde';
    elseif hora >=18 and hora <23 then set mensagem = 'Boa noite';
    else set mensagem = 'Boa madrugada';
    end if;
    return mensagem;
    
    END $$
    
    select saudacao() as mensagem;
    
DELIMITER $$
create procedure procListarFilme(IN idGenero int )
	BEGIN
    
    declare sqlPrincipal text;
    declare sqlCriterioGenero text;
    declare sqlCompleto text;
    
    set sqlPrincipal = '
		select tblFilme.nome as nomeFilme, tblFilme.dataLancamento, tblGenero.nome as nomeGenero
		from tblFilme inner join tblFilmeGenero on tblFilme.idFilme = tblFilmeGenero.idFilme 
		inner join tblGenero on tblGenero.idGenero = tblFilmeGenero.idGenero
        ';
    
    if idGenero > 0 then 
    set sqlCriterioGenero = 'where id genero = idGenero';
        end if;
        
        prepare sqlCompleto from concat(sqlPrincipal, sqlCriterioGenero);
        
        execute sqlCompleto;
        END $$
    