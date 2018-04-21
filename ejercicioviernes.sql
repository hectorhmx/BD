SELECT curso.clave_grupo,curso.cupo_maximo,horario.dia_semana,horario.hora_inicio,horario.hora_fin,profesor.nombre
FROM asignatura
INNER JOIN curso ON asignatura.asignatura_id=curso.asignatura_id
INNER JOIN profesor ON curso.profesor_id = profesor.profesor_id
INNER JOIN curso_horario ON curso.curso_id= curso_horario.curso_id
INNER JOIN horario ON curso_horario.horario_id=horario.horario_id
INNER JOIN SEMESTRE ON curso.Semestre_id = semestre.Semestre_id
Where asignatura.nombre =  'CALCULO 2' and SEMESTRE.ANIO=2018;




    (INNER) JOIN: Returns records that have matching values in both tables
    LEFT (OUTER) JOIN: Return all record
