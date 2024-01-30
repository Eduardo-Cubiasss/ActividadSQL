CREATE DATABASE TechSolutionsss;

USE TechSolutionsss;

CREATE TABLE Cargos(
Id_Cargo INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(40)
);

CREATE TABLE Empleados(
 Id_Empleado INT AUTO_INCREMENT PRIMARY KEY,
 Nombre_Empleado VARCHAR(20),
 Apellido VARCHAR(20),
 Id_Cargo INT,
 CONSTRAINT fk_Empleado_Cargo
 FOREIGN KEY (Id_Cargo)
 REFERENCES Cargos(Id_Cargo)
);

CREATE TABLE Proyectos(
	Id_Proyecto INT AUTO_INCREMENT PRIMARY KEY,
	NombreProyecto VARCHAR(50)
);

CREATE TABLE Relaciones(
	Id_Relacion INT AUTO_INCREMENT PRIMARY KEY,
	Id_Proyecto INT,
	Id_Empleado INT,
	CONSTRAINT fk_Relaciones_Proyecto
 FOREIGN KEY (Id_Proyecto)
 REFERENCES Proyectos(Id_Proyecto),
 CONSTRAINT fk_Relaciones_Empleado
 FOREIGN KEY (Id_Empleado)
 REFERENCES Empleados(Id_Empleado)
);


CREATE TABLE Departamentos(
	Id_Departamento INT AUTO_INCREMENT PRIMARY KEY
);
ALTER TABLE Departamentos ADD Nombre_Departamento VARCHAR(20);
ALTER TABLE Empleados ADD Id_Departamento INT;
ALTER TABLE Empleados ADD Fecha_Ingreso DATE;
ALTER TABLE Empleados ADD CONSTRAINT fk_Empleados_Departamento FOREIGN KEY (Id_Departamento) REFERENCES Departamentos(Id_Departamento);

INSERT INTO cargos(Nombre) VALUES('Gerente');
INSERT INTO departamentos(Nombre_Departamento) VALUES ('Logistica');
INSERT INTO Proyectos(NombreProyecto) VALUES ('Gestion estudiantil');
INSERT INTO empleados(Nombre_Empleado, Apellido, Id_Cargo, Id_Departamento, Fecha_Ingreso) VALUES ('Will', 'Granados',1, 1, '2019-01-04');
INSERT INTO Relaciones(Id_Proyecto, Id_Empleado) VALUES (1,1);

 	
UPDATE empleados SET Fecha_Ingreso = '2019-03-01' WHERE Id_Empleado = 1;