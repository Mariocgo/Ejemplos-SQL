--Procedimientos almacenados con parametros y con "exists"
CREATE PROCEDURE Existe_Empelado @NroLeg int, @existe char(2) OUTPUT AS
IF EXISTS(SELECT *
		FROM EMPLEADOS
		WHERE Legajo=@NroLeg)
BEGIN
	SET @existe = 'Si'
END
ELSE
BEGIN
	SET @existe = 'No'
END

--Procedimientos almacenados con parametros y con "exists"V2
CREATE PROCEDURE Existe_EmpeladoV2 @NroLeg int, @existe char(2) OUTPUT AS

SET @existe = 'No'
IF EXISTS(SELECT *
		FROM EMPLEADOS
		WHERE Legajo=@NroLeg)
BEGIN
	SET @existe = 'Si'	
END
--procedimiento almacenado, para saber si un empelado pertenece a una categoria
CREATE PROCEDURE Pertenece_Categoria @NroLeg int, @Cod_Cat char(2),
@Pertenece char(2) OUTPUT AS

SET @Pertenece = 'No'
IF EXISTS(SELECT *
		FROM EMPLEADOS
		WHERE Legajo=@NroLeg AND Cod_Categoria=@Cod_Cat)
BEGIN
	SET @Pertenece = 'Si'	
END