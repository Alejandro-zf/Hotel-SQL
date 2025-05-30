INSERT INTO Roles (Rol_usuario) VALUES
('Cliente'),
('Recepcionista'),
('Limpieza');

INSERT INTO Documento (Tip_document) VALUES
('Cedula ciudadana'),
('Cedula extranjeria'),
('Pasaporte');

CALL Usuarios ("Jose","Ramirez","1013597489","nose@gmail.com","1013586452", 1,2);
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