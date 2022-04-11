--Crear vista usando COUNT(*)
CREATE VIEW Cant_Empleados_X_Categoria AS
SELECT Cod_categoria, count(*)AS Cantidad_Empleados
FROM EMPLEADOS
GROUP BY Cod_Categoria

--Crear vista usando COUNT(*) e INNER JOIN
CREATE VIEW Cant_Empleados_X_Categoria_v2 AS
SELECT Desc_Categoria AS Categoria,count(*) AS Cantidad_Empleados
FROM EMPLEADOS INNER JOIN CATEGORIAS ON
EMPLEADOS.Cod_Categoria=CATEGORIAS.Cod_Categoria
GROUP BY Desc_Categoria
