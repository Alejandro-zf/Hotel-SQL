
USE `hotel`;
DROP procedure IF EXISTS `hotel`.`Usuarios`;
;

DELIMITER $$
USE `hotel`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Usuarios`(
	IN Nom_Usuario VARCHAR(50), 
	IN Ape_Usuario VARCHAR(50), 
	IN Num_telefono INT(15), 
	IN Correo_electronico VARCHAR(100), 
	IN Num_document INT(10), 
	IN RolesUsu INT(10), 
	IN Document INT(10)
)
BEGIN
	INSERT INTO Usuarios(Nom_Usuario,Ape_Usuario,Num_telefono,Correo_electronico,Num_document,RolesUsu,Document)
    VALUES(Nom_Usuario,Ape_Usuario,Num_telefono,Correo_electronico,Num_document,RolesUsu,Document);
END$$

DELIMITER ;

#////////////////////////////////////////////////////////////////////////////////////Proceso de reservas//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

USE `hotel`;
DROP procedure IF EXISTS `hotel`.`Reservas`;
;

DELIMITER $$
USE `hotel`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reservas`(
	IN Id_reserva int(10), 
	IN Id_cliente int(10), 
	IN Fecha_creacion date, 
	IN Fecha_entre date, 
	IN Fecha_salida date, 
	IN Total_preci int(10), 
	IN Disponibilidad int(10), 
	IN Usua int(15)
)
BEGIN
	INSERT INTO Usuarios(Id_reserva,Id_cliente,Fecha_creacion,Fecha_entre,Fecha_salida,Total_preci,Disponibilidad,Usua)
    VALUES(Id_reserva,Id_cliente,Fecha_creacion,Fecha_entre,Fecha_salida,Total_preci,Disponibilidad,Usua);
END$$

DELIMITER ;
;

#////////////////////////////////////////////////////////////////////////////////////Proceso de habitaciones//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

USE `hotel`;
DROP procedure IF EXISTS `proyecto`.`Habitaciones`;
;

DELIMITER $$
USE `hotel`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Habitaciones`(
	IN Camas int(10),
    IN Dimenciones varchar(25),
	IN Precio int(10), 
    IN Capacidad VARCHAR(25),
	IN Tip_habita int(10)
)
BEGIN
	INSERT INTO Habitaciones(Camas,Dimenciones,Precio,Capacidad,Tip_habita)
    VALUES(Camas,Dimenciones,Precio,Capacidad,Tip_habita);
END$$

DELIMITER ;
;