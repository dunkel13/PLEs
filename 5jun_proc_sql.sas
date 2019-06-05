* 5 de junio;
title 'Listado de los clientes';
select * from cliente;
title 'Cambiar la presentación de los nombres de los campos';
select ocup as ocupado, ingr as ingreso from cliente;
title'Uso de la instrucción case para manejo condicional';
select case sexo 
		when 1 then 'Sr.'
		when 2 then 'Sra.'
		else ''
	end,
	nombre||' '|| apellido, tel_res
from cliente;
*title'Uso de la instrucción case para manejo condicional';
*select case estr 
		when 1 then estr='Uno'
		when 2 then estr='Dos'
		when 3 then estr='Tres'
		when 4 then estr='Cuatro'
		else estr=''
	end,
	nro as numero, serv 
from cuenta;
title'El mismo listado anterior con los apellidos en mayusculas y sin espacios dobles';
select case sexo 
		when 1 then 'Sr.'
		when 2 then 'Sra.'
		else ''
	end,
	upcase(trim(apellido))||' '|| trim(nombre) as nombre, tel_res
from cliente;
title'Agregado de un calificativo, dependiendo de los ingresos y el sexo';
select case 
		when ingr > 3000 then 'Exmo(a). Dr(a).'
		when ingr > 2000 then 'Dr(a).'
	end as titulo,
	case sexo
		when 1 then 'Sr.'
		when 2 then 'Sra.'
		else ''
	end,
	nombre||' '|| apellido, tel_res, ingr
from cliente;

title'Creación de una tabla a partir de otra';
create table cliente3 as  select * from cliente;
select * from cliente3;

drop table cliente2;
title'Creación de una tabla con un nuevo campo de edad con un valor constante =30';
create table cliente2 as 
select ident, sexo, nombre, apellido, trim(dir1)||' '|| trim(dir2)||'#'||trim(dir3)||'-'||trim(dir4)||' '|| trim(dir5) as dir_res, tel_res, ocup, educ, ingr, 30 as edad from cliente;
select * from cliente2;

title'Creación de una tabla';
create table todos(
	ident numeric(5,
	sexo numeric(1),
	nombre varchar(20),
	direcc varchar(20),
	ocup numeric(1),
	educ numeric(1),
	ingreso numeric(5),
	edad numeric(2)
);  
select * from todos;

title'Eliminación de la tabla cliente3';
drop table cliente3;
select * from cliente3;
*insercción de datos a cliente2;
title'Nuevos datos insertados en cliente2';
insert into cliente2 values(21331,1 'Pedro','Pelaez','dg 26 #45-26','2313131',3,4,5000,34);
select * from cliente2;

title'Pedro2 solo tiene identificación y nombre. Los demas datos faltan';
insert into cliente2 (ident, nombre) values(21332,'Pedro2');
select * from cliente2;

select * from cliente2 where dir_res is null;

title'Borrado de registros';
delete from cliente2 where sexo is null;

title'Eliminados de cliente2 los registros sin datos sobre sexo';
select * from cliente2;

title'Borrado de registros con ingr>3000';
delete from cliente2 where ingr>3000;
select * from cliente2;

delete * from cliente2;

title'Reinserta en Cliente2 los datos de cliente, modificando la dirección';
insert into cliente2
select ident, sexo, nombre, apellido, trim(dir1)||' '|| trim(dir2)||'#'||trim(dir3)||'-'||trim(dir4)||' '|| trim(dir5) as dir_res, tel_res, ocup, educ, ingr, 30 as edad from cliente;

title'Agraga de nuevo los datos de pedro Pelaez en cliente2';
insert into cliente2 values(21331,1 'Pedro','Pelaez','dg 26 #45-26','2313131',3,4,5000,30);

title'Agrega de nuevo los datos incompletos de Pedro2 en cliente2';
insert into cliente2 (ident, nombre) values(21332,'Pedro2');

title'Update sin clausula Where modifica todos los registros';
update cliente2 set ingr= ingr+10000,
	ident = ident +100000,
	tel_res ='2'|| substr(tel_res,2),
	edad = edad+ int(rannor(0)*4),
	dir_res='';

select * from cliente2;

title'Los registros con ingr>12500 modificados agregando 5000';
title2'Update con clausula Where actualiza los registros que cumplen las condiciones';
update cliente2 set ingr = ingr+5000
where ingr>12500;

select * from cliente2;