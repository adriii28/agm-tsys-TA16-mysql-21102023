-- EJERCICIO 2

-- Ej 2.1 
SELECT apellidos as Apellidos FROM empleados;

-- Ej 2.2 
SELECT DISTINCT apellidos FROM empleados; 

-- Ej 2.3
SELECT * FROM empleados
WHERE apellidos = 'Smith'; 

-- Ej 2.4
SELECT * FROM empleados
WHERE apellidos IN ('Smith', 'Rogers'); 

-- Ej 2.5
SELECT * FROM empleados
WHERE departamento = 14;

-- Ej 2.6
SELECT * FROM empleados
WHERE departamento IN (37,77);

-- Ej 2.7 
SELECT * FROM empleados
WHERE apellidos  LIKE 'P%' ; 

-- Ej 2.8 
SELECT sum(presupuesto) 
FROM departamentos;

-- Ej 2.9
SELECT departamento as Departamento ,count(dni) as NumEmpleados 
FROM empleados
GROUP BY departamento;

-- Ej 2.10
SELECT empleados.DNI, empleados.NOMBRE, empleados.APELLIDOS, departamentos.CODIGO, departamentos.NOMBRE, departamentos.PRESUPUESTO
FROM empleados 
JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO;

-- Ej 2.11
SELECT empleados.NOMBRE, empleados.APELLIDOS, departamentos.NOMBRE as DEPARTAMENTO, departamentos.PRESUPUESTO
FROM empleados 
JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO;

-- Ej 2.12
SELECT empleados.NOMBRE, empleados.APELLIDOS
FROM empleados 
JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO
WHERE departamentos.PRESUPUESTO > 60000;

-- Ej 2.13
SELECT * FROM departamentos
WHERE presupuesto > (SELECT avg(PRESUPUESTO) FROM departamentos);

-- Ej 2.14
SELECT departamentos.NOMBRE FROM departamentos
JOIN empleados ON empleados.DEPARTAMENTO = departamentos.CODIGO
GROUP BY empleados.DEPARTAMENTO
HAVING count(empleados.dni) > 2;

-- Ej 2.15
INSERT INTO departamentos (codigo, nombre, presupuesto) VALUES (11,'Calidad',40000);
INSERT INTO empleados (dni, nombre, apellidos, departamento) VALUES (89267109,'Esther','Vazquez',11);

-- Ej 2.16
UPDATE departamentos SET presupuesto = presupuesto * 0.9;

-- Ej 2.17
UPDATE empleados SET departamento = 14 
WHERE departamento = 77;

-- Ej 2.18 
DELETE FROM empleados 
WHERE departamento = 14;

-- Ej 2.19
DELETE FROM empleados
WHERE departamento = 
(SELECT codigo FROM departamentos 
WHERE presupuesto > 60000);

-- Ej 2.20
DELETE FROM empleados;



