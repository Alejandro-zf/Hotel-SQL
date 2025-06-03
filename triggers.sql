DROP TRIGGER IF EXISTS `hotel`.`reservas_BEFORE_INSERT_1`;

DELIMITER $$
USE `hotel`$$
CREATE DEFINER = CURRENT_USER TRIGGER `hotel`.`reservas_BEFORE_INSERT_1` BEFORE INSERT ON `reservas` FOR EACH ROW
BEGIN
	SET NEW.Descuento = Descuento(NEW.fecha_creacion, NEW.fecha_entre);
    SET NEW.Total_preci = NEW.Total_preci - NEW.Descuento; 
END$$
DELIMITER ;

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

# trigger de la disponibilidad de habitaciones para las reservas 

DROP TRIGGER IF EXISTS `hotel`.`reservas_BEFORE_INSERT`;

DELIMITER $$
USE `hotel`$$
CREATE DEFINER = CURRENT_USER TRIGGER `hotel`.`reservas_BEFORE_INSERT` BEFORE INSERT ON `reservas` FOR EACH ROW
BEGIN
	DECLARE verificar_estado VARCHAR (50);
    DECLARE veri_fecha_entrada DATETIME;
    DECLARE veri_fecha_salida DATETIME;
    IF veri_fecha_salida <= veri_fecha_entrada THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La fecha de salida tiene que ser de dias posteriores a la fecha del ingreso.';
        END IF ;
        SET verificar_estado = Disponibilidad(NEW.Id_habitacion, DATE(veri_fecha_entrada));
    IF verificar_estado = 'Ocupada' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La habitación que seleccionaste no esta disponible para la fecha que ingresaste, por favor escoge otra diferente.';
    END IF;
END$$
DELIMITER ;