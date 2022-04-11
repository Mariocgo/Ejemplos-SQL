CREATE TRIGGER AVISAR
ON EMPLEADOS
FOR INSERT,UPDATE,DELETE
AS
	EXEC master..xp_sendmail 'Mario',
	'Estan modificando la tabla empleados'