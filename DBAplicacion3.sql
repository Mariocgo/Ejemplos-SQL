USE SUELDOS
CREATE TABLE EMPLEADOS (
	Legajo int Not null,
	Apellido varchar (20) not null,
	Nombre varchar (30) not null,
	Direccion varchar(50) not null,
	Tarea varchar(50)not null,
	Cod_Categoria char (2) not null,
	Fecha_Ingreso datetime not null,
	Foto varchar (50) null,
	Email varchar (50) null,
	HomePage varchar (50) null,
	Sueldo_Basico money not null,
	CONSTRAINT PK_EMPLEADO PRIMARY KEY CLUSTERED(
		Legajo
	) on [PRIMARY],
	CONSTRAINT FK_EMPELADOS_CATEGORIAS FOREIGN KEY
	(
		Cod_Categoria
	) REFERENCES CATEGORIAS(
		Cod_Categoria
	)
) ON [PRIMARY]