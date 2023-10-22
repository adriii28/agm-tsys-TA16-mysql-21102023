-- EJERCICIO 1

-- Ej 1.1
SELECT nombre FROM articulos;

-- Ej 1.2
SELECT nombre, precio FROM articulos;

-- Ej 1.3
SELECT nombre, precio FROM articulos WHERE precio<=200;

-- Ej 1.4
SELECT nombre, precio FROM articulos 
WHERE precio BETWEEN 60 AND 121;

-- Ej 1.5
SELECT nombre as Nombre, precio * 166.386  as Pesetas FROM articulos;

-- Ej 1.6
SELECT avg(precio) as PrecioMedio FROM articulos;

-- Ej 1.7
SELECT avg(precio) as PrecioMedio FROM articulos 
WHERE fabricante = 2;

-- Ej 1.8
SELECT count(codigo) FROM articulos 
WHERE precio>=180 ;

-- Ej 1.9
SELECT nombre, precio FROM articulos 
WHERE precio>=180 ORDER BY precio desc;

SELECT nombre, precio FROM articulos 
WHERE precio>=180 ORDER BY nombre asc;

-- Ej 1.10
SELECT articulos.codigo as IdArticulo, articulos.nombre as Nombre, articulos.precio as Precio, articulos.fabricante as IdFabricante,fabricantes.nombre as Fabricante
FROM articulos
JOIN fabricantes ON articulos.codigo = fabricantes.codigo;

-- Ej 1.11
SELECT  articulos.nombre as Nombre, articulos.precio as Precio,fabricantes.nombre as Fabricante
FROM articulos
JOIN fabricantes ON articulos.codigo = fabricantes.codigo;

-- Ej 1.12
SELECT fabricante as CodigoFabricante, avg(precio) as PrecioMedio 
FROM articulos 
GROUP BY fabricante;

-- Ej 1.13
SELECT fabricantes.nombre as NombreFabricante, avg(articulos.precio) as PrecioMedio 
FROM articulos 
JOIN fabricantes ON fabricantes.CODIGO = articulos.FABRICANTE 
GROUP BY fabricante;

-- Ej 1.14
SELECT fabricantes.nombre as NombreFabricante, avg(articulos.precio) as PrecioMedio 
FROM articulos 
JOIN fabricantes ON fabricantes.CODIGO = articulos.FABRICANTE 
GROUP BY fabricante 
HAVING AVG(articulos.precio) >= 150;

-- Ej 1.15
SELECT nombre as Nombre, precio as Precio 
FROM articulos
WHERE precio = (SELECT min(precio) FROM articulos);

-- Ej 1.16
SELECT articulos.NOMBRE, articulos.PRECIO, fabricantes.NOMBRE
FROM articulos
JOIN fabricantes ON fabricantes.CODIGO = articulos.FABRICANTE
WHERE articulos.PRECIO = (
	SELECT max(precio) FROM articulos
	WHERE fabricante = fabricantes.CODIGO);

-- Ej 1.17
INSERT INTO articulos (codigo, nombre, precio, fabricante) VALUES (11,'Altavoces',70,2);

-- Ej 1.18
UPDATE articulos SET nombre = 'Impresora Laser' WHERE codigo = 8;

-- Ej 1.19
UPDATE articulos SET precio = precio * 0.9;

-- Ej 1.20
UPDATE articulos SET precio = precio - 10 
WHERE precio >= 120;
