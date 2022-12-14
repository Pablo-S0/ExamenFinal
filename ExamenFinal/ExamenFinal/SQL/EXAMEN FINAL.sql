create database  VEHICULOS 
use  VEHICULOS 

Create table Usuarios
(
IdUsuario int identity (1,1),
Usuario varchar(50) unique,
Clave varchar(30),
Nombre varchar(50),
Apellido varchar(50)
Constraint PK_IdUsuario primary key (IdUsuario)
)


create table Placa
(
IdPlaca int identity (1,1),
NumPlaca Varchar(6) unique,
IdUsuario int,
Monto money default 0
Constraint PK_IdPlaca primary key (IdPlaca),
Constraint FK_IdUsuario Foreign key (IdUsuario) references Usuarios (IdUsuario)
)

--------------------------------------------
--------------------------------------------


create procedure AgregarUsuarios
@Usuario Varchar (50),
@Clave varchar(30),
@Nombre varchar(50),
@Apellido varchar(50)
as
begin
insert into Usuarios (Usuario,Clave,Nombre,Apellido) values (@Usuario,@Clave,@Nombre,@Apellido)
end

create procedure ModificarUsuarios
@Usuario Varchar (50),
@Clave varchar(30),
@Nombre varchar(50),
@Apellido varchar(50)
as
begin
Update Usuarios set Clave = @Clave, Nombre = @Nombre, Apellido = @Apellido where Usuario = @Usuario
end

create procedure BorrarUsuarios
@Usuario Varchar (50)
as
begin
 Delete Usuarios where Usuario = @Usuario
end
exec BorrarUsuarios 
---------------------------------------------------
---------------------------------------------------

create procedure AgregarPlaca
@NumPLaca Varchar(6),
@idUsuario int,
@monto money = 0
as
begin
insert into Placa (NumPlaca,IdUsuario,Monto) values (@NumPLaca, @idUsuario,@monto)
end
       
create procedure ModificarPlaca

@NumPLaca Varchar(6),
@idUsuario int,
@monto money = 0,
@IdPlaca int
as
begin
Update Placa Set NumPlaca = @NumPLaca, IdUsuario = @idUsuario, Monto=@monto where IdPlaca = @IdPlaca
end
       
create procedure BorrarUsPlaca
@NumPLaca Varchar(6)
as
begin
Delete Placa where NumPlaca = @NumPLaca
end

exec BorrarUsPlaca 1

Create Procedure ReporteGeneral
@NumPLaca Varchar(6)
as
begin
select U.Nombre, U.Apellido,P.NumPlaca, P.Monto, P.Monto *0.13 as IVA, p.Monto*1.13 as total
from Usuarios u, Placa p where p.NumPlaca = @NumPLaca 
end

Exec ReporteGeneral 's'
	exec AgregarUsuarios 'Pablo',123,Pablo,Sanchez
