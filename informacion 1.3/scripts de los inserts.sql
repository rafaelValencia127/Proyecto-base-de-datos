#insert into tipoplano(idTipoPlano,Nombre)
#values(1,'Ejecucion'),(2,'Sistema Electrico'),(3,'Sistema Desague')

#insert into tipolugar(idTipoLugar,Nombre)
#values(1,'Solar'),(2,'Terreno')

#insert into tipoempleado(idTipoEmpleado,NombreTipoEmpleado)
#values(1,'Obrero'),(2,'Jefe de obra')

#insert into permiso(Estado,FechaPermiso)
#values('Concedido','2020-07-12'),("Revicion",null),
#("Concedido",'2021-03-23'),
#('Concedido','2021-02-14'),("Revicion",null),
#('Concedido','2020-09-27'),("Concedido",'2020-11-14'),
#('Concedido','2021-06-09'),("Revicion",null),
#('Concedido','2021-08-30')

#insert into idsplanolugar(IdsPlanoLugar,IdTipoLugar,Direccion,Coordenada)
#values(333,1,'CARRERA 5 #743-31','32 08’59.96″ N, 110 50’09.03″W'),
#(313,2,'CALLE 76 #31-9','32°40’34.19″N 117° 9’27.58″W'),
#(491,1,'Bis 12 calle 14 #88','4°17’21.49″ S 31°23’46.46″ E'),
#(996,1,'Avenida Las Americas','33.747252, -112.633853'),
#(12,2,'Cerritos entrada 5','33.927911, -118.38069'),
#(231,1,'CARRERA 43 #42-11a','41.303921, -81.901693'),
#(1,2,'La vaquita Km 2','-33.350534, -71.653268'),
#(482,1,'Bis 28 calle 9a #66e','-18.529211, -70.249941'),
#(309,2,'carrera 6 #12-91','51°19’18.13″N, 6°34’35.64″E'),
#(669,1,'Carrera 11 #0-21','52°29’52.24″N 13°27’13.67″E')

#insert into empleado(idEmpleado,Nombre,IdTipoEmpleado)
#values(1,'Rafael',2),(2,'Manuela',2),
#(3,'Richard',2),(4,'Oscar',1),
#(5,'Eduardo',1),(6,'Penelope',1),
#(7,'Lucas',1),(8,'Marcos',1),
#(9,'Mauricio',1),(10,'Luis',2),
#(11,'Fabian',1),(12,'Juan',2),
#(13,'Antonio',1),(14,'Antonela',1),
#(15,'Lorena',1),(16,'Felipe',1),
#(17,'Jina',1),(18,'Sergio',1),
#(19,'Pablo',1),(20,'Camilo',2)

#insert into especificacionplano(idEspecificacionPlano,Escala,FechaRealizacionPlano,IdTipoPlano)
#values (1,'1:10','2020-06-20',1),
#(2,'1:10','2020-06-21',2),
#(3,'1:10','2020-06-21',3),
#(4,'1:10','2021-03-10',1),
#(5,'1:10','2021-03-10',2),
#(6,'1:10','2021-03-11',3),
#(7,'1:100','2021-01-27',1),
#(8,'1:100','2021-01-28',2),
#(9,'1:100','2021-01-27',3),
#(10,'1:1000','2020-09-10',1),
#(11,'1:100','2020-09-12',2),
#(12,'1:100','2020-09-10',3),
#(13,'1:100','2020-10-29',1),
#(14,'1:10','2020-10-29',2),
#(15,'1:10','2020-10-29',3),
#(16,'1:1000','2021-05-28',1),
#(17,'1:10','2021-05-29',2),
#(18,'1:10','2021-05-29',3),
#(19,'1:100','2021-08-24',1),
#(20,'1:10','2021-08-24',2),
#(21,'1:10','2021-08-25',3),
#(22,'1:10','2020-09-19',1),
#(23,'1:10','2020-09-21',2),
#(24,'1:10','2020-09-21',3)

#insert into comprador(idComprador,NombreComprador)
#values(1,'Luis carlos'),(2,'Hermanos Shelby')
#,(3,'Carlos slim'),(4,'Montgomery Burns'),(5,'Industria metarlugica caldas')
#,(6,'Javier Miliei'),(7,'Bernando fact'),(8,'Finn el Humano')

#insert into factura(idFactura,Valor,Estado)
#values(1,500.000,'Pagado'),(2,300.000,'No pagado')
#,(3,150.000,'Pagado'),(4,800.000,'Pagado'),(5,100.000,'Pagado')
#,(6,1000.000,'Pagado'),(7,290.000,'Pagado'),(8,920.000,'No pagado')
#,(9,450.000,'No pagado'),(10,560.000,'Pagado')

#insert into tablaobra(Nombe,FechaInicioObra,FechaFinObra,IdPermiso,IdsPlanoLugar,IdFactura,IdComprador,Estado,Costo)
#values('Casa 278a','2020-07-30','2020-11-20',1,313,5,8,'Terminada',200.000),
#('X100','2022-01-25',null,2,313,8,1,'Planificacion',1100.000),
#('Edificio 23B','2021-04-02','2021-11-30',4,491,4,5,'Terminada',950.000),
#('Fabrica de carros I','2021-02-26','2021-10-23',5,12,10,2,'Terminada',700.000),
#('Fabrica de carros II','2022-05-13',null,6,12,9,2,'Planificacion',600.000),
#('Parque Buenos aires','2020-12-15','2021-03-19',7,231,7,6,'Terminada',340.000),
#('Factory B','2020-12-10','2021-06-09',8,482,6,7,'Terminada',1200.000),
#('Casa 13d','2021-07-12','2021-12-03',9,313,3,8,'Terminada',250.000),
#('Almacen IB','2022-03-25',null,10,309,2,3,'Planificacion',450.000),
#('Iglesia de Marco','2021-08-30','2022-02-09',11,669,1,4,'Inactiva',550.000)

#insert into tablaobra_has_empleado(IdOBra,IdEmpleado,Dias,EstadoEmpleado)
#values(1,1,113,'Inactivo'),(1,4,113,'Inactivo'),(1,5,113,'Inactivo'),(1,6,113,'Inactivo'),
#(2,2,0,'Inactivo'),(2,7,0,'Inactivo'),(2,8,0,'Inactivo'),(2,9,0,'Inactivo'),
#(3,3,242,'Inactivo'),(3,4,242,'Inactivo'),(3,5,242,'Inactivo'),(3,9,242,'Inactivo'),
#(4,20,239 ,'Inactivo'),(4,18,239 ,'Inactivo'),(4,19,239 ,'Inactivo'),(4,17,239 ,'Inactivo'),
#(5,12,0,'Inactivo'),(5,13,0,'Inactivo'),(5,15,0,'Inactivo'),(5,14,0,'Inactivo'),
#(6,1,94,'Inactivo'),(6,9,94,'Inactivo'),(6,4,94,'Inactivo'),(6,7,94,'Inactivo'),
#(7,2,181,'Inactivo'),(7,5,181,'Inactivo'),(7,13,181,'Inactivo'),(7,11,181,'Inactivo'),
#(8,12,144,'Inactivo'),(8,15,144,'Inactivo'),(8,14,144,'Inactivo'),(8,6,144,'Inactivo'),
#(9,2,0,'Inactivo'),(9,17,0,'Inactivo'),(9,12,0,'Inactivo'),(9,5,0,'Inactivo'),
#(10,1,104,'Activo'),(10,7,104,'Activo'),(10,10,104,'Activo')

#INSERT into tablaobra_has_especificacionplano(IdOBra,IdEspecificacionPlano)
#VALUES(1,1),(1,2),(1,3),
#(2,19),(2,20),(2,21),
#(3,7),(3,8),(3,9),
#(4,10),(4,11),(4,12),
#(5,10),(5,11),(5,12),
#(6,22),(6,23),(6,24),
#(7,13),(7,14),(7,15),
#(8,1),(8,2),(8,3),
#(9,16),(9,17),(9,18),
#(10,4),(10,5),(10,6)

