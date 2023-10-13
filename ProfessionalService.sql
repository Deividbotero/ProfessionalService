create database ProfessionalService;

use ProfessionalService;

create table Cliente(
NitCliente int primary key,
Foto_Cliente blob,
Numero_Identificacion varchar(15),
Primer_Nombre varchar(15),
Segundo_Nombre varchar(15),
Primer_Apellido varchar(15),
Segundo_Apellido varchar(15),
NumeroCelular varchar(10),
Corre_electronico varchar(30),
Direccion varchar(25));

create table Prestador(
NitPrestador int primary key,
Foto_Prestador blob,
Primer_Nombre varchar(15),
Segundo_Nombre varchar(15),
Primer_Apellido varchar(15),
Segundo_Apellido varchar(15),
Telefono varchar(10),
Correo_electronico varchar(30),
Direccion varchar(25));

create table ValoracionPrestador(
Puntualidad varchar(10),
Atencion varchar(10),
NitPrestadorServicio int,
constraint fk_Valor foreign key (NitPrestadorServicio) references Prestador (NitPrestador));


create table Servicio(
Solicitud_del_Servicio datetime,
Ubicacion_del_Servicio varchar(50),
Hora_Inicio_ time,
Hora_Finalizacion time,
Prestador_Prime int,
Cliente_Prime int,
constraint fk_Serv foreign key(Prestador_Prime) references Prestador(NitPrestador),
constraint fk_Servi foreign key(Cliente_Prime) references Cliente(NitCliente));

create table ServicioHerramientas(
Solicitud_de_Herramientas datetime,
Herramientas_Recibida datetime,
Tiempo_de_uso_herramientas time,
Estado_de_Herramientas varchar(20),
Estado_devolucion_herramienta varchar(20),
Prestador_Herramienta int,
Cliente_receptor_herramienta int,
constraint fk_ServHerr foreign key(Prestador_Herramienta) references Prestador(NitPrestador),
constraint fk_ServHerra foreign key(Cliente_receptor_Herramienta) references Cliente(NitCliente));




INSERT INTO cliente(NitCliente,Numero_Identificacion,Primer_Nombre,Primer_Apellido,NumeroCelular,Corre_electronico,Direccion)
VALUES(101,100111,'David','Botero','3123734305','bot12@gmail.com','carrera 29 #12 11'),
(102,100112,'Juan','Moreno','3123734300','mor12@gmail.com','carrera 12 #33 53'),
(103,100113,'Daniel','Escobar','3123734301','esc12@gmail.com','carrera 11 #20 21'),
(104,100114,'Geovany','Santoyo','3123734302','sant12@gmail.com','carrera 100 #12 25'),
(105,100115,'Camilo','Ramirez','3123734303','ram12@gmail.com','calle 110 #54 12'),
(106,100116,'Cristian','Lesmes','3123734304','les12@gmail.com','calle 150 #12 11'),
(107,100117,'Pablo','Gaviria','3123734306','gav12@gmail.com','calle 156 #33 12'),
(108,100118,'Emilio','Escobar','3123734307','esco12@gmail.com','calle 101 #15 17');

select * from cliente;

insert into prestador(NitPrestador,Primer_Nombre,Primer_Apellido,Telefono,Correo_electronico,Direccion)
values (010,'Matias','Mosquera','3003122540','mos10@gmail.com','Calle 120 #12 30'),
(011,'Roberto','DaSilva','3003122541','das10@gmail.com','calle 100 # 45 30'),
(012,'Robert','Lewandowski','3003122542','lew10@gmail.com','carrera 29 # 13b 32'),
(013,'Marco','Asensio','3003122543','asen10@gmail.com','carrera 15 #16 50'),
(014,'Karim','Benzema','3003122544','benz10@gmail.com','calle 125 #33 11'),
(015,'Erling','Haaland','3003122545','haal10@gmail.com','carrera 91 #123 23'),
(016,'Mohamed','Salah','3003122546','sala10@gmail.com','calle 129 #12 12'),
(017,'Zinedine','Zidane','3003122547','zidane10@gmail.com','carrera 98 #122 23');

select * from prestador;

insert into servicio (Solicitud_del_Servicio,Ubicacion_del_Servicio,Hora_Inicio_,Hora_Finalizacion)
values('2023-10-12 14:30:00','Carrera 7 # 72-41','15:00:00','16:15:00'),
('2021-07-05 09:15:45','Calle 93 # 11-58','09:35:20','10:40:50'),
('2022-11-20 16:45:30','Avenida Jiménez # 7-67','17:05:02','18:25:00'),
('2020-04-30 21:00:10','Calle 63 # 14-31','21:20:00','22:00:00'),
('2019-08-15 08:10:55','Calle 140 # 7-35','08:25:35','10:01:35');

select * from servicio;


