
create view listagem_geral AS
select * from tb_medico;

select * from listagem_geral
where id_medico = 1;
