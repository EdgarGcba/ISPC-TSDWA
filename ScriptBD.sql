DROP DATABASE IF EXISTS pelu_canina;
CREATE DATABASE pelu_canina;

USE pelu_canina;

CREATE TABLE IF NOT EXISTS dueno (
 DNI INT NOT NULL,
 Nombre VARCHAR(255),
 Apellido VARCHAR(255),
 telefono int,
 direccion VARCHAR(255),
 PRIMARY KEY (DNI));
 
 CREATE TABLE IF NOT EXISTS perro (
 ID_Perro INT NOT NULL,
 Nombre VARCHAR(255),
 Fecha_nac DATE,
 sexo VARCHAR(255),
 DNI_Dueno int NOT NULL,
 FOREIGN KEY (DNI_Dueno)
	REFERENCES dueno(DNI),
 PRIMARY KEY (ID_Perro));
 
 CREATE TABLE IF NOT EXISTS historial (
 ID_Historial INT NOT NULL AUTO_INCREMENT,
 ID_Perro int NOT NULL,
 Descripcion VARCHAR(1000),
 Fecha DATE,
 monto int,
 FOREIGN KEY (ID_Perro)
	REFERENCES perro(ID_Perro),
 PRIMARY KEY (ID_Historial) );
 
INSERT INTO dueno (DNI, Nombre, Apellido, telefono, direccion) VALUES (28957346, 'Juan', 'Perez' , 4789689, 'Belgrano 101'), (23546987, 'Maria', 'Perez' , 4789689, 'Pueyrredon  811');
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_Dueno) VALUES (13, 'Puppy',  '2012/12/12' , 'Macho', 28957346), (14, 'Fido',  '2012/11/12' , 'Macho', 23546987);
INSERT INTO historial(ID_Perro, Descripcion, Fecha, monto) VALUES (13, 'Servicio COmpleto', '2021/10/25', 2350), (13, 'Servicio COmpleto', '2021/11/25', 8900),(13, 'Servicio COmpleto', '2021/10/25', 5960), (13, 'Servicio COmpleto', '2021/08/25', 23000), (13, 'Servicio COmpleto', '2021/09/25', 1000);

 
 
 