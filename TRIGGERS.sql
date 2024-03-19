use db_centro_cirurgico;

#criação do delimitador de inicio da trigger

delimiter $

#declaração do corpo da trigger
create  trigger trg_delete_paciente before delete on tb_paciente
for each row #linha que sofre a ação
begin
insert into tb_paciente_bkp 
set 
id_paciente = old.id_paciente,
nome_paciente = old.nome_paciente,
telefone_paciente = old.telefone_paciente,
celular_paciente = old.celular_paciente ,
email_paciente = old.email_paciente,
nome_responsavel_paciente = old.nome_responsavel_paciente,
telefone_responsavel_paciente = old.telefone_responsavel_paciente,
date_delete = now();
end #criação do delimitador do fim da trigger
$



