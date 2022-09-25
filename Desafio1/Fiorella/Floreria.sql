create database Floristeria_fiorella;

use Floristeria_fiorella
create table SanMiguel(
id nvarchar(50),
rosas int,
claveles int,
macetas int,
tierra int,
girasoles int,
hortensia int,
globos int,
tarjetas int,
orquidias int,
carmesi int,
lirios int,
aurora int,
tulipanes int,
liston int
)

create table SanSalvador(
id nvarchar(50),
rosas int,
claveles int,
macetas int,
tierra int,
girasoles int,
hortensia int,
globos int,
tarjetas int,
orquidias int,
carmesi int,
lirios int,
aurora int,
tulipanes int,
liston int
)

create table SantaAna(
id nvarchar(50),
rosas int,
claveles int,
macetas int,
tierra int,
girasoles int,
hortensia int,
globos int,
tarjetas int,
orquidias int,
carmesi int,
lirios int,
aurora int,
tulipanes int,
liston int
)

select * from [dbo].[SanMiguel] 
UNION
select * from [dbo].[SanSalvador] 
UNION
select * from [dbo].[SantaAna] 

-- Que producto sobresale mas de san miguel

-- creemos una tabla temporal para apreciar todos los productos
USE [Floristeria_fiorella]	
GO
CREATE TABLE #ProductSobresalientes (
 nombreColum varchar(50),
 totalVendido int
)

insert into #ProductSobresalientes values('ROSAS',(select count(rosas) from [dbo].[SanMiguel] where rosas = 1));
insert into #ProductSobresalientes values('claveles',(select count(claveles) from [dbo].[SanMiguel] where claveles = 1));
insert into #ProductSobresalientes values('macetas',(select count(macetas) from [dbo].[SanMiguel] where macetas = 1));
insert into #ProductSobresalientes values('tierra',(select count(tierra) from [dbo].[SanMiguel] where tierra = 1));
insert into #ProductSobresalientes values('girasoles',(select count(girasoles) from [dbo].[SanMiguel] where girasoles = 1));
insert into #ProductSobresalientes values('hortensia',(select count(hortensia) from [dbo].[SanMiguel] where hortensia = 1));
insert into #ProductSobresalientes values('globos',(select count(globos) from [dbo].[SanMiguel] where globos = 1));
insert into #ProductSobresalientes values('tarjetas',(select count(tarjetas) from [dbo].[SanMiguel] where tarjetas = 1));
insert into #ProductSobresalientes values('orquidias',(select count(orquidias) from [dbo].[SanMiguel] where orquidias = 1));
insert into #ProductSobresalientes values('carmesi',(select count(carmesi) from [dbo].[SanMiguel] where carmesi = 1));
insert into #ProductSobresalientes values('lirios',(select count(lirios) from [dbo].[SanMiguel] where lirios = 1));
insert into #ProductSobresalientes values('aurora',(select count(aurora) from [dbo].[SanMiguel] where aurora = 1));
insert into #ProductSobresalientes values('tulipanes',(select count(tulipanes) from [dbo].[SanMiguel] where tulipanes = 1));
insert into #ProductSobresalientes values('liston',(select count(rosas) from [dbo].[SanMiguel] where liston = 1));


select * from #ProductSobresalientes;
select nombreColum,max(totalVendido) from #ProductSobresalientes where max(totalVendido) = totalVendido;
--poner el nombre y la cant de solicitudes a la par y luego hacer un max

