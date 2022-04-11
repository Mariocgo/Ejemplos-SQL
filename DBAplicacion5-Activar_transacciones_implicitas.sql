--Activar Transacciones implicitas
SET IMPLICIT_TRANSACTION ON
--Desactivar Transacciones implicitas
SET IMPLICIT_TRANSACTION ON
/*DESHACER todas las transacciones apartir de la intruccion que provoco el error en tiempo se ejecución
se usar XACT_ABORT*/
/*Por defecto el motor trae la opción XACT_ABORT en OFF*/
SET XACT_ABORT OFF