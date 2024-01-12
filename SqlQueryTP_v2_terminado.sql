

-- iniciamos creando y seleccionando la db que usaremos.

CREATE DATABASE DB_TP
GO
USE DB_TP
GO

/*También se necesitará guardar la información de todos sus camiones con patente, marca,
modelo, año, tipo de remolque (los tipos de Remolques son únicos). 
*/ 

CREATE TABLE CAMIONES (
	id_camion INT PRIMARY KEY IDENTITY(1000,1),
	patente varchar(10) UNIQUE,
	marca varchar(20),
	modelo varchar(20),
	anio_modelo int,
	tipo_remolque varchar(20) NOT NULL 
);

INSERT INTO CAMIONES
	VALUES 
	('NES656','VW','Meteor','2010','01'),
	('NES658','VW','Meteor','2012','04'),
	('KYX467','M BENZ','Accelo','2011','04'),
	('WEK699','VW','Meteor','2010','03'),
	('LXF583','HYUNDAI','HD-78','2013','02'),
	('MCB768','HYUNDAI','HD-78','2017','02')

/* Se necesitará guardar la información de todos sus choferes con Nombre, Apellido,
Numero de DNI, dirección, teléfono fijo, teléfono Celular, Edad, Email, Código de Registro
Automotor, Camión Asignado. */ 

create table CHOFERES (
	id_chofer INT PRIMARY KEY IDENTITY(1,1),
	apellido varchar(50),
	nombre varchar(50) ,
	numero_dni int NOT NULL,
	direccion varchar (50),
	telefono_fijo int,
	telefono_celular int,
	edad int,
	email varchar(60),
	cod_registro_automotor varchar(20),
	camion_asignado int FOREIGN KEY REFERENCES CAMIONES(id_camion)
	);

INSERT INTO CHOFERES (apellido,nombre,numero_dni,direccion,telefono_fijo,telefono_celular,edad,camion_asignado,email,cod_registro_automotor) 
	VALUES ('DENHOFF','NICOLAS FABIAN','29345655','Cordoba 2182','4512345','153345465','23','1001','nicolas.denhoff@outlook.com','0294251'),
	('SIMO ','NORBERTO GUSTAVO','19546343','Av. Juan Jose Paso 4500','4556789','155123332','40','1001','norberto.simo@yahoo.com','0928214'),
	('ETCHEVERRY ','DANIEL SEBASTAIN','23456655','Genova 5900','4598765','113345466','55','1003','daniel.etcheverry@gmail.com','0928631'),
	(' POSADA ','ALDO DAVID','23467744','Cordoba 4945','4543210','153781099','32','1002','aldo.posada@outlook.com','0928214'),
	('PEREYRA','JAVIER ADRIAN','34223333','Callao 2345','5587654','156788999','39','1005','javier.pereyra@yahoo.com','0256124'),
	('ABALLANO ','DIEGO ARMANDO','31857404','Mitre 1400','5532109','153787000','40','1004','diego.aballano@gmail.com','1215125'),
	('BREZIK ','ARIEL EDUARDO','30182855','Pellegrini 5000','5576543','153443212','51','1000','ariel.brezik@outlook.com','2512512'),
	('ACOSTA ','JOSE MARIA','19288222','Callao 3499','5521098','154789823','29','1000','jose.acosta@yahoo.com','231612'),
	('RIQUELME','EMANUEL MARIANO','20838855','Ov. Lagos 3490','5565432','155256986','27','1005','emanuel.riquelme@gmail.com','332512'),
	('IRALA','EZEQUIEL','21929299','Bv. Segui 3400','5510987','153568945','35','1005','ezequiel.iralamedios@outlook.com','2')


/*clientes con código de cliente,
Nombre, Apellido, Razón Social (si es necesario),DNI, cuit (si es necesario),dirección,
teléfono, email. 
*/

CREATE TABLE CLIENTES (
	id_cliente INT IDENTITY(1000,1) PRIMARY KEY,
	nombre_cliente varchar(50),
	apellido_cliente varchar(50),
	razon_social varchar(50),
	dni int ,
	cuit varchar(50),
	direccion varchar(50) NOT NULL,
	telefono varchar(50),
	email varchar(50)
)

INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Juan', 'Pérez', 17654321, 'Calle San Martín 123', '3414123456', 'juan@gmail.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion,telefono, email)
VALUES ('María', 'González', 19876543, 'Avenida Pellegrini 456','321548924', 'maria@hotmail.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Luis', 'Rodríguez', 21567890, 'Calle Córdoba 789', '3414123145', 'luis@gmail.com');
INSERT INTO CLIENTES (nombre_cliente, razon_social, cuit, direccion, telefono, email)
VALUES ('Coca Cola Argentina S.A.', 'Coca Cola Argentina S.A.', '30345678904', 'Avenida Pellegrini 1234', '3414122221', 'contacto@cocacola.com');
INSERT INTO CLIENTES (nombre_cliente, razon_social, cuit, direccion, telefono, email)
VALUES ('PepsiCo Argentina S.A.', 'PepsiCo Argentina S.A.', '30345678905', 'Calle Sarmiento 567', '3414123111', 'contacto@pepsi.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Sofía', 'Martínez', 23456789, 'Calle Mendoza 345',' 3414123336', 'sofia@gmail.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Pedro', 'López', 25678901, 'Avenida Alberdi 678', '3414123116', 'pedro@hotmail.com');
INSERT INTO CLIENTES (nombre_cliente, razon_social, cuit, direccion, telefono, email)
VALUES ('McDonald´s Argentina S.R.L.', 'McDonald´s Argentina S.R.L.', '30345678906', 'Calle San Juan 890','341519283', 'contacto@mcdonalds.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Elena', 'Fernández', 27654321, 'Calle Salta 123', '341442256', 'elena@gmail.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Carlos', 'Gómez', 29876543, 'Avenida Belgrano 456', '341411556', 'carlos@hotmail.com');
INSERT INTO CLIENTES (nombre_cliente, razon_social, cuit, direccion, telefono, email)
VALUES ('Toyota Argentina S.A.', 'Toyota Argentina S.A.', '30345678907', 'Avenida Corrientes 789', '3414111456', 'contacto@toyota.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Laura', 'Hernández', 31567890, 'Calle Entre Ríos 234', '3414123126', 'laura@gmail.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, email)
VALUES ('Miguel', 'Torres', 33789012, 'Avenida San Lorenzo 567', 'miguel@hotmail.com');
INSERT INTO CLIENTES (nombre_cliente, razon_social, cuit, direccion, telefono, email)
VALUES ('Ford Argentina S.C.A.', 'Ford Argentina S.C.A.', '30345678908', 'Calle Santa Fe 678', '3414633456', 'contacto@ford.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Lorena', 'Pérez', 35654321, 'Calle Tucumán 123', 34141212523, 'lorena@gmail.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Fernando', 'García', 37876543, 'Avenida Jujuy 456', 34141000456, 'fernando@hotmail.com');
INSERT INTO CLIENTES (nombre_cliente, razon_social, cuit, direccion, telefono, email)
VALUES ('Mercedes-Benz Argentina S.A.', 'Mercedes-Benz Argentina S.A.', '30345678909', 'Calle Catamarca 890', '3414634256', 'contacto@mercedesbenz.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('Isabel', 'López', 39678901, 'Avenida San Juan 234','3414122256', 'isabel@gmail.com');
INSERT INTO CLIENTES (nombre_cliente, apellido_cliente, dni, direccion, telefono, email)
VALUES ('José', 'Ramírez', 41567890, 'Calle La Rioja 567',' 3414100456', 'jose@hotmail.com');
INSERT INTO CLIENTES (nombre_cliente, razon_social, cuit, direccion, telefono, email)
VALUES ('Samsung Electronics Argentina S.A.', 'Samsung Electronics Argentina S.A.', '30345678910', 'Avenida 27 de Febrero 789', '3414176456', 'contacto@samsung.com');

	CREATE TABLE PROVINCIAS (
	codigo_provincia varchar(3) PRIMARY KEY,
	nombre_provincia varchar(50),
)

INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('BUE', 'Buenos Aires');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('CAT', 'Catamarca');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('CHA', 'Chaco');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('CHU', 'Chubut');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('CBA', 'Córdoba');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('COR', 'Corrientes');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('ENT', 'Entre Ríos');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('FOR', 'Formosa');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('JUJ', 'Jujuy');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('LAP', 'La Pampa');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('MEN', 'Mendoza');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('MIS', 'Misiones');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('NEU', 'Neuquén');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('RIO', 'Río Negro');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('SAL', 'Salta');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('SFE', 'Santa Fe');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('SGO', 'Santiago del Estero');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('TDF', 'Tierra del Fuego');
INSERT INTO PROVINCIAS (codigo_provincia, nombre_provincia)
VALUES ('TUC', 'Tucumán');

CREATE TABLE CIUDADES (
	codigo_ciudad varchar(3) PRIMARY KEY,
    codigo_provincia varchar(3) FOREIGN KEY REFERENCES PROVINCIAS(codigo_provincia),
	nombre_ciudad varchar(50),
)

INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('BSA', 'BUE', 'Buenos Aires');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('LPL', 'BUE', 'La Plata');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('MDP', 'BUE', 'Mar del Plata');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('SFC', 'CAT', 'San Fernando del Valle de Catamarca');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('RES', 'CHA', 'Resistencia');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('RAW', 'CHU', 'Rawson');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('COR', 'CBA', 'Córdoba');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('CNT', 'COR', 'Corrientes');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('PAR', 'ENT', 'Paraná');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('FSA', 'FOR', 'Formosa');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('JUJ', 'JUJ', 'San Salvador de Jujuy');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('SRA', 'LAP', 'Santa Rosa');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('MDZ', 'MEN', 'Mendoza');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('POS', 'MIS', 'Posadas');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('NQN', 'NEU', 'Neuquén');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('VDC', 'RIO', 'Viedma');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('SLA', 'SAL', 'Salta');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('SFE', 'SFE', 'Santa Fe');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('ROS', 'SFE', 'Rosario');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('SDE', 'SGO', 'Santiago del Estero');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('RGA', 'TDF', 'Río Grande');
INSERT INTO CIUDADES (codigo_ciudad, codigo_provincia, nombre_ciudad)
VALUES ('TUC', 'TUC', 'San Miguel de Tucumán');

/* Código de viaje,
dirección de destino, Provincia, ciudad, dirección de origen, Provincia, ciudad, cantidad
de kilómetros recorridos, Código de cliente y camión y conductor que realizará el viaje,
además de las fechas de salida y llegada estimadas y reales. 
*/

CREATE TABLE VIAJES (
	viajeid as 'V' + cast(viaje_n as varchar(10)), --Combina el valor de viaje_n con la columna viaje ID, el resultado almacenado es Vn, el parametro cast convierte el tipo de dato.
	viaje_n int IDENTITY(1,1),--aumenta en 1 por cada registro almacenado
	dir_destino varchar(50),
	provincia_destino varchar(3) FOREIGN KEY REFERENCES PROVINCIAS(codigo_provincia),
	ciudad_destino varchar(3) FOREIGN KEY REFERENCES CIUDADES(codigo_ciudad),
	dir_origen varchar(50),
	provincia_origen varchar(3) FOREIGN KEY REFERENCES PROVINCIAS(codigo_provincia),
	ciudad_origen varchar(3) FOREIGN KEY REFERENCES CIUDADES(codigo_ciudad),
	km_recorridos float,
	id_cliente int FOREIGN KEY REFERENCES CLIENTES(id_cliente),
	id_camion int FOREIGN KEY REFERENCES CAMIONES(id_camion),
	id_chofer int FOREIGN KEY REFERENCES CHOFERES(id_chofer),
	fecha_salida_estimada date,
	fecha_salida_real date,
	fecha_llegada_estimada date,
	fecha_llegada_real date
);

-- Insertar viajes
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Calle San Martín 123', 'BUE', 'BSA', 'Av. Centenario 2325', 'CBA', 'COR', 756, 1004, 1001,2, '2023-11-07', '2023-11-07', '2023-11-08', '2023-11-08');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Pedro Gomez 2093', 'CAT', 'SFC', 'Marco 1456', 'JUJ', 'JUJ', 400, 1002, 1003,3, '2023-11-10', '2023-11-10', '2023-11-11', '2023-11-11');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Marcos Perez 1039', 'FOR', 'FSA', 'Ruben 8775 ', 'CHA', 'RES', 300, 1003,  1004,6, '2023-11-12', '2023-11-13', '2023-11-13', '2023-11-14');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Erols Step 2048', 'MEN', 'MDZ', 'Av. Ruben Diaz 3231', 'NEU', 'NQN', 600, 1004, 1000,7, '2023-11-14', '2023-11-15', '2023-11-15', '2023-11-18');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Juan Salvador 2903', 'JUJ', 'JUJ', 'Av. Patria 23235', 'CAT', 'SFC', 400, 1005, 1005,9, '2023-11-16', '2023-11-16', '2023-11-17', '2023-11-17');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Cordoba 234', 'CHA', 'RES', 'Gutierrez 2056', 'FOR', 'FSA', 300, 1006, 1000,7, '2023-11-18', '2023-11-21', '2023-11-19', '2023-11-23');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Circunvalacion 23', 'NEU', 'NQN', 'Juarez 26667', 'MEN', 'MDZ', 600, 1007, 1005,5, '2023-11-20', '2023-11-20', '2023-11-21', '2023-11-21');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Cabo Rojo 2039', 'BUE', 'MDP', 'Pato Leon 7789', 'BUE', 'LPL', 100, 1008,  1003,3, '2023-11-22', '2023-11-26', '2023-11-23', '2023-11-29');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('San Luis 2948', 'BUE', 'LPL', 'Julio Grondona 2568', 'BUE', 'MDP', 100, 1002,  1002,4, '2023-11-24', '2023-11-24', '2023-11-25', '2023-11-25');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Av. Pellegrini 248', 'SFE', 'ROS', 'Maria De Dios 295', 'SFE', 'SFE', 300, 1010, 1004,6, '2023-11-26', '2023-12-01', '2023-11-27', '2023-12-03');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Carlos Gardel 3058', 'TUC', 'TUC', 'Puyrredon 51', 'JUJ', 'JUJ', 400, 1002, 1000,7, '2023-11-28', '2023-11-28', '2023-11-29', '2023-11-29');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Nietos Segundos 2340', 'JUJ', 'JUJ', 'av. Rodriguez 2058', 'CAT', 'SFC', 400, 1002, 1001,2, '2023-11-30', '2023-11-30', '2023-12-01', '2023-12-01');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Tierra Colorada 22343', 'MIS', 'POS', 'Av. San LUIS 256', 'CHA', 'RES', 300, 1010, 1005,9, '2023-12-02', '2023-12-06', '2023-12-03', '2023-12-08');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Pedro Rodriguez 2095', 'CAT', 'SFC', 'Cordoba 2567', 'JUJ', 'JUJ', 400, 1011, 1005,10, '2023-12-04', '2023-12-04', '2023-12-05', '2023-12-05');
INSERT INTO VIAJES (dir_destino, provincia_destino, ciudad_destino, dir_origen, provincia_origen, ciudad_origen, km_recorridos, id_cliente, id_camion, id_chofer, fecha_salida_estimada, fecha_salida_real, fecha_llegada_estimada, fecha_llegada_real)
VALUES ('Pero Lino Funes 1059', 'MIS', 'POS', 'Julio Roca 2045', 'CHA', 'RES', 300, 1004, 1001,2, '2023-12-06', '2024-01-10', '2023-12-07', '2024-01-12');

-- Ejercicios 

-- 1

select count(*) as Cantidad_viajes_SantaFe from viajes where provincia_destino = 'SFE';

-- 2

select ci.nombre_ciudad,p.nombre_provincia,v.km_recorridos,c.nombre as nombre_chofer,c.apellido as apellido_chofer,cam.patente as patente_camion from viajes as v 
inner join CHOFERES as c on v.id_chofer = c.id_chofer
inner join CAMIONES as cam on c.camion_asignado = cam.id_camion
inner join PROVINCIAS as p on p.codigo_provincia = v.provincia_destino
inner join CIUDADES as ci on ci.codigo_ciudad = v.ciudad_origen
where provincia_origen = 'CBA'
and YEAR(V.fecha_salida_estimada) = 2023
and MONTH(V.fecha_salida_estimada) BETWEEN 6 AND 12;

-- 3

SELECT TOP 3 c.nombre AS combre_chofer, c.apellido AS apellido_chofer,SUM(v.km_recorridos) AS kilometros_recorridos FROM VIAJES v
INNER JOIN CHOFERES c ON v.id_chofer = c.id_chofer
WHERE YEAR(v.fecha_salida_estimada) = 2023
GROUP BY c.nombre, c.apellido
ORDER BY SUM(v.km_recorridos) DESC;

-- 4

SELECT c.nombre_cliente,c.apellido_cliente,ch.nombre AS nombre_chofer,ch.apellido AS apellido_chofer,v.km_recorridos FROM VIAJES v
INNER JOIN CLIENTES c ON v.id_cliente = c.id_cliente
INNER JOIN CHOFERES ch ON v.id_chofer = ch.id_chofer
WHERE YEAR(v.fecha_salida_estimada) = 2023
ORDER BY v.km_recorridos DESC;
