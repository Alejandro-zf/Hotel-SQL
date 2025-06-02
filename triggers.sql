DROP TRIGGER IF EXISTS `hotel`.`reservas_BEFORE_INSERT_1`;

DELIMITER $$
USE `hotel`$$
CREATE DEFINER = CURRENT_USER TRIGGER `hotel`.`reservas_BEFORE_INSERT_1` BEFORE INSERT ON `reservas` FOR EACH ROW
BEGIN
	SET NEW.Descuento = Descuento(NEW.fecha_creacion, NEW.fecha_entre);
    SET NEW.Total_preci = NEW.Total_preci - NEW.Descuento; 
END$$
DELIMITER ;