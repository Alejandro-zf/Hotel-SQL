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