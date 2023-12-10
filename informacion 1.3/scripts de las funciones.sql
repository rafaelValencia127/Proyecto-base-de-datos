use informacionconstructora;
DELIMITER \\
Drop function if exists ContadorTrabajadores\\
create function ContadorTrabajadores (id int)
	Returns int deterministic
begin
	declare TotalTrabajadores int;
		select count(tablaobra_has_empleado.IdEmpleado) into TotalTrabajadores
		from tablaobra,tablaobra_has_empleado,empleado
		where tablaobra.IdOBra = id
        and id = tablaobra_has_empleado.IdOBra
		and empleado.idEmpleado = tablaobra_has_empleado.IdEmpleado;
        
        return TotalTrabajadores;
end\\
DELIMITER ;

select informacionconstructora.ContadorTrabajadores(10) as NumeroTrabajadores
