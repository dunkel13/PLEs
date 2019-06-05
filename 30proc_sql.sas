data cliente; 
input ident sexo nombre $ apellido $ dir1 $ dir2 $ dir3 $ dir4 $ dir5 $ tel_res $ ocup educ ingr;   
cards; 
11331 1 Jaime    Diaz     cl 1   12  10  .        6717171 1 1 1000
11332 1 Jaime    Gomez    cr 10  121 78  .        6717172 1 1 1800
11333 1 Pedro    Martinez tv 50  30  11  Ap.10-02 6717173 1 1 3200
11334 2 Maria    Lopez    cr 121 47  31  Ap.102   6717174 1 2 2000
11335 2 Teresa   Mendez   cr 115 52  10  .        6717175 1 2 2600
11336 1 Daniel   Marti    cr 160 6   45  .        6717176 1 2 1500
11337 2 Myriam   Sanchez  dg 38  17  16  .        6717177 2 2 1200
11338 2 Martha   Salgado  dg 17  64  76  .        6717178 2 3 1000
11339 2 Monica   Perez    cr 45  18  29  .        6717179 2 3 2000
11140 1 Martin   Porras   cl 81  10  11  .        6717180 2 4 3500
11341 2 Milena   Ortega   cl 26  5   61  .        6717181 2 4 2500
11342 1 John     Quijano  cl 72  1   12  .        6717182 3 4 2800
11343 1 Fabio    Alvarez  cr 11  113 65  .        6717183 3 4 1500
11344 1 Roberto  Quiroga  cr 56  121 14  .        .       . . 2000
;
data cuenta;   
input nro estr serv cliente;   
cards; 
1  1 1 11331 
2  1 1 11331 
3  1 1 11333 
4  1 2 11333 
5  1 2 11333 
6  2 1 11336 
7  2 1 11337 
8  3 1 11338 
9  4 1 11339 
10 4 1 11140 
11 4 1 11141 
; 
data tarifa;   
input estr serv ano desde hasta valor basico;   
cards; 
1 1 2000 1 12 100 1000 
1 2 2000 1 12 150 1500 
2 1 2000 1 12 200 2000 
2 2 2000 1 12 250 2500 
3 1 2000 1 12 300 3000 
3 2 2000 1 12 350 3500 
4 1 2000 1 12 400 4000
4 2 2000 1 12 450 4500
;
proc sql;
title 'Listado de los clientes';
select * from cliente;
title 'Clientes con nivel educativo > 1';
select * from cliente where educ > 1;
title 'Clientes no desocupados';
select * from cliente where  ocup^=1;
title 'Analisis 1';
select nombre, ident, sexo, ingr from cliente where ingr >1000*1.5;
title 'Analisis 2';
select upcase(apellido) as apellido, lowcase(nombre) as nombre, ingr * 1.2 as nvo_ing from cliente;
title 'Transformaciones numéricas';
select ident, nombre, ingr, ingr*2 as double, ingr**2 as cuadrado, sqrt(ingr) as raiz from cliente;
title 'Campos no incluidos en la tabla';
select ident, nombre, ingr, ranuni(0) as unif0_1, rannor(0) as norm0_1 from cliente;
title 'Transformaciones de caracteres y numéricas';
select upcase(substr(apellido,1,4)) as apellido, lowcase(substr(nombre,1,4)) as nombre, ingr * 1.2 as nvo_ing from cliente;
title 'Consulta FM';
select * from  cliente where ingr>3000 and educ>2;
title 'Consulta FM1';
select * from  cliente where ingr<2000 and educ>2 and ocup^=1;
title 'Clientes con nombre Jaime';
select * from cliente where nombre='Jaime';
title 'Clientes con nombre que empieza por R';
select * from cliente where nombre like 'R%';
title 'Clientes con nombre que termina por z';
select * from cliente where apellido like '%z';
title 'Clientes con nombre que contienen una r';
select * from cliente where nombre like '%r%';
title 'Clientes con nombre que no empieza por M';
select * from cliente where nombre not like 'M%';
title 'Clientes con apellido que no termine en s';
select * from cliente where apellido not like '%s';
title 'Clientes con nombre que no contiene una n';
select * from cliente where nombre not like '%n%';
title 'Clientes con nombre que contiene una a en la 6a posición';
select * from cliente where nombre like '_____a';
title 'Clientes con nombre que contiene una o en la 2a posición';
select * from cliente where nombre like '_o%';
title 'Clientes con nombre que tienen menos de cinco letras';
select * from cliente where nombre like '_____';
title 'Clientes con nombre que tienen exactamente seis letras';
select * from cliente where length(nombre)=6;
title 'Clientes con nombres en una lista ';
select * from cliente where nombre in ('Jaime','Martha', 'Monica');
title 'Clientes con nivel de educ dos o cuatro ';
select * from cliente where educ in (2,4);
title 'Eliminación de espacios y concatenación de cadenas';
select nombre, trim(dir1) || ' ' || trim(dir2) || '#'  || trim(dir3) || '-' || trim(dir4)||' ' || trim(dir5) as dir_res
from cliente where ingr>2500 and educ <2;
title'clientes más allá de la calle 100';
select nombre, trim(dir1) || ' ' || trim(dir2) || '#'  || trim(dir3) || '-' || trim(dir4)||' ' || trim(dir5) as dir_res
from cliente where (dir1='cl' and (dir2 >'100') and length(dir2)>2) or (dir1='cr' and (dir3 >'100') and length(dir3)>2) ;
title'Registros ordenados de menor a mayor ingreso';
select * from cliente order by ingr;
title'Registros ordenados de mayor a menor ingreso';
select * from cliente order by ingr DESC;
title'Clientes con igreso mayos a 2000 que no son mujeres';
select ident, ingr, nombre from cliente where ingr>2000 and sexo^=2;
title'Uso de la instrucción case para manejo condicional';
select case sexo when 1 then 'Sr. ' when 2 then 'Sra. ' else '' end, nombre||' '|| apellido, tel_res from cliente;
run;
*quit;