BEGIN TRANSACTION /*Se puede abreviar por la palabra TRAN ademas la transaccion puede
poseer una etiqueta o nombre en tal caso habría que escribir el mismo en la instruccion 
begin tran plata_a_girar
y en la instruccion commit tran plata_agirar
*/
DECLARE a_girar int /*Variable interna*/
	SRT a_girar=300
	UPDATE Cuenta_Corriente
		SET importe=a_girar,
		importe_total=importe_total-import,
		operacion='EXTRACCION'
	WHERE nrocliente=12345
	UPDATE Caja_ahorro
		SET importe=a_girar,importe_total=importe_total+importe,
		operacion='Deposito'
	WHERE nrocliente=12345
COMMIT TRANSACTION
