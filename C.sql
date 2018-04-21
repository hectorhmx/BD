CREATE TABLE puesto(
  CONSTRAINT puesto numeric(2,0) PRIMARY KEY CHECK(puesto in ('a','b','c')),
  nivel CHAR(1) NOT NULL,
  CONSTRAINT clave VARCHAR(3) NOT NULL UNIQUE,
  sueldo NUMERIC(8,2) NOT NULL,
)

CREATE TABLE puesto(
   puesto numeric(2,0),
  nivel CHAR(1) NOT NULL,
  clave VARCHAR(3) NOT NULL,
  sueldo NUMERIC(8,2) NOT NULL,
  CONSTRAINT UNIQUE
)
