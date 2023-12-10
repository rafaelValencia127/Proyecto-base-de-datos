create view ObrasSinEmpleados AS
select tablaobra.IdOBra as IdObra, count(tablaobra_has_empleado.IdEmpleado) as trabajadores
from tablaobra,tablaobra_has_empleado,empleado
where tablaobra.IdOBra = tablaobra_has_empleado.IdOBra
and empleado.idEmpleado = tablaobra_has_empleado.IdEmpleado
and tablaobra.FechaFinObra > now()
group by tablaobra.IdOBra
having trabajadores < 4;

show create view obrassinempleados;

select * from obrassinempleados