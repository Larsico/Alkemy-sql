CREATE TABLE curso (
Codigo INT NOT NULL,
Nombre VARCHAR(45) NOT NULL,
Descripcion VARCHAR(45),
Turno VARCHAR(45) NOT NULL,
PRIMARY KEY(Codigo)
);

ALTER TABLE curso ADD cupo INT;

INSERT INTO curso (codigo, nombre, descripcion, turno, cupo) VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);
INSERT INTO curso (codigo, nombre, descripcion, turno, cupo) VALUES (102, 'Matemática Discreta','','Tarde',30)

UPDATE curso SET cupo = 25;

DELETE FROM curso WHERE nombre = 'Algoritmos';