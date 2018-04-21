-- Inicializar la variable de ambiente NLS_LANG
-- antes de ejecutar este script para que los
-- caracteres como ñ, acentos se vean bien
-- ejecutar: export NLS_LANG=American_America.UTF8

Prompt Ejercicios Tema 9

connect sys/system as sysdba

Prompt Creando un nuevo usuario Tema 9
Prompt Proporcione usuario y password

create user &&usuario identified by &&password quota unlimited on users;    
grant create session, create table, create sequence to &usuario;

connect &usuario/&password

Prompt Creando objetos
@tema9-ddl.sql

Prompt Carga de datos
@AMtema9-carga.sql

Prompt Listo
