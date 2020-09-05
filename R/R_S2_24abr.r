###############Clase  24 Abril 2019  ########################
#Segunda  Seccion de R 24  Abril 2019
  ----------------------

matrix(1:12, nrow=3, byrow=T)
matrix(1:12, nrow=3, byrow=F)
matrix(1:12, ncol=3, byrow=T)
x<-matrix(1:12, nrow=3, byrow=T)
rownames(x)<-LETTERS[1:3]
x

x1<-matrix(1:12, ncol=4, byrow=T)
colnames(x1)<-LETTERS[1:4]
x1
t(x1)

x3<-cbind(A<-1:4,B<-5:8,C<-9:12)
colnames(x3)<-LETTERS[1:3]
x3

x4<-rbind(A<-1:4,B<-5:8,C<-9:12)
rownames(x4)<-LETTERS[1:3]
x4
t(x4)
x4[,1]
det(x4)
#Hasta aqui clase 1 Septiembre
#Factores
 rm(list=ls(all=TRUE))
    ls()
dolor<-c(0,1,3,2,2,1)
fdolor<-factor(dolor,levels=0:3)
niveldolor<-c("Ninguno","Leve","Medio", "Severo")
fdolor
as.numeric(fdolor)
niveldolor

rm(list=ls(all=TRUE))
ls()
edad<-c(15,23,34,45)
Peso<-c(23,34,21,11)
milista<-list(antes=edad,despues=Peso)
milista
milista$antes
milista$despues
attach(milista)
antes
f<-data.frame(edad,Peso)
f
f$Peso
Peso
edad[2]
edad[c(1,3,4)]
edad[1:3]
edad[-c(1,2)]
Peso
edad
f
edad[Peso>22]

edad[Peso>20 & Peso<=30]
Peso>20 & Peso<=30

#Indexando data frames
##
f
f[3,1]
f[3,]
f[,1]

f[f$Peso>20,]
sf<-f$Peso>21
sf

f[sf,]
rm(list=ls(all=TRUE))
x <-c(1,3,2,10,5)
y <-c(1,2,3,4,5)
m<-cbind(x,y);m



#sqrt(((sum((x^2)))/(length(x)))  -(mean(x))^2    )
x>0


t(m)                # transpose of m1
m11<-t(cbind(x,y))    # Or you can combine them and assign in one step
m11
dim(m11)              # 2 by 5 matrix
m1<-matrix(c(1,3,2,5,-1,2,2,3,9),nrow=3);m1
#Note that the elements are used to fill the first column, then the
#second column and so on.
#To fill row-wise,
#we specify
#byrow=T option:

m2<-matrix(c(1,3,2,5,-1,2,2,3,9),ncol=3,byrow=T);m2
#     [,1] [,2] [,3]
#[1,]    1    3    2
#[2,]    5   -1    2
#[3,]    2    3    9

#Extracting the component
#of a matrix involves one or
#two indices.
 m2
m2[2,3]            #element of m2 at the second row, third column
#[1] 2
 m2[2,]             #second row
#[1]  5 -1  2
 m2[,3]             #third column
#[1] 2 2 9

 m2[-1,]
  #submatrix of m2 without
  # the first row
#     [,1] [,2] [,3]
#[1,]    5   -1    2
#[2,]    2    3    9
 m2
#      [,1] [,2] [,3]
#[1,]    1    3    2
#[2,]    5   -1    2
#[3,]    2    3    9
m3=m2[-1,] ;m3
m4=m3[,-1] ;m4


m3 [-1,]

 m2[,-1]            #ditto, sans the first column
#     [,1] [,2]
#[1,]    3    2
#[2,]   -1    2
#[3,]    3    9
 m2[-1,-1]          #submatrix of m2 with the first row and column removed
#     [,1] [,2]
#[1,]   -1    2
#[2,]    3    9

#Matrix computation
#is usually done component-wise.
rm(list=ls(all=TRUE))
 m1<-matrix(1:4, ncol=2); m1
m2<-matrix(c(10,20,30,40),ncol=2) ; m2
 2*m1                # scalar multiplication
#     [,1] [,2]
#[1,]    2    6
#[2,]    4    8
 m1+m2               # matrix addition
#     [,1] [,2]
#[1,]   11   33
#[2,]   22   44
 m1*m2

m1 %*% m2
#     [,1] [,2]
#[1,]   70  150
#[2,]  100  220
m1
diag(m1)
 solve(m1)            #inverse matrix of m1
#     [,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5
 solve(m1)%*%m1       #check if it is so
#       [,1] [,2]
#  [1,]    1    0
 # [2,]    0    1
 diag(3)              #diag() is used to construct a k by k identity matrix
#     [,1] [,2] [,3]
#[1,]    1    0    0
#[2,]    0    1    0
#[3,]    0    0    1

diag(c(2,3,3))       #as well as other diagonal matrices
#     [,1] [,2] [,3]
#[1,]    2    0    0
#[2,]    0    3    0
#[3,]    0    0    3

#Eigenvalues and eigenvectors of a matrix is handled by eigen() function:
 eigen(m2)


rm(list = ls())
 x <-c(1,  3,  2, 10,  5)
y <-c( 1, 2, 3, 4, 5)
m<-cbind(x,y);m
m*t(m)
m%*%t(m)
###
cbind(A=1:4,B=5:8,C=9:12)
rbind(A=1:4,B=5:8,C=9:12)

#Factores
pain<-c(0,3,2,2,1)
fpain<-factor(pain,levels=0:3)
fpain
levels(fpain)<-c("none","mild","medium","severe") #mild=leve
levels(fpain)
as.numeric(fpain)
 text.pain<-c("none","mild","medium","severe")
factor(text.pain) # In factor not specify of levels argument,the levels
#will by default sorted, unique values represented in the vector


######
 #Si queremos recortar los dos valores extremos menores y los dos mayores
#del vector, podemos hacer:
rm(list=ls(all=TRUE))
 w <-c(5, 2, 8, 5, 4, 6, 9, 9)
 w
#[1] 5 2 8 5 4 6 9 9
 rev(sort(w)[-c(1, 2)])[-c(1, 2)]
#[1] 8 6 5 5
#Expresion en la que, primero, hemos ordenado el vector original con sort,
#luego, excluido los valores menores, a continuacion, hemos invertido el vector
#resultante con rev y, nalmente, hemos suprimido los dos primeros valores,
#que son los dos mayores del vector original.
#### Matrices en R
#Ademas de los objetos vistos hasta aqu, introducimos ahora este nuevo
#tipo. Podemos crear una matriz a partir de un vector
 x <- 1:12
 y <- matrix(x, nrow = 3)
 y

#Con matrix, se crea una matriz de tres las (nrow=3) a partir de un
#vector (x) de longitud 12. Notese que los valores del vector se introducen,
#por defecto, por columnas. El mismo efecto podra haberse conseguido con
y <- matrix(x, ncol = 4)
y
#y se crea la misma matriz con 4 columnas y, por lo tanto, tres las, pues
#ncol=4 obliga a que as sea. Si queremos que se introduzcan por las, se ha
#de proceder as

 y <- matrix(x, nrow = 3, byrow = T)
 y

#Vease el efecto de
 y <- matrix(x, ncol = 3, byrow = T)
 y

#con la que se ha construido una matriz de tres columnas, con los datos introducidos
#por las. Podemos, tambien, convertir directamente el vector original
#en una matriz redeniendo las dimensiones del vector.
#Vease
 class(x)
#[1] "integer"
#que nos muestra que x es un vector de enteros y el efecto que tiene el redimensionar
#x con la funcion dim
 dim(x) <- c(3, 4)
 x

 class(x)
#que nos muestra que, ahora, x ya no es mas un vector y que ha pasado a ser
#una matriz. Se pueden asignar nombres a las y columnas con rownamesy
colnames
 rownames(x) <- c("lunes", "martes", "miercoles")
 x

#Podemos referirnos a los elementos de una matriz indicando la posicion
#con corchetes
 x[1, 2]

#o bien por medio de los nombres de la la y columna, si los tiene
 colnames(x) <- c("marzo", "abril", "mayo", "junio")
 x["lunes", "abril"]
#[1] 4
#Podemos referir una columna de esta manera
 x[, 2]

#que nos muestra los elementos de la columna 2 (aunque mostrados en forma
#de la). O bien la la 3
 x[3, ]

#Notese como, tanto en un caso como en otro, la ausencia de numero en
#la la o columna se puede leer como \para todas las las" y \para todas las
#columnas", respectivamente. Podemos seleccionar las dos primeras las de la
#matriz
 x[1:2, ]

#O bien, excluirlas
 x[-(1:2), ]


#Calcular las sumas de los elementos dentro de cada columna
 colSums(x)
 colMeans(x)

#o las sumas de los elementos dentro de cada la
 rowSums(x)

#Con summary, funcion que es sensible al contexto
 summary(x)
#    obtenemos resumenes por columnas.



##########
##########
#Genere una matriz de 6000 datos en 6 columnas,
#usando la distribución normal, media =0, y sd=1,
args(rnorm)
(matrix(rnorm(6000),ncol=6))
norm<-as.data.frame(matrix(rnorm(6000),nco=6))

head(norm)
summary(norm)
dim(norm)
(matriz=t(norm)*norm)
dim(matriz)
####a)
par(mfrow=c(2,3))
for(i in 1:6)
plot(norm[,i], main=i, xlab="Datos generados", ylab="Datos rnorm",col=i)

norm

?plot
####b)
par(mfrow=c(1,2))
boxplot(norm, main="datos Simulados\n6 grupos N(0,1)")
hist(norm[,i],main=i, xlab=NULL, ylab=NULL)
#########
##

library(ISwR)
data()
plot(rnorm(1000),col="red")

args(rnorm)

rnorm(15)


#########################
#Creando funciones objeto
(x<-sample(100,10))
(y<-sample(100,10))

logtrans=function(x)log(x-min(x)+1)
logtrans
a<-min(x)
b<-min(y)
xx=(x-a)/b
xx

shift=function(x){
a<-min(x)
b<-min(y)
xx1=(x-a)/b
}
shift

args(plot.default)


#Subconjunto  y transformaciones
data()
library(MASS)
library(ISwR)
data(thuesen)
?thuesen
attach(thuesen)
names(thuesen)
list(thuesen)
head(thuesen)
thue1<-subset(thuesen, blood.glucose<7)
thue1
thue2<-transform(thuesen, log.gluc=log(blood.glucose))
thue2
head(thue2)
blood.glucose[1]
log(15.3)




rm(list=ls(all=TRUE))
#Sortear
peso<- c(60,72,57,90,95,72)
sort(peso)
order(peso)
o<-order(peso)
o
altura[o]
x<-sample(1:18)
x

sample(1:3)


##Loops
rm(list=ls(all=TRUE))
peso<- c(60,72,57,90,95,72)
altura<-c(1.75,1.80,1.65,1.90,1.74,1.91)
length(peso);length(altura)
f1<-data.frame(peso, altura)
attach(f1)
summary(peso);summary(altura)
lapply(f1,mean, na.rm=T)
library(MASS)
library(ISwR)
data(thuesen)
summary(thuesen)
lapply(thuesen,mean, na.rm=T)
sapply(f1,mean, na.rm=T)
sapply(thuesen,mean, na.rm=T)
args(rnorm)
m1<-matrix(rnorm(20),4)
m1
apply(m1,2,min)  #Minimo por columna
apply(m1,1,min)#Minimo por fila

data(energy)
attach(energy)
names(energy)
head(energy)
summary(energy)
energy
tapply(expend,stature,median)

#Graphics
args(runif)
x111<-runif(50,0,2)
y111<-runif(50,0,2)
length(x111);length(y111)
plot(x111,y111)

plot(x111,y111,
main="50 puntos generados ? de 0 a 2",
sub="Números aleatorios generados",
 xlab="X", ylab="Y")
text(0.6,0.6,"text at(0.6,0.6)")
abline(h=0.6, v=0.6, col="red")
for (side in 1:4)
mtext(-1:4,side=side,
at=1.7,line=-1:4, col="blue")
mtext(paste("side", 1:4),
side=1:4, line=-1,font=2,col="purple")

plot(x111,y111,
xlab="",ylab="",type="n",axes=F)
points(x111,y111, col="blue")
axis(1)
axis(2,at=seq(0.2,1.8,0.2))
box()
title(main="Titulo",sub="Subtitulo",
xlab="x-label", ylab="y-label")

#Combinando plots
y<-12345
x<-y/2
x*x-y
(x+y/x)/2
while(abs(x*x-y) >1e-10) x<-(x+y/x)/2
x

?abs
sqrt(16)
abs(-16)

x<-y/2
repeat{  x<-(x+y/x)/2
         if (abs(x*x-y)<1e-10 )break
}
x

x<-seq(0,1,0.05)
plot(x,x,ylab="y",type="l", col="red")
for(j in 2:8) lines(x,x^j)
plot( x,x^j,
xlab="Valores de x",
ylab="Valores de x^j",main="Grafico")

##
u<-as.integer(0)
b<-as.integer(1)
two<-as.integer(2)
for(i in 1:31){u<-u+b; b<-b*two}
u

ab<-rep(c("a","b","c"),1000)
cv<-table(ab);cv
cv[1];cv[2];cv[3]
cv[4]
cv[1]*cv[2]*cv[3]

abc<-rep(c("a","b","c","d"),10)
cvc<-table(abc)
cvc
cvc[1]*cvc[2]*cvc[3]*cvc[4]

options(digits=20)
1 + 1/2^53
1 + 1/2^52
library(MASS)



data(iris)
iris
attach(iris)
head(iris)
?iris
as.vector(iris)
?apply
names(iris)
dim(iris)
summary(iris)
table(Species)

library(faraway)  ???actividad
#data(babyfood)
#attach(babyfood)
#head(babyfood)
#table(sex,food)
#prop.table(table(sex,food))
head(iris)
 apply(iris,mean)
edit(iris)


summary(iris)
apply(iris,c(2,3),mean)
Sepal.Width
Petal.Length
apply(iris,2,mean)



##Graficos de dos variables
#Simulando datos
y<-rnorm(30)
y
par(mfrow=c(2,2))
plot(y,type="p",main="p")
plot(y,type="l",main="l")
plot(y,type="b",main="b")
plot(y,type="h",main="h")
x= rnorm(1000)
hist(x,freq=F, col="red")
curve(dnorm(x),add=T)

Y<- rnorm(1000)
h<-hist(Y,plot=F)
ylim<-range(0,h$density,dnorm(Y))
hist(x,freq=F,ylim=ylim)
curve(dnorm(x),add=T)

par(mfrow=c(1,2))
hist(x,freq=F)
curve(dnorm(x),add=T)
hist(x,freq=F,ylim=ylim)
curve(dnorm(x),add=T,col="red")


# Data manipulation
x=c(23,34,56,76,65,43,23,12)
y=c(23,45,32,12,11,56,76,32)
data.set=data.frame(x,y)
x
attach(data.set)

edit(data.set)
fix(data.set)
detach(data.set)
edit(data.set)

data.set$x
with(data.set,x)
attach(data.set)

library(MASS)
library(ISwR)
data(thuesen)
?thuesen
attach(thuesen)
names(thuesen)
blood.glucose
length(blood.glucose)
sample(blood.glucose, 10, replace=T)




# More advanced programming
# Functions
add2<-function(xx) {xx+2}
add2(9)

# Flow control (for, while, if, ifelse)
(z<-runif(10,0,20))
for(i in 1:10){if(i<3){z[i] <-  z[i]}
              else{z[i] <- -z[i]}
}
z

# Flow control (for, while, if, ifelse)
(z<-runif(100,0,10))
for(i in 1:100){if(i<10){z[i] <-  z[i]}
              else{z[i] <- -z[i]}
}
z

#Rutina muy demorada
 z1<-runif(20,0,10)
for(z1[i] in 1:10){
repeat{
z1[i]=z1[i]+1
if(z1[i]==10)break
}
}
z1

# Cleanup
ls()
rm(data.set,datos,datos1,muestra,muestrafin,prob,thuesen,x,y)
search()
rm(u)
rm(i,u,z)
ls()
rm(list=ls())
ls()
LAC
detach(data.set)
LAC

#################


y.fun<-function (x)
{y<-(log(x))^2-x*exp(-x^3)
}
 root.fun<- function ()
{      x<-seq(0.2,2,0.01)
        y<-y.fun(x)
        win.graph()
        plot(x,y,type="l")
        abline(h=0)
        r1 <- uniroot(y.fun,lower=0.2,upper=1)$root
        r2 <- uniroot(y.fun,lower=1,upper=2)$root
        cat("Roots : ", round(r1,4), "  ", round(r2,4),"\n")
}

 root.fun()
while()

    #Para crear un poligono
data(faithful)
attach(faithful)
names(faithful)
eruptions
bins<-seq(42,109,by=10)
freqs<-table(cut(waiting, bins))
freqs
y.pts<-c(0,freqs,0)
y.pts
x.pts<-seq(37,107,by=10)
plot(x.pts, y.pts, type="l",lty=2,col="blue")
rug(waiting) #Mostrar los valores

?plot
data(pressure)
plot(pressure,xlab="Temperatura",ylab="Presión",col="red",type="l")
text(150,200, "Presión (mm Hg) \nvs\nTemperatura (°Celsius)")



 rm(list = ls())
 #Para simular la tirada de un dado podemos utilizar
sample(1:6, 1)

#  Para simular la tirada de 4 dados, o de un mismo dado 4 veces, podemos
#utilizar
sample(1:6, 4, rep = T)
#Si queremos simular la distribución de la suma de los números que salen
#al tirar 4 dados
#############
#donde la función sapply aplica a un vector de tama~no
#10000 una función sin
#nombre, generando a su vez un vector de tama~no 10000.
#La función obtiene
#muestras con repetición de tamaño 4 y, a
#continuación, suma los números
#de la muestra. Este proceso se repite 10000 veces.
 #Lo mismo se podría haber
#conseguido con un ciclo for, pero el procedimiento
#utilizado es más rápido.
#Para garantizar que los resultados son los mismos
#que los de esta práctica,
#nos servimos de set.seed(111)
set.seed(111)
t<-sapply(1:10000, function(x) {
 sum(sample(1:9, 4, rep = T))
 })
table(t)
plot(t)
barplot(table(t))
set.seed(1)
sum(sample(1:6, 4, rep = T) )
sample(1:6, 4, rep = T)
#############
x <- runif(4, 0, 6)
x
      ?fdth

#genera 4 números aleatorios uniformemente distribuidos entre 0 y 6.
#La función
 ceiling(x)

#transforma los valores anteriores en el menor entero no inferior al numero
#(digamos que el numero siempre se redondea por arriba).

#O tambien
ceiling(runif(4, 0, 6))

 #donde el parámetro 1 indica que trabajamos por filas y podríamos añadir
#una nueva columna a la matriz x con estas varianzas, mediante cbind
?apply
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
x
     dimnames(x)[[1]] <- letters[1:8]
     dimnames(x)[[1]]
     apply(x, 2, mean, trim = .2)
     col.sums <- apply(x, 2, sum)
     col.sums
     row.sums <- apply(x, 1, sum)
     row.sums
     rbind(cbind(x, Rtot = row.sums), Ctot = c(col.sums, sum(col.sums)))

     (stopifnot( apply(x, 2, is.vector)) )

     ## Sort the columns of a matrix
     apply(x, 2, sort)

####
 xx <- cbind(x, apply(x, 1, var))
 xx
 colnames(xx) <- c(colnames(x), "varianzas")
 xx
  #Análogamente, podemos trabajar por columnas con
apply(x, 2, var)
#donde el parámetro 2 indica que trabajamos por columnas y podríamos añadir
#esta a la a la matriz
xxx <- rbind(x, apply(x, 2, var))
 xxx
 #y darle nombre a la nueva fila
rownames(xxx) <- c(rownames(xx), "fila")
 xxx

 x <- matrix(1:4, nrow = 2)
 y <- matrix(2:5, nrow = 2)
 x    ;y

 x %*% y
 #Producto por un escalar
2 * x
#suma y resta de matrizes
x+y; x-y
#Crear una matriz diagonal
 z <- diag(c(2, -1, 3))
 z
 diag(1,3)
 #Modicar la diagonal
diag(z) <- c(4, 3, 3)
 z
      # Hallar un determinante
det(x)
#Hallar la inversa de una matriz
 solve(x)
#y comprobamos
 x %*% solve(x)
 #No confundir el producto %* % con el producto *.
#Producto Hadamard de dos matrices
 x * y
#es la matriz cuyos elementos son el producto de los elementos homonimos de
#las matrices que se multiplican.
###############
data(thuesen)




data(faithful)
attach(faithful)
names(faithful)
par(mfrow=c(2,3))
hist(waiting)
hist(waiting, breaks=10)
summary(waiting)
hist(waiting, breaks=seq(43,108,length=10))
hist(waiting, breaks="scott") #Usando el algoritmo  Scott
hist(waiting, prob=T)
        


##Estimando la densidad
hist(waiting,breaks="scott", prob=TRUE,main="", xlab="", ylab="")
lines(density(waiting))

library(ISwR)
data(thuesen)
names(thuesen)
attach(thuesen)

hist(blood.glucose, prob=TRUE,main="", xlab="", ylab="")
lines(density(blood.glucose))

hist(log(blood.glucose), prob=TRUE,main="", xlab="", ylab="")
lines(density(log(blood.glucose)),col="red")
 short.velocity



sum(short.velocity, na.rm=T)
par(mfrow=c(1,2))
 hist(short.velocity, prob=TRUE,main="", xlab="", ylab="", na.rm=TRUE)
lines(density(short.velocity))

 hist(log(short.velocity), prob=TRUE,main="", xlab="", ylab="", na.rm=TRUE)
lines(density(log(short.velocity)))


svelo<-short.velocity[-16]
svelo
par(mfrow=c(2,2))
hist(svelo, prob=TRUE,main="", xlab="", ylab="")
lines(density(svelo))

hist(log(svelo), prob=TRUE,main="", xlab="", ylab="")
lines(density(log(svelo)))
             summary(thuesen)
plot(density(blood.glucose), ylim=c(0,2))
lines(density(svelo), lty=2, col="red")

plot(density(blood.glucose), ylim=c(0,2))
lines(density(svelo), lty=2)
#Graficando plots con densidad
p1<-c(0,0,2,4,6,7,8,9,12,14,16,15)
p2<-c(0,6,7,11,13,13,14,15,16,17,18,19)
    density(p1)
plot(density(p1),ylim=c(0,0.1),main="Densidad plots")
lines(density(p2),lty=2, col="red")

data(thuesen)
names(thuesen)
attach(thuesen)
edit(thuesen)
plot(density(blood.glucose),ylim=c(0,0.1),main="Densidad plots")
lines(density(p2),lty=2, col="red")

########
f1<-rbind(c(56,8),c(2,16))
f1
f2<-cbind(c(56,2),c(8,16))
f2
par(mfrow=c(2,1))
barplot(f1,xlab="Pariente", main="El niño uso el cinturon de seguridad" )
barplot(f1,xlab="Pariente", main="El niño uso el cinturon de seguridad", beside=TRUE )

margin.table(f1,1)  #Suma filas
margin.table(f1,2)  #Suma Columnas
addmargins(f1)
         
library(UsingR)  # descargar
data(grades)
grades
attach(grades)
names(grades)
fc<-table(prev,grade)
fc
margin.table(fc,1)  #Suma filas
margin.table(fc,2)  #Suma Columnas
addmargins(fc)

options(digits=10)


library(graphics)
help(barplot)

par(ask=TRUE)
     example(barplot)
     ##Realizando el ejemplo
require(grDevices) # for colours
     tN <- table(Ni <- stats::rpois(100, lambda=5))
     r <- barplot(tN, col=rainbow(20))
     #- type = "h" plotting *is* 'bar'plot
     lines(r, tN, type='h', col='red', lwd=2)

     barplot(tN, space = 1.5, axisnames=FALSE,
             sub = "barplot(..., space= 1.5, axisnames = FALSE)")

     barplot(VADeaths, plot = FALSE)
     barplot(VADeaths, plot = FALSE, beside = TRUE)

     mp <- barplot(VADeaths) # default
     mp
     tot <- colMeans(VADeaths)
     tot
     text(mp, tot + 3, format(tot), xpd = TRUE, col = "blue")
     barplot(VADeaths, beside = TRUE,
             col = c("lightblue", "mistyrose", "lightcyan",
                     "lavender", "cornsilk"),
             legend = rownames(VADeaths), ylim = c(0, 100))
     title(main = "Death Rates in Virginia", font.main = 4)

######


#Graficos tradicionales
#graphics device

 x11()
     plot(1:200)
     x11()
     plot(rnorm(200),col="red")
     dev.set(dev.prev())
     abline(0,1)# de  1:200 puntos
     dev.set(dev.next())
     abline(h=-1, col="blue")# para el plot residual
     dev.set(dev.prev())
     dev.off(); dev.off()#cerrando los dos graficos devices
     ## Find (Not run)
  ?dev.print()

 x11()    )
     plot(rnorm(100), main="Grafico 1")
     dev.copy(device=x11)
     mtext("Copiando 4 ", 4)
     dev.print(width=7, height=7, horizontal=FALSE) # imprimiendo
     dev.off(dev.prev())
     dev.off()

     x11()
    pairs(iris)
    x11()
    plot(1:10)
    dev.off()


############

data(iris)
attach(iris)
subset<-sample(1:150,20)
cS<-as.character(Sp<-iris$Species[subset])
cS[Sp=="Setosa"]<-"S"
cS[Sp=="Versicolor"]<-"V"
cS[Sp=="Virginica"]<-"g"

ai<-agnes(iris[subset,1:4])
ai
plot(ai,method = "flexible", par.meth = 0.6)
plot(ai,labels=cS)
   #Tambien podemos representar los datos
   #myagnes <- agnes("datafile.dat")
   library(cluster)
op <- par(mfrow=c(2,2))
   ai1 <- agnes(daisy(iris[subset,1:4]), diss = TRUE, method = "complete")
plot(ai1)
ai1<- agnes(iris[subset,1:4], method = "flexible", par.meth = 0.6)
plot(ai1)
par(op)
#Usando otra base de datos
data(votes.repub)
agn1 <- agnes(votes.repub, metric = "manhattan", stand = TRUE)
agn1
plot(agn1)
x11()
dev.off()
op <- par(mfrow=c(2,2))
agn2 <- agnes(daisy(votes.repub), diss = TRUE, method = "complete")
plot(agn2)
agnS <- agnes(votes.repub, method = "flexible", par.meth = 0.6)
plot(agnS)
par(op)
     dev.list()
?stripchart()

  x <- stats::rnorm(50) #Genera 5 datos
     xr <- round(x, 1) #Aproxima y deja con 1 decimal
     stripchart(x) ;
     ?mean(par())
     m <- mean(par("usr")[1:2])
     text(m, 1.04, "stripchart(x, \"overplot\")")
     stripchart(xr, method = "stack", add = TRUE, at = 1.2)
     text(m, 1.35, "stripchart(round(x,1), \"stack\")")
     stripchart(xr, method = "jitter", add = TRUE, at = 0.7)
     text(m, 0.85, "stripchart(round(x,1), \"jitter\")")

     ?matplot()

     #####
         matplot((-5:5)^2, main = "Cuadratica") #Es muy similar al plot(*)
         #outer  #linea 1
     sines <- outer(1:20, 1:4, function(x, y) sin(x / 40 * pi * 2*y))
     #pch linea 10 de archivo Varios
     matplot(sines, pch = 1:4, type = "o", col = rainbow(ncol(sines)))
     matplot(sines, type = "b", pch = 21:23, col = 2:5, bg = 2:5,
             main = "matplot(cos(x / 2 * pi * y), pch = 21:23, bg = 2:5)")

     x <- 0:100/100
     x
     matplot(x, outer(x, 1:8, function(x, k) cos(k*pi * x)),
             ylim = c(-2,2), type = "plobcsSh",
             main= "matplot(,type = \"plobcsSh\" )")
     ## pch & type =  vector of 1-chars :
     matplot(x, outer(x, 1:4, function(x, k) sin(k*pi * x)),
             pch = letters[1:4], type = c("p","o","b"))

         matplot(x, outer(x, 1:4, function(x, k) sin(k*pi * x)),
             pch = letters[1:4], type = c("b","p","h"))
    #############

     table(iris$Species) # is data.frame with 'Species' factor
     iS <- iris$Species == "setosa"
     iV <- iris$Species == "versicolor"
     op <- par(bg = "bisque")
     matplot(c(1, 8), c(0, 4.5), type= "n", xlab = "Length", ylab = "Width",
             main = "Petal and Sepal Dimensions in Iris Blossoms")
     matpoints(iris[iS,c(1,3)], iris[iS,c(2,4)], pch = "sS", col = c(2,4))
     matpoints(iris[iV,c(1,3)], iris[iV,c(2,4)], pch = "vV", col = c(2,4))
     legend(1, 4, c("    Setosa Petals", "    Setosa Sepals",
                    "Versicolor Petals", "Versicolor Sepals"),
            pch = "sSvV", col = rep(c(2,4), 2))

     nam.var <- colnames(iris)[-5]
     nam.spec <- as.character(iris[1+50*0:2, "Species"])
     iris.S <- array(NA, dim = c(50,4,3),
                     dimnames = list(NULL, nam.var, nam.spec))
     for(i in 1:3) iris.S[,,i] <- data.matrix(iris[1:50+50*(i-1), -5])

     matplot(iris.S[,"Petal.Length",], iris.S[,"Petal.Width",], pch="SCV",
             col = rainbow(3, start = .8, end = .1),
             sub = paste(c("S", "C", "V"), dimnames(iris.S)[[3]],
                         sep = "=", collapse= ",  "),
             main = "Data iris Fisher's")
     par(op)
     ####
 
     ## Persian Rug Art:
     x <- y <- seq(-4*pi, 4*pi, len = 27)
     r <- sqrt(outer(x^2, y^2, "+"))
     opar <- par(mfrow = c(2, 2), mar = rep(0, 4))
     for(f in pi^(0:3))
       contour(cos(r^2)*exp(-r/f),
               drawlabels = FALSE, axes = FALSE, frame = TRUE)

     rx <- range(x <- 10*1:nrow(volcano))
     ry <- range(y <- 10*1:ncol(volcano))
     ry <- ry + c(-1,1) * (diff(rx) - diff(ry))/2
     tcol <- terrain.colors(12)
     par(opar); opar <- par(pty = "s", bg = "lightcyan")
     plot(x = 0, y = 0,type = "n", xlim = rx, ylim = ry, xlab = "", ylab = "")
     u <- par("usr")
     rect(u[1], u[3], u[2], u[4], col = tcol[8], border = "red")
     contour(x, y, volcano, col = tcol[2], lty = "solid", add = TRUE,
             vfont = c("sans serif", "plain"))
     title("A Topographic Map of Maunga Whau", font = 4)
     abline(h = 200*0:4, v = 200*0:4, col = "lightgray", lty = 2, lwd = 0.1)

     ## contourLines produces the same contour lines as contour
     line.list <- contourLines(x, y, volcano)
     plot(x = 0, y = 0,type = "n", xlim = rx, ylim = ry, xlab = "", ylab = "")
     u <- par("usr")
     rect(u[1], u[3], u[2], u[4], col = tcol[8], border = "red")
     contour(x, y, volcano, col = tcol[2], lty = "solid", add = TRUE,
                  vfont = c("sans serif", "plain"))
     templines <- function(clines) {
       lines(clines[[2]], clines[[3]])
     }
     invisible(lapply(line.list, templines))
     par(opar)
       ###########
     ?filled.contour
     require(grDevices) # for colours
     head(volcano)
     filled.contour(volcano, color = terrain.colors, asp = 1)# simple

     x <- 10*1:nrow(volcano)
     y <- 10*1:ncol(volcano)
     filled.contour(x, y, volcano, color = terrain.colors,
         plot.title = title(main = "The Topography of Maunga Whau",
         xlab = "Meters North", ylab = "Meters West"),
         plot.axes = { axis(1, seq(100, 800, by = 100))
                       axis(2, seq(100, 600, by = 100)) },
         key.title = title(main="Height\n(meters)"),
         key.axes = axis(4, seq(90, 190, by = 10)))# maybe also asp=1
     mtext(paste("filled.contour(.) from", R.version.string),
           side = 1, line = 4, adj = 1, cex = .66)

     # Annotating a filled contour plot
     a <- expand.grid(1:20, 1:20)
     b <- matrix(a[,1] + a[,2], 20)
     filled.contour(x = 1:20, y = 1:20, z = b,
                    plot.axes={ axis(1); axis(2); points(10,10) })

     ## Persian Rug Art:
     x <- y <- seq(-4*pi, 4*pi, len = 27)
     r <- sqrt(outer(x^2, y^2, "+"))
     filled.contour(cos(r^2)*exp(-r/(2*pi)), axes = FALSE)
     ## rather, the key *should* be labeled:
     filled.contour(cos(r^2)*exp(-r/(2*pi)), frame.plot = FALSE,
                    plot.axes = {})
                    ###############
                    ?image()
                     require(grDevices) # for colours
     x <- y <- seq(-4*pi, 4*pi, len=27)
     r <- sqrt(outer(x^2, y^2, "+"))
     image(z = z <- cos(r^2)*exp(-r/6), col=gray((0:32)/32))
     image(z, axes = FALSE, main = "La Matematica es maravillsa ! ...",
           xlab = expression(cos(r^2) * e^{-r/6}))
     contour(z, add = TRUE, drawlabels = FALSE)

     # Volcano data visualized as matrix. Need to transpose and flip
     # matrix horizontally.
     image(t(volcano)[ncol(volcano):1,])

     # A prettier display of the volcano
     x <- 10*(1:nrow(volcano))
     y <- 10*(1:ncol(volcano))
     image(x, y, volcano, col = terrain.colors(100), axes = FALSE)
     contour(x, y, volcano, levels = seq(90, 200, by = 5),
             add = TRUE, col = "peru")
     axis(1, at = seq(100, 800, by = 100))
     axis(2, at = seq(100, 600, by = 100))
     box()
     title(main = "Volcan Maunga Whau ", font.main = 4)

     ###
     ?symbols()   #Podemos realizar, triangulos, circulos, rectangulos,
   #  cuadrados, el vector dado por las longitudes de los lados de los cuadrados
   #Rectangulos, la matriz con 2 columnas, thermometers, la  matriz con tres o cuatro
   #columnas
     require(stats); require(grDevices)
     x <- 1:10
     y <- sort(10*runif(10))
     z <- runif(10)
     z3 <- cbind(z, 2*runif(10), runif(10))
     symbols(x, y, thermometers=cbind(.5, 1, z), inches=.5, fg = 1:10)
     symbols(x, y, thermometers = z3, inches=FALSE)
     text(x,y, apply(format(round(z3, digits=2)), 1, paste, collapse = ","),
          adj = c(-.2,0), cex = .75, col = "purple", xpd=NA)

     ## Note that  example(trees)  shows more sensible plots!
     N <- nrow(trees)
     with(trees, {
     ## Girth is diameter in inches
     symbols(Height, Volume, circles=Girth/24, inches=FALSE,
             main="Trees' Girth")# xlab and ylab automatically
     ## Colours too:
     palette(rainbow(N, end = 0.9))
     symbols(Height, Volume, circles=Girth/16, inches=FALSE, bg = 1:N,
             fg="gray30", main="symbols(*, circles=Girth/16, bg = 1:N)")
     palette("default")
     })
      #####Hasta aqui
      
     library(fdth)

       mousedown <- function(buttons, x, y) {
             plx <- grconvertX(x, "ndc", "user")
             ply <- grconvertY(y, "ndc", "user")
             cat("Buttons ", paste(buttons, collapse=" "), " at ndc",
                 x, y, "user", plx, ply, "\n")
             points(plx, ply, col="red", pch=21, cex=4)
             if (x > 0.75 && y > 0.75) "Done"
             else NULL
         }

         ####Graficos para realizar con el mouse
         mousemove <- function(buttons, x, y) {
             plx <- grconvertX(x, "ndc", "user")
             ply <- grconvertY(y, "ndc", "user")
             points(plx, ply)
             NULL
         }

         keybd <- function(key) {
             cat("Key <", key, ">\n", sep = "")
         }

         plot(0:1, 0:1, type='n')
         getGraphicsEvent("Click on upper right to quit",
                          onMouseDown = mousedown,
                          onMouseMove = mousemove,
                          onKeybd = keybd)
     ## End(Not run)
