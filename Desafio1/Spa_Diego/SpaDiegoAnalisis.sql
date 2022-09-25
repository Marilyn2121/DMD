create database Spa_Diego;
use [Spa_Diego]

create table TotalClientes(
id nvarchar(50),
sexo nvarchar(50),
ingresos float,
PromVisit float,
edad int,
Sauna int,
Masaje int,
Hidro int,
Yoga int
)

select * from [dbo].[TotalClientes]

-- Clientes que visitan nuestras 4 areas
select id,edad,ingresos from [dbo].[TotalClientes] where Sauna = 1;

-- Clientes que visitan solo nuestros saunas
select id,edad,ingresos from [dbo].[TotalClientes] where Sauna = 1 and Masaje =0 and Hidro = 0 and Yoga=0;

-- Clientes que visitan solo nuestros masajes
select id,edad,ingresos from [dbo].[TotalClientes] where Sauna = 0 and Masaje =1 and Hidro = 0 and Yoga=0;

-- Clientes que visitan solo nuestros hidro
select id,edad,ingresos from [dbo].[TotalClientes] where Sauna = 0 and Masaje =0 and Hidro = 1 and Yoga=0;

-- Clientes que solo hacen yoga
select id,edad,ingresos from [dbo].[TotalClientes] where Sauna = 0 and Masaje =0 and Hidro = 0 and Yoga=1;

--Total ingreso 
select sum(ingresos) as 'Total Ingresos' from [dbo].[TotalClientes]

-- Personas que an visitado nuestras cuatro areas mas de 3 veces
select id,Edad from [dbo].[TotalClientes] where PromVisit >= 3



