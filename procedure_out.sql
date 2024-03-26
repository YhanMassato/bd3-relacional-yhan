delimiter  $

create procedure contagem_pacientes(out total_pacientes int (10))
	begin
		
        select count(id_paciente) into total_pacientes from tb_paciente;
        
    end
$

call contagem_pacientes(@total_pacientes);
select @total_pacientes;