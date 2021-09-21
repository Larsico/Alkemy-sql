1-
SELECT legajo, e.nombre, COUNT(*) as cursos FROM estudiante as e INNER JOIN inscripcion as i ON i.estudiante_legajo=e.legajo INNER JOIN curso as c ON c.codigo = i.curso_codigo GROUP BY i.estudiante_legajo 

2-
SELECT legajo, e.nombre, COUNT(*) as cursos FROM estudiante as e INNER JOIN inscripcion as i ON i.estudiante_legajo=e.legajo INNER JOIN curso as c ON c.codigo = i.curso_codigo GROUP BY i.estudiante_legajo HAVING cursos > 1

3-
SELECT legajo, nombre, apellido, fecha_nacimiento FROM estudiante e LEFT JOIN inscripcion i ON e.legajo = i.estudiante_legajo WHERE i.estudiante_legajo IS NULL

4-
SELECT DISTINCT TABLE_NAME, INDEX_NAME FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA = 'NombreDeLaDB' 

5-
SELECT e.legajo, e.nombre, e.apellido, e.fecha_nacimiento, e.carrera, p.apellido FROM estudiante e INNER JOIN inscripcion i ON e.legajo = i.estudiante_legajo INNER JOIN curso c ON i.curso_codigo = c.codigo INNER JOIN profesores p ON c.profesor_id = p.id WHERE p.apellido IN ('Pérez', 'Paz') GROUP BY e.nombre
