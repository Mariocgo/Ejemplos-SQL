USE master
GO
CREATE DATABASE SUELDOS
ON
( NAME = SUELDOS_dat,
FILENAME= 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\sueldosdat.mdf',
	SIZE = 10,
	MAXSIZE =50,
	FILEGROWTH = 5)
LOG ON
(NAME = 'Sueldos_log',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\sueldoslog.ldf',
	size = 5MB,
	MAXSIZE=25MB,
	FILEGROWTH = 5MB)
GO
