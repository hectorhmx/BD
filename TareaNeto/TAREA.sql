--INNER JOIN
--1
SELECT curso.clave_grupo,curso.cupo_maximo,horario.dia_semana,horario.hora_inicio,horario.hora_fin,profesor.nombre
FROM asignatura
INNER JOIN curso ON asignatura.asignatura_id=curso.asignatura_id
INNER JOIN profesor ON curso.profesor_id = profesor.profesor_id
INNER JOIN curso_horario ON curso.curso_id= curso_horario.curso_id
INNER JOIN horario ON curso_horario.horario_id=horario.horario_id
INNER JOIN SEMESTRE ON curso.Semestre_id = semestre.Semestre_id
Where asignatura.nombre =  'CALCULO 2' and SEMESTRE.ANO = 2008 and SEMESTRE.Periodo = 1;
--2
SELECT curso.id,curso.clave_grupo
FROM  Estudiante_Inscrito
INNER JOIN curso ON Estudiante_Inscrito.curso_id=curso.curso_id
WHERE Estudiante_Inscrito.calificación = NULL;
--NATURAL JOIN
--1
SELECT curso.Profesor_id,Profesor.nombre,profesor.apellido_paterno,
profesor.apellido_materno,profesor.rfc,profesor.Fecha_Nacimiento,
curso.curso_id,curso.cupo_maximo,curso.asignatura,curso.semestre,curso.clave_grupo
FROM CURSO
NATURAL JOIN profesor:
--2.1
SELECT prefesor.profesor_id,profesor.nombre,profesor.apellido_paterno,profesor.apellido_materno,eurso.clave_grupo,
FROM Semestre_id
NATURAL JOIN curso
NATURAL JOIN PROFESOR
NATURAL JOIN asignatura
WHERE asignatura.nombre = 'BASES DE DATOS' and Semestre.ID = 1;

--2.2
SELECT PROFESOR.nombre,curso.clave_grupo FROM PROFESOR,CURSO
WHERE EXISTS(SELECT * FROM PROFESOR,CURSO,SEMESTRE,asignatura WHERE SEMESTRE.Semestre_id=1 and asignatura.nombre = 'BASES DE DATOS');

--OUTER JOIN
--a)
SELECT Estudiante.nombre,Estudiante_Examen.Asignatura
FROM Estudiante LEFT JOIN PLAN_ESTUDIOS
ON Estudiante.PLAN_ESTUDIOS_ID=PLAN_Estudios.PLAN_ESTUDIOS_ID
LEFT JOIN Estudiante_Examen
ON Estudiante.Estudiante_ID=Estudiante_Examen.Estudiante_ID;
WHERE PLAN_Estudios.PLAN_ESTUDIOS_ID=2;

--b)
--b.1
SELECT Profesor.nombre,profesor.apellido_paterno,profesor.apellido_materno,semestre.Semestre_id,
Curso.clave_grupo,Curso.asignatura_id,Curso.Semestre_id
FROM PROFESOR LEFT JOIN Curso
ON Profesor.profesor_id = Curso.profesor_id;
--b.2
SELECT Profesor.nombre,profesor.apellido_paterno,profesor.apellido_materno
FROM PROFESORES
INTERSECT
SELECT Curso.clave_grupo,Curso.asignatura_id,Curso.Semestre_id,Curso.Semestre_id,
FROM CURSO;

---Self JOIN
SELECT a.nombre,a.creditos,a.plan_estudios_id
FROM Asignatura a, Asignatura b
   where a.creditos = 8 and b.creditos = 8;

--Cross JOIN
Select * FROM plan_estudios, horario;

Select * FROM plan_estudios
CROSS JOIN horario;


--Subconsultas een cláusula SELECT
--1

SELECT NOMBRE,apellido_paterno,apellido_materno,
(sysdate-fecha_nacimiento)/365 as 'EDAD',
(SELECT (sysdate-AVG(fecha_nacimiento))/365 as 'EDAD PROMEDIO'FROM Estudiante)
FROM Estudiante;


--Subconsultas Where
 SELECT profesor.nombre,profesor.apellido_materno,profesor.apellido_paterno,
 profesor.fecha_nacimiento,curso.clave_grupo
 FROM PROFESOR
 JOIN ON PROFESOR.Profesor_id = Curso.Profesor_id
 JOIN ON  curso.asignatura_id=Asignatura.asignatura_id
 WHERE  profesor.fecha_nacimiento=(SELECT MIN(fecha_nacimiento) FROM PROFESORES);


--Subconsulta FROM
i)
SELECT (Select * FROM asignatura),a.curso_id, FROM (Select * FROM Curso,Estudiante_Inscrito,) as a
where Curso.Semestre_id = 1 and Estudiante_Inscrito.curso_id>3;

ii)
SELECT asignatura.asignatura_id,asignatura.NOMBRE,asignatura.creditos,
asignatura.asignatura_requerida_id,asignatura.plan_estudios, curso.curso_id
FROM asignatura_id
JOIN curso ON asignatura.asignatura_id=curso.asignatura_id
JOIN Estudiante_Inscrito ON Curso.curso_id = Estudiante_Inscrito.curso_id
WHERE curs.semestre_id = 1 and Estudiante_Inscrito.curso_id>3;
