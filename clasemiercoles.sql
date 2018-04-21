select dia_semana,hora_inicio,horafin FROM horario where dia_semana =1 or dia_semana=3;
--Imprimir un atributo en forma de castear ,
SELECT to_char(columna,'formato') ya que se mostraba como tipohora
--'o SELECT to_char (columna, 'formato')'

select dia_semana,
to_car(hora_inicio)
-- columnas virtuales, es como un  alias, ya que no muestra todo.
select dia_semana,
to_char(hora_inicio,'hh:mi:ss') as hora_inicio,
to_char(hora_fin,'hh:mi:ss') as hora_fin --alias es hora_fin
from horario
where dia_semana=1 or dia_semana=3;


--
SELECT apellido_paterno
from profesor;
--función de agrgación ej: orderby
Select apellido_paterno
from profesor
order by apellido_paterno
-- order by <ASC/DESC>
--order by id asc;
-- ej:
Select apellido_paterno, apellido_materno
from profesor
order by apellido_parterno,apellido_materno;
-- si encuentra dos apellidos paternos iguales, los ordenará por su apellido_materno

-- disctinct  omite llos repetidos,
-- unique disctinción entre datos repetidos
-- uniq

Select disctinct apellido_paterno
from profesor
order by apellido_parterno;

SELECT (sysdate-fecha_nacimiento)/365 as 'EDAD'
FROM profesor
where nombre='Felipe'
and apellido_paterno='Lima'
and apellido_materno='Rodriguez';

SELECT (to_char(SYSDATE,'dd" de "mm" de "yyyy')) AS "Hoy es:" from dual;
