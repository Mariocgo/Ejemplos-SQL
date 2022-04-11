--Crear Procedimiento almacenado
CREATE PROCEDURE nombre_del_procedimiento; numero
	[{@nombre_parametri,tipo_de_dato_parametro}]
	[=valor_predeterminado_del_parametro][OUTPUT]
AS
	INSTRUCCIONES TSQL incluidas en el cuerpo del procedimiento

--Procedimiento para mostrar datos
CREATE PROCEDURE Ver_Empleados AS

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
EMPLEADOS.Cod_Categoria=CATEGORIAS.Cod_Categoria
--Procedimiento para mostrar datos de un empleado, con datos de entrada
CREATE PROCEDURE Ver_Empleados_X_Categoria  @Cod_Cat char(2) AS

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
EMPLEADOS.Cod_Categoria=CATEGORIAS.Cod_Categoria
WHERE EMPLEADOS.Cod_Categoria = @Cod_Cat
--Procedimiento para mostrar datos de un empleado, con datos de entrada e IF ELSE
CREATE PROCEDURE Ver_Empleados_X_Categoriav2  @Cod_Cat char(2) AS

IF @Cod_Cat is null
BEGIN
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
EMPLEADOS.Cod_Categoria=CATEGORIAS.Cod_Categoria
END
ELSE
BEGIN
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
	EMPLEADOS.Cod_Categoria=CATEGORIAS.Cod_Categoria
	WHERE EMPLEADOS.Cod_Categoria = @Cod_Cat
END
--Procedimiento para mostrar datos de un empleado, con datos de entrada e IF ELSE,con valor por defecto	
CREATE PROCEDURE Ver_Empleados_X_Categoriav3  @Cod_Cat char(2)='TT' AS

IF @Cod_Cat ='TT' /*Si no se le  asigna ningun valor al parametro de entrada @cod_cat como le asignamos
el valor por defecto 'TT' nos mostrata la nomi de todos los empelados*/
BEGIN
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
EMPLEADOS.Cod_Categoria=CATEGORIAS.Cod_Categoria
END
ELSE
BEGIN
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
	EMPLEADOS.Cod_Categoria=CATEGORIAS.Cod_Categoria
	WHERE EMPLEADOS.Cod_Categoria = @Cod_Cat
END

