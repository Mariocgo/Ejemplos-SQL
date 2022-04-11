/*DESHACER transacciones de manera explicita*/
BEGIN TRANSACTION 
DECLARE @a_girar_ int
DECLARE @ERR_Op1 int 
DECLARE @ERR_Op2 int
SET @a_girar=300
	UPDATE Cuenta_Corriente
		SET importe=@a_girar,
		importe_total=importe_total-importe
		operacion='Extrraccion'
	WHERE nrocliente=12345
	SELECT @Err_Op1 = @@Error /*Contiene el codigo de error de realizar la operacion update*/
	UPDATE Caja_ahorro
		SET importe=@a_girar,importe_total=importe_total+importe,
		operacion='DEPOSITO'
	WHERE nrocliente=12345
	SELECT @ERR_Op2=@@ERROR/*Contiene el codigo de error de realizar la operacion update*/
	IF @ERR_Op1 = 0 and @ERR_Op2 = 0
	BEGIN
		/*No hubo ningún error en las operacines de update, por lo tanto se confima la transacción*/
		COMMIT TRANSACTION
	END
	ELSE
	BEGIN
		IF @ERR_Op1 <> 0
		BEGIN
			ROLLBACK TRANSACTION /*Anulo la transacción pues fallo la primera intrucción de update*/
		END
		IF @ERR_Op2 <> 0
		BEGIN
			ROLLBACK TRANSACTION /*Anulo la transacción pues fallo la primera intrucción de update*/
		END
	END
		
	

	