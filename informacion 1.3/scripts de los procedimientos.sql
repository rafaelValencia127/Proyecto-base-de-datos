use informacionconstructora;

DELIMITER \\
create procedure pa_ListaPersona_por_cargo(tipoempleo varchar(20))
	begin
		select tablaobra.IdOBra as Idobra,
				tablaobra.Nombe as Obra,
				count(tablaobra_has_empleado.IdEmpleado) as Empleados,
				tipoempleado.NombreTipoEmpleado as TipoEmpleado
					from tablaobra,tablaobra_has_empleado,tipoempleado,empleado
					where tablaobra.IdOBra = tablaobra_has_empleado.IdOBra
					and tablaobra_has_empleado.IdEmpleado = empleado.idEmpleado
					and empleado.IdTipoEmpleado = tipoempleado.idTipoEmpleado
					and tipoempleado.NombreTipoEmpleado =  tipoempleo
					group by tablaobra.IdOBra;
    end\\
DELIMITER ;

call pa_ListaPersona_por_cargo('obrero');
call pa_ListaPersona_por_cargo('jefe de obra');