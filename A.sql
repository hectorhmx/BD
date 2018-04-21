CREATE TABLE A(fecha_calculo DATE NOT NULL,
sueldo_mensual numeric(10,2) NOT NULL,
sueldo_quincenal numeric(1,2) NOT NUL
iva (sueldo_quincenal*.06) VIRTUAL NOT NULL
);

INSERT INTO A(fecha_calculo,sueldo_mensual,sueldo_quincenal)
VALUES (TO_DATE('12/03/2017 12:00:00','dd/mm/yyyy hh24:mi:ss'),2.00,1.00);
--se almacenaron los datos, y se calcula el sueldo quincenal de forma virtual.
