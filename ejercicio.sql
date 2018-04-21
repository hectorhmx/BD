CREATE TABLE Doctor(
    ID_DOCTOR NUMBER(4) PRIMARY KEY NOT NULL
);

ALTER TABLE Doctor ADD Nombre VARCHAR2(30);
ALTER TABLE Doctor ADD Edad VARCHAR2(2);

INSERT INTO Doctor (ID_DOCTOR,Nombre,Edad) VALUES(1,'HECTOR','34');
--Insertar datos explicitos funcionan cuando se llenan todos los campos

INSERT INTO Doctor VALUES(2,'CRISTINA','56');
INSERT INTO Doctor VALUES(3,'Jordy','90');

ALTER TABLE Doctor DROP Edad;
ALTER TABLE Doctor ADD CONSTRAINT ck_EDAD CHECK(EDAD>=0);
-- NO FUNCIONO EL DROP

-- NUEVO EJERCICIO
CREATE TABLE Paciente(
    id_paciente NUMBER(10),
    Nombre VARCHAR2(30),
    molestar VARCHAR2(40),
    altura NUMBER(3,2),
    peso NUMBER(2),
    id_dactar NUMBER(4),
    -- añadir CONSTRAINT TABLE
    CONSTRAINT p_id_paciente_pk PRIMARY KEY (id_paciente)
);

--Anadir llave foranea
ALTER TABLE Paciente ADD
CONSTRAINT id_dactar_fk
FOREIGN Key (id_dactar)
REFERENCES Doctor(ID_DOCTOR);


--EJERCICO 2
/*
CREATE SEQUENCE secuencia --Sirven para que cada vez que creemos algo aumente
INCREMENT BY n  --Cuanto va a ir incrementando
START WITH n --Valor de inicio
MAXVALUE n | NOMAXVALUE--Maximo valor
MINVALUE n |NOMINVALUE--Minimo valor
CYCLE  | NOCYCLE  --Que hará cuando llegue al limite, reinicia o se detiene
CACHE  | NOCACHE; --Se guarda o no el valor en memoria
);
*/

CREATE SEQUENCE secuencia
INCREMENT BY 2
START WITH 5
MAXVALUE 17
MINVALUE 3
CYCLE
CACHE;

INSERT INTO Doctor VALUES(secuancia.NEXTVAL,'Nombre1','30');
INSERT INTO Doctor VALUES(secuancia.NEXTVAL,'Nombre2','10');
INSERT INTO Doctor VALUES(secuancia.NEXTVAL,'Nombre3','43');
INSERT INTO Doctor VALUES(secuancia.NEXTVAL,'Nombre4','57');
INSERT INTO Doctor VALUES(secuancia.NEXTVAL,'Nombre5','23');
