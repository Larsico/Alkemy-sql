
SELECT e.nombre, apellido, c.nombre as Curso FROM `inscripcion` as i INNER JOIN estudiante as e ON (i.estudiante_legajo = e.legajo) INNER JOIN curso as c ON (c.codigo = i.curso_codigo) 

SELECT e.nombre, apellido, c.nombre as Curso FROM `inscripcion` as i INNER JOIN estudiante as e ON (i.estudiante_legajo = e.legajo) INNER JOIN curso as c ON (c.codigo = i.curso_codigo) ORDER BY c.nombre 

SELECT p.nombre, apellido, c.nombre as Curso FROM profesores as p INNER JOIN curso as c ON (c.profesor_id = p.id)

SELECT p.nombre, apellido, c.nombre as Curso FROM profesores as p INNER JOIN curso as c ON (c.profesor_id = p.id) ORDER BY c.nombre

SELECT i.numero, c.nombre, COUNT(c.codigo) as inscripciones, cupo as CupoTotal, (cupo - COUNT(c.codigo)) as CupoRestante FROM inscripcion as i INNER JOIN curso as c on (c.codigo = i.curso_codigo) GROUP BY c.nombre

SELECT i.numero, c.nombre, COUNT(c.codigo) as inscripciones, cupo as CupoTotal, (cupo - COUNT(c.codigo)) as CupoRestante FROM inscripcion as i INNER JOIN curso as c on (c.codigo = i.curso_codigo) GROUP BY c.nombre HAVING CupoRestante>10 
