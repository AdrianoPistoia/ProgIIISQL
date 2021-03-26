CREATE DATABASE universidad;
GO
use universidad;
GO
CREATE TABLE Carreras(
 ID			varchar(4)		not null	primary key,
 Nombre		varchar(40)		not null,
 FCreacion	date			not null	check(FCreacion<getdate()),
 Mail		nvarchar(40)	not null,
 Nivel		varchar(11)		not null	check(Nivel = 'Diplomatura' or Nivel = 'Posgrado' or Nivel = 'Grado' or Nivel = 'Pregrado')
)
GO
CREATE TABLE Materias(
ID			int				not null	primary key identity(1,1),
IDCarrera	varchar(4)		not null	foreign key references Carreras(ID),
Nombre		varchar(30)		not null,
CHoraria	int				not null	check(CHoraria>0)
)
GO
create table Alumnos(
Legajo		int			not null	primary key identity(1000,1),
IDCarreras	varchar(4)	not null	foreign key references Carreras(ID),
Nombres		varchar(20) not null,
Apellidos	varchar(20) not null,
Fecha		date		not null	check(Fecha < getdate()),
Mail		varchar(40)	not null	unique,
Telef		varchar(20)	
)