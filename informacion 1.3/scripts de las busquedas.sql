#select tablaobra.Nombe as NombreObra,estado from tablaobra

#select tablaobra.Nombe as NombreObral, 
#tablaobra.IdsPlanoLugar as IdPlanoDelLugar, 
#tablaobra_has_especificacionplano.IdEspecificacionPlano as IdPlano
#from tablaobra, tablaobra_has_especificacionplano 
#where tablaobra.IdOBra = tablaobra_has_especificacionplano.IdOBra

#select tablaobra.Nombe as NombreObral, 
#permiso.Estado as EstadoDelPermiso
#from tablaobra, permiso
#where tablaobra.IdPermiso = permiso.IdPermiso 
#and permiso.Estado = 'Concedido'

#select tablaobra.IdOBra as IdObra, count(tablaobra_has_empleado.IdEmpleado) as trabajadores
#from tablaobra,tablaobra_has_empleado,empleado
#where tablaobra.IdOBra = tablaobra_has_empleado.IdOBra
#and empleado.idEmpleado = tablaobra_has_empleado.IdEmpleado
#and tablaobra.FechaFinObra > now()
#group by tablaobra.IdOBra
#having trabajadores < 4

#select tablaobra.Nombe as Proyecto, comprador.NombreComprador
#from tablaobra,comprador
#where tablaobra.IdComprador = comprador.idComprador

#select tablaobra.IdOBra,tablaobra.Nombe , factura.Valor as PromedioGastos
#from tablaobra,factura
#where tablaobra.IdFactura = factura.idFactura
#order by tablaobra.IdOBra asc;

#select tablaobra.IdOBra as Idobra, 
#	tablaobra.Nombe as Obra,
#	count(tablaobra_has_empleado.IdEmpleado) as Empleados,
#	tipoempleado.NombreTipoEmpleado as TipoEmpleado
#		from tablaobra,tablaobra_has_empleado,tipoempleado,empleado
#		where tablaobra.IdOBra = tablaobra_has_empleado.IdOBra
#		and tablaobra_has_empleado.IdEmpleado = empleado.idEmpleado
#		and empleado.IdTipoEmpleado = tipoempleado.idTipoEmpleado
#		and tipoempleado.NombreTipoEmpleado = 'Obrero' 
#		group by tablaobra.IdOBra;

#select tablaobra.IdOBra as Idobra,
#	tablaobra.Nombe as Obra,
#	count(tablaobra_has_empleado.IdEmpleado) as Empleados,
#	tipoempleado.NombreTipoEmpleado as TipoEmpleado
#		from tablaobra,tablaobra_has_empleado,tipoempleado,empleado
#		where tablaobra.IdOBra = tablaobra_has_empleado.IdOBra
#		and tablaobra_has_empleado.IdEmpleado = empleado.idEmpleado
#		and empleado.IdTipoEmpleado = tipoempleado.idTipoEmpleado
#		and tipoempleado.NombreTipoEmpleado = 'Jefe de obra' 
#		group by tablaobra.IdOBra;





