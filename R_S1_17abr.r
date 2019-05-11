###############Clase  17 Abril 2019  ########################
#Primera Seccion de R 17 Abril 2019 

license()
licence()

contributors()
citation()
demo()
help()
'help.start()'


rm(list=ls(all=TRUE))
ls()
# Calculator  R como Calculadora
8+8
8^2
(8-2)*5
(1+7)/(8-4)

12345679 * 9
(-1)^3
8^(1/2)
sqrt(8) # 

pi
sin(pi) # the sine function
[1] 1.225e-16 # this is 0!


exp(1) # this is exp(x) = e^x
[1] 2.718


log(10) #
log(10, base=10)

sqrt 2
#Error: syntax error


sqrt(-2)
#[1] NaN
#Warning message:
#NaNs produced in: sqrt(-2)
sqrt(2)  
[1] 1.414

(1+7)/(8-4)

12345679 * 9
(-1)^3
12/0
Inf*(-1)
0/0
NA + 7
sqrt(169)

log(e)
log(1)
log(0)
log(8,2)
factorial(5)

   #Asignando un valor a X
x<-10  
x

(x<-10  )
x1<-13
x1
x=12
x

x + 3 # 

pi # 

[1] 3.142
e^2 # 
Error: Object �e� not found

 e = exp(1) # e es ahora conocido
 e
value

e^2
#[1] 7.389

pi
cos(pi)
 e<-exp(1)
 e
(e<-exp(1))
ls()

###############Clase    ##############
f1<-56.88
(f1<-56.88)
floor(f1) #parte Entera
ceiling(f1) # Aproxima al decimal
?floor
floor(pi)
ceiling(pi)
ceiling(pi+0.5)
trunc(-0.7);trunc(0.7)
round(-0.7);round(0.7)
abs(-2)   

# Data entry
z<-18:42
z
(z<-18:42)
z
w<-scan()

edit(w)
(w1<-c(18,26,39,41))

ls()
rm(list=ls(all=TRUE))
ls()

y<-c(12,11,8,7,23,34,35)
y
(y<-c(12,11,8,7,23,34,35))
   x<-as.vector(seq(30,50))
    x
(x<-as.vector(seq(30,50))
ls() 

rm(list=ls(all=TRUE))
ls()   

v1<-1:5
(v1<-1:5)
(v2<-c(2.3,6,22,pi,4/3) )
  v2[4]
v2[-3]
v2[-1]
length(v2)

(v3<-seq(3,20,0.5))
length(v3)

#

(v4<-cbind(v1,v2))
dim(v4)
v4[3,2]
rep(1:5,2)
rep(1:5,each=2)
rep(1:5,each=2,times=3)

rep(1:5,c(2,1,3,3,4))


(x<-c(23,34,56,76,65,43,23,12) )
(y<-c(23,45,32,12,11,56,76,32) )
class(x)
class(y)
length(x)
sum(x)
max(x)
min(x)

summary(x)
range(x)

x-mean(x)

sum(x-mean(x))
x-mean(x)
(x-mean(x))^2
sum((x-mean(x))^2)
sum((x-mean(x))^2)  / (length(x)-1)
sqrt(sum((x-mean(x))^2)  / (length(x)-1))

var(x)
sd(x)

sum(x)/length(x)
mean(x)

class(x>0)

lx1<-log(x-min(x)+1)
lx1
length(x)
x=0
length(x)=max(10,length(y))
length(x)

x<-"length<-"(x,max(10,length(y)))
x

search()
objects()

find(summary)

objects("main",pattern="matrix")

trx=scan()
trx
tryy<-scan()

#Vectors
(a<-c("Ana", "David", "Mario"))
c('Ana', 'David', 'Mario')
b<-(c(T,F,F,T,T,T))

# Funciones y crear vectores
c(23,45,65,34,12)

seq(4,9)

seq(4,10,2)

4:9

dato=c(3,4,6)
rep(dato,3)

rep(dato,1:3)

rep(1:2,c(3,6))

x<-1:16
# Valores logicos
#Recordando
(x<-c(23,34,56,76,65,43,23,12) )
x>26
x[x>26]

x>43
x[x>43]

which(x>26)
x[c(2, 3, 4, 5, 6)]
sum(x>30)
length(x)
sum(x>70)
sum(x>30)/length(x)
5/8

#Manipulando un vector
x[1]
x[length(x)]
x[i]
x[-c(2,3)]   
x
x[1]=5
x
x[c(1,4)]=c(2,3)
x
x[indices]=y
x<30
which(x<30)
x[x<30]

#Ilustraci�n
x1<-1:5
x1
x1<5
x1>1 &x1< 5  #X mayor que 1 y menor que 5

x1>1 && x1< 5  #     �� Consultar Primero  es falso
 x1 > 1 || x1 < 5 # �� Consultar First one true
[1] TRUE
x1 == 3 # is x equal to 3
# FALSE FALSE TRUE FALSE FALSE
x1 != 3 # es x  no igual a 3
# TRUE TRUE FALSE TRUE TRUE
! x1 == 3 # not (x igual a  3)
! x1 == "3" # not (x igual a  3)

#usando datos faltantes

(ausen = c(0, 1, 0, NA, 0, 0) )

#[1] 0 1 0 NA 0 0
ausen > 0 # note NA en la respuesta
# FALSE TRUE FALSE NA FALSE FALSE
ausen == NA # fijando NA
[1] NA NA NA NA NA NA
is.na(ausen)
#FALSE FALSE FALSE TRUE FALSE FALSE
mean(ausen) # can�t add to get the
mean
#[1] NA
mean(ausen, na.rm=TRUE) # na.rm means remove NA
#[1] 0.2
mean(ausen[!is.na(ausen)])

#Tablas 
(edad<-c(18,43,27,33,25,39,43,29,16,25,38,39,28))
length(edad)
cut(edad,breaks=3)
table(cut(edad,breaks=3))

#Una tabla mas elaborada
Genero<-factor (c(1,2,1,2,2,1,1,1,2,2,1,1,2),labels=c('Mujer','Hombre'))
(Genero<-factor(c(1,2,1,2,2,1,1,1,2,2,1,1,2),labels=c('Mujer','Hombre')))
cut(edad, breaks=3,Genero)
table(cut(edad, breaks=3),Genero)

#Nombres de filas y columnas
(consigna.dat<-array(c(6757,5324,23,2324),c(2,2)) )
rownames(consigna.dat)<-c('Oficial','Privado')
colnames(consigna.dat) <-c('Diurno','Nocturno')
 consigna.dat

 (data.data<-matrix(c(,,), ncol=3,byrow=T)   )
 (data.dat<-matrix(c(21,25,32,23,28,24), ncol=3,byrow=T)   )
 dimnames(data.dat)<-list(c('Hombres','Mujeres') ,
 c('Agrarias','Veterinaria','Estad�stica') )
 data.dat
  library(MASS)
data(survey)
data(survey,package="MASS")
names(survey)
survey
edit(survey)
dim(survey)
head(survey)
survey$Sex
table(Sex,W.Hnd)
attach(survey)
table(Sex,W.Hnd)

# Comandos
library()
library(pkg)
data()
update.packages
install.packages(pkg)

names(iris)
table(cut(Sepal.Length,breaks=3))
attach(iris)
table(cut(Sepal.Length,breaks=3))
table(cut(Sepal.Length,breaks=3),Species)


?AirPassengers 
data(AirPassengers )
head(AirPassengers)
names(AirPassengers)
table(AirPassengers)
summary(AirPassengers)
with(AirPassengers)

data(airmiles)
table(airmiles)
data(iris)
table(iris)
names(iris)
?iris
iris

#Ingresando datos de excel
(ejemplo<-read.table("H:/Teste.csv", h=T,sep=";"))
names(ejemplo)
table(TS,CP)
attach(ejemplo)
names(ejemplo)
barplot(Edad)
colours()
barplot(table(Edad),xlab="N.estu",ylab="Frecuencia")

#frecuencias
barplot(table(Edad),xlab="N.estu",ylab="Frecuencia", col="red") 

#   Proporciones
barplot(table(Edad)/length(Edad),xlab="N.estu",ylab="Proporciones", col="red") 
op <- par(mfrow=c(1,3),bg = "antiquewhite")
par(lty="dashed")
par(col="red" )
barplot(Edad)
barplot(table(Edad),xlab="N.estu",ylab="Frecuencia")
barplot(table(Edad)/length(Edad),xlab="N.estu",ylab="Proporciones", col="red") 

op <- par(mfrow=c(1,3),bg = "antiquewhite")
par(lty="dashed")
par(col="red" )
plot(Edad,col="red", type="p" )
identify(Edad)
boxplot(Edad,col = "blue")
hist(Edad, prob=T, col="blue", main="Edad",xlab="Est")
E.d=density(Edad)
lines(E.d, col="red")

#Diagrama circular
(a<-table(cut(Edad,breaks=3)))
pie(a, main="Edad")
data(iris)
(b<-table(cut(Sepal.Length,breaks=3)))
pie(b, main="Sepal.Length")
table(cut(Sepal.Length,breaks=3),Species)

#ramas y hojas 
stem(Edad) #Edad  
summary(Edad)
range(Edad)
mean(Edad)
sum(Edad)/length(Edad)

median(Edad)
var(Edad)
sum(Edad-mean(Edad))
sum((Edad-mean(Edad))^2)
length(Edad)-1

sum((Edad-mean(Edad))^2)/(length(Edad)-1)
var(Edad)
sd(Edad)
(sum((Edad-mean(Edad))^2)/(length(Edad)-1))^{1/2}

----------------------
