-- EJERCICIO 3

-- Ej 3.1
SELECT * FROM almacenes;

-- Ej 3.2
SELECT * FROM cajas
WHERE valor > 150;

-- Ej 3.3
SELECT contenido 
FROM cajas;

-- Ej 3.4
SELECT avg(valor) as ValorMedio 
FROM cajas;

-- Ej 3.5
SELECT avg(valor)
FROM cajas
JOIN almacenes ON almacenes.CODIGO = cajas.ALMACEN;

-- Ej 3.6
SELECT almacenes.CODIGO as CodigoAlmacen
FROM cajas
JOIN almacenes ON almacenes.CODIGO = cajas.ALMACEN
GROUP BY almacenes.CODIGO
HAVING avg(cajas.VALOR) > 150;

-- Ej 3.7 
SELECT cajas.NUMREFERENCIA, almacenes.LUGAR
FROM cajas
JOIN almacenes ON almacenes.CODIGO = cajas.ALMACEN;

-- Ej 3.8 
SELECT almacen, count(numreferencia) as NumCajas 
FROM cajas
GROUP BY almacen;

-- Ej 3.9 
SELECT codigo as CodigoAlmacenSaturado
FROM almacenes
WHERE capacidad < (SELECT count(numreferencia) FROM cajas WHERE almacen = codigo);

-- Ej 3.10
SELECT numreferencia 
FROM cajas
JOIN almacenes ON almacenes.CODIGO = cajas.ALMACEN
WHERE almacenes.LUGAR = 'Bilbao';

-- Ej 3.11
INSERT INTO almacenes(codigo, lugar, capacidad) VALUES(6,'Barcelona', 3);

-- Ej 3.12
INSERT INTO cajas (numreferencia, contenido, valor, almacen) VALUES('H5RT', 'Papel', 200, 2);

-- Ej 3.13
UPDATE cajas SET valor = valor * 0.85;

-- Ej 3.14 ------------------- REVISAR -----------------------
UPDATE cajas SET valor = valor * 0.8
WHERE valor > (SELECT avg(valor));

-- Ej 3.15
DELETE FROM cajas
 WHERE valor < 100;

-- Ej 3.16 ------------------ HACER -----------------








