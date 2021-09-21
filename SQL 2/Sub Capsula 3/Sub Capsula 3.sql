CREATE TABLE persona(
  id INT,
  nombre VARCHAR(50)
)

INSERT INTO persona (id, nombre) VALUES (3, 'Mauro')
INSERT INTO persona (id, nombre) VALUES (1, 'Noelia')
INSERT INTO persona (id, nombre) VALUES (16, 'Benjamin')
INSERT INTO persona (id, nombre) VALUES (13, 'Delfina')

SELECT * FROM PERSONA 

ALTER TABLE persona ADD PRIMARY KEY (id)

SELECT * FROM PERSONA 

Conteste a la pregunta: ¿Por qué después de agregar la clave primaria, el orden de los registros es diferente?
*El ordenamiento obtenido en la segunda consulta se debe al índice clousterizado que se creó al definir la clave primaria id.