DELIMITER //

CREATE DEFINER=`root`@`localhost` FUNCTION `Descuento`(
    fecha_creacion DATETIME,
    fecha_entre DATETIME
) RETURNS DECIMAL(5,2)
BEGIN
    DECLARE Descuento DECIMAL(5,2);
    IF TIMESTAMPDIFF(DAY, fecha_creacion, fecha_entre) >= 15 THEN
        SET Descuento = 10.00;
    ELSE
        SET Descuento = 0.00;
    END IF;
    RETURN Descuento;
END //

DELIMITER ;

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

USE `hotel`;
DROP function IF EXISTS `Disponibilidad`;

DELIMITER $$
USE `hotel`$$
CREATE FUNCTION `Disponibilidad` (
	id_habita INT,
    fecha_entra DATE
)
RETURNS VARCHAR(50)
BEGIN
	DECLARE estado_habitacion VARCHAR(50);
    DECLARE num_reservas INT;
    SELECT COUNT(*)
    INTO num_reservas
    FROM reservas
    WHERE
        ID_Habitacion = id_habita
        AND (
            (fecha_entra >= Fecha_entra AND fecha_entra < Fecha_salida)
            )
        AND Disponibilidad = 1;
        IF num_reservas > 0 THEN
        SET estado_habitacion = 'Ocupada';
    ELSE
    SET estado_habitacion = 'Disponible';
    END IF;

    RETURN estado_habitacion;
END$$

DELIMITER ;
