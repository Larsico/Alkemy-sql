CREATE TABLE PROFESOR ( id INTEGER PRIMARY KEY AUTOINCREMENT, nombre VARCHAR(20) NOT NULL, apellido VARCHAR(20) NOT NULL, fecha_nacimiento DATE NOT NULL, salario FLOAT );

INSERT INTO PROFESOR VALUES (NULL, "Juan", "Perez", "1990-06-06", 55000), 
(NULL, "Maria Emilia", "Paz", "1984-07-15", 72000),
(NULL, "Martin", "Correa", "1987-12-07", 63000),
(NULL, "Lucia", "Diaz", "1991-02-24", 45000),
(NULL, "Raul", "Martinez", "1980-10-15", 85000),
(NULL, "Mabel", "Rios", "1982-06-12", 83000);

SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR Order BY fecha_nacimiento ASC;

SELECT * FROM PROFESOR WHERE salario >= 65000;

SELECT * FROM PROFESOR WHERE fecha_nacimiento > "1981-01-01" and fecha_nacimiento < "1990-12-31";

SELECT * FROM PROFESOR LIMIT 5;

SELECT * FROM PROFESOR WHERE apellido LIKE "P%";

SELECT * FROM PROFESOR WHERE fecha_nacimiento > "1981-01-01" and fecha_nacimiento < "1990-12-31" AND salario > 80000;