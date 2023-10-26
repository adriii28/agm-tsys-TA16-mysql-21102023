-- EJERCICIO 4

-- Ej 4.1
SELECT nombre FROM peliculas;

-- Ej 4.2
SELECT calificacionedad 
FROM peliculas;

-- Ej 4.3
SELECT * FROM peliculas
WHERE calificacionedad IS NULL;

-- Ej 4.4
SELECT codigo, nombre 
FROM salas
WHERE pelicula IS NULL;

-- Ej 4.5
SELECT salas.CODIGO, salas.NOMBRE, salas.PELICULA, peliculas.NOMBRE, peliculas.CALIFICACIONEDAD 
FROM salas
JOIN peliculas ON peliculas.CODIGO = salas.PELICULA;

-- Ej 4.6
SELECT * FROM salas
JOIN peliculas ON peliculas.CODIGO = salas.PELICULA;

-- Ej 4.7
SELECT peliculas.NOMBRE 
FROM peliculas
LEFT JOIN salas ON salas.PELICULA = peliculas.CODIGO
WHERE salas.CODIGO IS NULL;

-- Ej 4.8
INSERT INTO peliculas (codigo, nombre, calificacionedad)VALUES(10,'Uno, Dos, Tres', 7);

-- Ej 4.9
UPDATE peliculas SET calificacionedad = 13
WHERE calificacionedad IS NULL;

-- Ej 4.10
DELETE FROM salas
WHERE pelicula IN (SELECT codigo FROM peliculas WHERE calificacionedad = "G")