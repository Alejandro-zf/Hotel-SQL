 DROP DATABASE IF EXISTS Hotel;
CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE Usuarios(
	Id_usuario INT(15) PRIMARY KEY AUTO_INCREMENT,
	Nom_Usuario  VARCHAR(50),
	Ape_Usuario  VARCHAR(50),
	Num_telefono  INT(15) UNIQUE,
    Correo_electronico  VARCHAR(100),
    Num_document INT(10),
    RolesUsu INT(10),
    Document INT(10)
);

CREATE TABLE Documento(
Id_documento INT(10) PRIMARY KEY AUTO_INCREMENT,
Tip_document VARCHAR(20)
);

CREATE TABLE Reservas(
	Id_reserva INT(10) PRIMARY KEY AUTO_INCREMENT,
	Id_cliente INT(10),
	Fecha_creacion DATE,
	Fecha_entre DATE,
	Fecha_salida DATE,
	Total_preci INT (10),
	Disponibilidad INT(10),
    Usua INT(15)
);

CREATE TABLE Roles(
	Id_roles INT(10) PRIMARY KEY AUTO_INCREMENT ,
	Rol_usuario VARCHAR(20)
);

CREATE TABLE Reservas_habitaciones (
	Id_reserva INT(10),
	Id_habita INT(10),
    PRIMARY KEY (Id_reserva, Id_habita)
);

CREATE TABLE Habitaciones(
	Id_habita INT(10) PRIMARY KEY AUTO_INCREMENT,
	Camas INT(10),
	Dimenciones VARCHAR(15),
	Precio INT (10),
	Capacidad VARCHAR(25),
	Tip_habita INT(10)
);

CREATE TABLE Tip_habitacion(
	Id_tip INT(10) PRIMARY KEY AUTO_INCREMENT,
	Nom_tip VARCHAR (25),
	Descripcion VARCHAR (30)
);

ALTER TABLE Usuarios
ADD CONSTRAINT Fk_Document 
FOREIGN KEY (Document) REFERENCES Documento(Id_documento);

ALTER TABLE Usuarios
ADD CONSTRAINT Fk_Roles 
FOREIGN KEY (RolesUsu) REFERENCES Roles(Id_roles);

ALTER TABLE Reservas
ADD CONSTRAINT Fk_Reservas 
FOREIGN KEY (Usua) REFERENCES Usuarios(Id_usuario);

ALTER TABLE Reservas_Habitaciones
ADD CONSTRAINT Fk_Reserr 
FOREIGN KEY (Id_reserva) REFERENCES Reservas(Id_reserva);

ALTER TABLE Reservas_Habitaciones
ADD CONSTRAINT Fk_habitt
FOREIGN KEY (Id_habita) REFERENCES Habitaciones(Id_habita);

ALTER TABLE Habitaciones
ADD CONSTRAINT Fk_tip_habita
FOREIGN KEY (Id_habita) REFERENCES Tip_habitacion(Id_tip);