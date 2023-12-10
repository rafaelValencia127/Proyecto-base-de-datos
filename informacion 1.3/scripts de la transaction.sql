use informacionconstructora;
start transaction;

	update `informacionconstructora`.`empleado` set `Nombre` = 'Rafael Eduardo Valencia' where (`idEmpleado` = 1);
    update `informacionconstructora`.`empleado`set `Nombre` = 'Manuela Arroyo Gomez' where (`idEmpleado` = 2);
    update `informacionconstructora`.`empleado`set `Nombre` = 'Jonnathan Quintero' where (`idEmpleado` = 3);
    update `informacionconstructora`.`empleado` set `Nombre` = 'Malefica Buitrago' where (`idEmpleado` = 18);
    update `informacionconstructora`.`empleado` set `Nombre` = 'Brayan andres' where (`idEmpleado` = 11);
    
commit;

