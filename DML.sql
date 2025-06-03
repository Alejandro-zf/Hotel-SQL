INSERT INTO Roles (Rol_usuario) VALUES
('Cliente'),
('Recepcionista');

INSERT INTO Documento (Tip_document) VALUES
('Cedula ciudadana'),
('Cedula extranjeria'),
('Pasaporte');

CALL Usuarios ("Jose","Ramirez","5013597489","jose@gmail.com","1017896513", 1,2);
CALL Usuarios ("Andres","Bernal","1023598564","Andres@gmail.com","1013523451", 1,1);
CALL Usuarios ("Oscar","Moreno","3024597482","Oscar@gmail.com","1013432592", 1,1);
CALL Usuarios ("Santiago","Martinez","2317697481","Santiago@gmail.com","1013597865", 1,2);
SELECT * FROM Usuarios;

INSERT INTO Tip_Habitacion (Nom_tip) VALUES 
("Habitación individual"),
("Habitación doble"),
("Habitación triple"),
("Habitación cuádruple"),
("Suites"),
("Habitaciones tipo estudio"),
("Habitaciones con conexión");

CALL Habitaciones ("2","Mediano","30.000.000.","2 personas","3");
SELECT * FROM Habitaciones;

#Ejemplos del tigger

INSERT INTO Reservas (Total_preci, fecha_creacion, fecha_entre)
VALUES (100, '2025-06-01 09:30:00', '2025-06-20 17:00:00'); 
SELECT * FROM Reservas;

#Ejemplo 2

INSERT INTO Reservas (Id_habitacion, fecha_creacion, fecha_entre, fecha_salida, Total_preci)
VALUES ("2", "2025-06-03 10:25:00", "2025-06-07 12:15:00", "2025-06-08 16:55:00", 100);
SELECT * FROM Reservas;