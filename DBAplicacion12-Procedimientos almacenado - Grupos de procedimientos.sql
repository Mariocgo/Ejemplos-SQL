--PROCEDIMIENTOS ALMACENADOS - GRUPOS DE PROCEDIMIENTOS
CREATE PROCEDURE Ver_Empelados_X_ORDEN;1 AS

SELECT Legajo,
	Apellido,
	Nombre,
	Direccion,
	Tarea,
	Desc_categoria,
	Foto,
	Email,
	HomePage,
	Sueldo_Basico
FROM EMPLEADOS INNER JOIN CATEGORIAS ON
EMPLEADOS.Cod_Categoria = CATEGORIAS.Cod_Categoria
ORDER BY Legajo

CREATE PROCEDURE Ver_Empelados_X_ORDEN;2 AS

SELECT Legajo,
	Apellido,
	Nombre,
	Direccion,
	Tarea,
	Desc_categoria,
	Foto,
	Email,
	HomePage,
	Sueldo_Basico
FROM EMPLEADOS INNER JOIN CATEGORIAS ON
EMPLEADOS.Cod_Categoria = CATEGORIAS.Cod_Categoria
ORDER BY Apellido,Nombre

CREATE PROCEDURE Ver_Empelados_X_ORDEN;3 AS

SELECT Legajo,
	Apellido,
	Nombre,
	Direccion,
	Tarea,
	Desc_categoria,
	Foto,
	Email,
	HomePage,
	Sueldo_Basico
FROM EMPLEADOS INNER JOIN CATEGORIAS ON
EMPLEADOS.Cod_Categoria = CATEGORIAS.Cod_Categoria
ORDER BY Desc_Categoria