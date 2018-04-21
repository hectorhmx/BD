--ejercicio1
Select * from asignatura
where plan_estudios_id in (1,2)
minus
Select * from asignatura
where  creditos >= 9;


--ejercicio 2

Select nombre,apellido_paterno,apellido_materno,num_examen,calificacion,asignatura_id
FROM  estudiante  INNER JOIN estudiante_extraordinario
ON estudiante.estudiante_id = 21

intersect

Select nombre,apellido_paterno,apellido_materno,num_examen,calificacion,asignatura_id
FROM  estudiante INNER JOIN estudiante_extraordinario
ON estudiante_extraordinario.estudiante_id = 21;

Select nombre,apellido_paterno,apellido_materno,num_examen,calificacion,asignatura_id
FROM  estudiante,estudiante_extraordinario where estudiante.estudiante_id = 21 and estudiante_extraordinario.estudiante_id = 21;



--ejercicio 3. (explotó sql otra vez, así que no ha sido probado.

Select * FROM estudiante, estudiante_inscrito
where (estudiante.estudiante_id = estudiante_inscrito.estudiante_inscrito) 
and (estudiante.nombre = 'JUAN JUAREZ MENDOZA'),

