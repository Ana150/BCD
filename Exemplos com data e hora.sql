#retorna a data atualizada do servidor
select curdate() as dataAtual;
select current_date() as dataAtual;

#retorna a data atualizada do servidor
select curtime() as dataAtual;
select current_time() as dataAtual;

#retorna a data atualizada do servidor
select current_timestamp() as dataHoraAtualizado;

#FORMATAÇÃO DA HORA
select time_format(current_time(), '%H:%i:%s') as horaCompleta;
select time_format(current_time(), '%H') as hora;
select time_format(current_time(), '%i') as minuto;
select time_format(current_time(), '%s') as segundo;

#hora de 00 a 23
select hour(time_format(current_time(), '%T')) as hora;

#hour minute second
select hour(current_time()) as hora;
select minute(current_time()) as minuto;
select second(current_time()) as segundo;

#concatenação
select concat(hour(current_time()), '.', minute(current_time())) as horaMinuto;

#FORMATAÇÃO DA DATA
select date_format(current_date(), '%W') as diaSemanaExtenço;
select date_format(current_date(), '%w') as diaSemanaNumerico;
select date_format(current_date(), '%a') as diaSemanaExtençoMenor;

select date_format(current_date(), '%M') as mesSemanaExtenço;
select date_format(current_date(), '%m') as mesSemanaNumerico;
select date_format(current_date(), '%b') as mesSemanaExtençoMenor;

select date_format(current_date(), '%d/%m/%Y') as dataFormatada;

#FUNCOES DAY(), MONTH(), YEAR()
select day(current_time()) as dia;
select month(current_time()) as mes;
select year(current_time()) as ano;

select week(current_date()) as numeroDeSemanas;
select dayofweek('2021-11-23') as numeroDeSemanas;
select dayname('2021-11-23') as numeroDeSemanas;
select dayofmonth('2021-11-23') as numeroDeSemanas;
select dayofyear('2021-11-23') as numeroDeSemanas;

#Calculando diferença de datav e hora
select timediff('15:00:00', '22:00:00') as diferençaHoras;
select datediff('2021-02-15', '2021:02:16') as diferençaHoras;