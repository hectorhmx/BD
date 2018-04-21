CREATE TABLE Pensionada(
  Pensionada_ID NUMERIC(10,0) PRIMARY KEY NOT NULL,
  Nombre VARCHAR(40) NOT NULL
);

CREATE TABLE Pensionada_Empleado(
  Porcentaje NUMERIC(5,2) NOT NULL,
  Pensionada_ID NUMERIC(10,0) NOT NULL PRIMARY KEY,
  Empleado_ID NUMERIC(10,0) NOT NULL PRIMARY KEY
);
ALTER TABLE Pensionada_Empleado ADD
CONSTRAINT Pensionada_ID_fk
FOREIGN Key (Pensionada_ID),
CONSTRAINT REFERENCES Pensionada(Pensionada_ID);

ALTER TABLE Pensionada_Empleado ADD
CONSTRAINT Empleado_ID_fk
FOREIGN Key (Empleado_ID)
REFERENCES Empleado(Empleado_ID);
