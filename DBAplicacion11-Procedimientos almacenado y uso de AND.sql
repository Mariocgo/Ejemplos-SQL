--Procedimientos almacenado y uso de AND
CREATE PROCEDURE Antiguedad_Empleado @NroLeg int, @Fecha_Ing datetime,
@Antiguedad int OUTPUT AS
DECLARE @ANIO_Actual int
DECLARE @ANIO_Ingreso int

SET @ANIO_Actual=YEAR(GETDATE())

SELECT @ANIO_Ingreso=YEAR(fecha_ingreso)
	FROM EMPLEADOS
	WHERE Legajo=@NroLeg AND Fecha_Ingreso=@Fecha_Ing

SET  @Antiguedad = @ANIO_Actual-@ANIO_Ingreso