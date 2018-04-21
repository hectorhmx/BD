select nombre,rfc,fecha_nacimiento
from profesor
where fecha_nacimiento>=(to_date('1950','yyyy'))
intersect
select nombre,rfc,fecha_nacimiento
from profesor
where fecha_nacimiento<=(to_date('1955','yyyy'))
union
select nombre,rfc,fecha_nacimiento
from profesor where fecha_nacimiento>= (to_date('1960','yyyy'))
intersect
select nombre, rfc,fecha_nacimiento
from profesor
where fecha_nacimiento<=(to_date('1965','yyyy'));




condiciones fecha_nacimiento>1970, nombre = juan, luisa o lenin, apellido paterno debe iniciar con la letra R


select *
from profesor
where fecha_nacimiento>to_date('1970','YYYY')
intersect
select *
from profesor where nombre IN ('LUISA','LENIN','JUAN')
intersect
select *
from profesor
where apellido_paterno LIKE 'R%';


where nombre IN ('LUISA','LENIN','JUAN')

--DOS FORMAS DE HACER LO MISMO
select *
from curso
where cupo_maximo=30
intersect
select * from curso
where clave_grupo !='001'

select *
from curso
where cupo_maximo = 30
minus
select*from curso
where clave_grupo ='001'
