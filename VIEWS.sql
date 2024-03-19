
create view listagem_geral AS
select * from tb_medico;

select * from listagem_geral
where id_medico = 1;
######### LISTAGEM GERAL, AULA 2 CRIAÇÃO DE VIEWS #########
create view listagem_medico as
select 
tm.nome_medico,
tm.telefone_medico,
tm.celular_medico,
tm.email_medico,
te.id_espec
from
tb_medico tm
inner join
tb_espec te 
on tm.id_espec = te.id_espec;


######### LISTAGEM SALA/ESPECIALIDADE #########
create view vw_sala_especilidade as
select 
ts.nmr_sala,
te.nome_especialidade
from 
tb_sala ts
inner join 
tb_espec te
on ts.id_espec = te.id_espec;

######### LISTAGEM AGENDA #########
create view vw_agenda_completa as
select
ta.data_cirurgia, ta.status_cirurgia,
ts.nmr_sala,
tm.nome_medico, tm.celular_medico,
tp.nome_paciente, tp.celular_paciente, tp.nome_responsavel_paciente, tp.telefone_responsavel_paciente
from tb_agenda ta
inner join tb_sala ts
on ta.id_sala = ts.id_sala
inner join tb_medico tm
on ta.id_medico = tm.id_medico
inner join tb_paciente tp
on tp.id_paciente = ta.id_paciente;
#####################################




