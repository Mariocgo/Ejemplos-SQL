CREATE VIEW Empleados_Sin_Sueldo AS

SELECT Legajo,
	Apellido,
	Nombre,
	Direccion,
	Tarea,
	Cod_categoria,
	Fecha_ingreso,
	Foto,
	Email,
	Homepage
From Empleados

--Crear vista que filtra las filas por un determinado criterio

CREATE VIEW Empleados_Sin_Antiguedad AS
SELECT * 
FROM EMPLEADOS
WHERE FECHA_INGRESO >= '01/01/2004'

--Crear una vista con una fila de la otra tabla y cambiarle el nombre de una columna
CREATE VIEW Empleados_con_Categoria AS
SELECT Legajo,
	Apellido,
	Nombre,
	Direccion,
	Tarea,
	Desc_Categoria AS Categoria,
	Fecha_Ingreso,
	Foto,
	Email,
	HomePage
From Empleados, Categorias
WHERE EMPLEADOS.cod_categoria=Categorias.cod.categoria
--Crear una vista y cambiarle el nombre de una columna CON INNER JOIN
CREATE VIEW Empleados_con_Categoria_V2 AS
SELECT Legajo,
	Apellido,
	Nombre,
	Direccion,
	Tarea,
	Desc_Categoria AS Categoria,
	Fecha_Ingreso,
	Foto,
	Email,
	HomePage
From Empleados INNER JOIN CATEGORIAS ON
EMPLEADOS.cod_categoria=Categorias.cod.categoria