use db_centro_cirurgico;

delimiter $
	
create procedure listagem_agenda()
	BEGIN
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
	END
$
