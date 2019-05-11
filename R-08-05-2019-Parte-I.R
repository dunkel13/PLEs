library(MASS)
library(lattice) # load in the package
library(UsingR)
data(babies)
attach(babies)
trellis.device(bg="white") # set background to white
options(lattice.theme="col.whitebg")
histogram( ~ wt | factor(smoke), data=babies,subset=wt != 999, type="density")

densityplot( ~ wt | factor(smoke), data=babies)

bwplot(gestation ~ factor(inc), data=babies,subset = gestation !=99)
histogram( ~ wt | factor(smoke), data=babies,subset=wt != 999, type="density")
densityplot( ~ wt | factor(smoke), data=babies)


attach(mtcars)




# create factors with value labels
gear.f<-factor(gear,levels=c(3,4,5),
   labels=c("3gears","4gears","5gears"))
cyl.f <-factor(cyl,levels=c(4,6,8),
   labels=c("4cyl","6cyl","8cyl"))

# kernel density plot
densityplot(~mpg,
   main="Density Plot",
   xlab="Miles per Gallon")

# kernel density plots by factor level
densityplot(~mpg|cyl.f,
   main="Density Plot by Number of Cylinders",
   xlab="Miles per Gallon")
#Estimación no paramétrica de funciones de densidad (Método Kernel)
# kernel density plots by factor level (alternate layout)
densityplot(~mpg|cyl.f,
   main="Density Plot by Numer of Cylinders",
   xlab="Miles per Gallon",
   layout=c(1,3))

# boxplots for each combination of two factors
bwplot(cyl.f~mpg|gear.f,
   ylab="Cylinders", xlab="Miles per Gallon",
   main="Mileage by Cylinders and Gears",
   layout=(c(1,3))

# scatterplots for each combination of two factors
xyplot(mpg~wt|cyl.f*gear.f,
   main="Scatterplots by Cylinders and Gears",
   ylab="Miles per Gallon", xlab="Car Weight")

# 3d scatterplot by factor level
cloud(mpg~wt*qsec|cyl.f,
   main="3D Scatterplot by Cylinders")

# dotplot for each combination of two factors
dotplot(cyl.f~mpg|gear.f,
   main="Dotplot Plot by Number of Gears and Cylinders",
   xlab="Miles Per Gallon")

# scatterplot matrix
splom(mtcars[c(1,3,4,5,6)],
   main="MTCARS Data")
   
   ##Variables aleatorias discretas
   k= 0:4
p=c(1,2,3,2,1)/9
plot(k,p,type="h",xlab="k",
ylab="probability",ylim=c(0,max(p)))
points(k,p,pch=16,cex=2)

(k<-0:2)
(p<-c(1,2,1)/4 )
sample(k,size=1,prob=p,replace=T)
#[1] 0
sample(k,size=1,prob=p)

sample(1:6,size=1,replace=T) + sample(1:6, size=1,replace=T)
#[1] 5
sample(1: 6, size=1)+sample(1 : 6, size=1)

#Muestras aleatorias generadas por sample()
sample(0:1,size=10,replace=TRUE)
sample(1:6,size=10,replace=TRUE)

sample(rep(0:1,c(3200,6800)),size=10,replace=T)
sample(0:1,size=10,replace=T,prob=c(1-.62,.62))#Probabilidad (1-p),# p


# Uniforme(a,b)  f(x)=x/(b-a)
dunif(x=1,min=0,max=3)
punif(q=1,min=0,max=3)
qunif(p=1/3,min=0,max=3)
runif(n=10,min=0,max=3)

#Bernoulli(p) f(x)=p^x(1-p)^(1-x)
n=10; p=1/4
sample(0:1, replace=T, size=n, prob=c(1-p,p))
n=10; p=1/4
sample(0:1, replace=T, size=n, prob=c(1-p,p))
set.seed(352019)
sample(0:1, replace=T, size=n, prob=c(1-p,p))
set.seed(352019)
sample(0:1, replace=T, size=n, prob=c(1-p,p))
set.seed(352019)
runif(n=10,min=0,max=3)
set.seed(352019)
runif(n=10,min=0,max=3)
n=100; p=1/2
muestra=sample(0:1, replace=T, size=n, prob=c(1-p,p))
table(muestra)

res = runif(50, min=0, max=10)
## fig= setting uses bottom 35% of diagram
par(fig=c(0,1,0,.35))
boxplot(res,horizontal=TRUE, bty="n", xlab="uniform
sample")
## fig= setting uses top 75% of figure
par(fig=c(0,1,.25,1), new=TRUE)
hist(res, prob=TRUE, main="", col=gray(.9))
lines(density(res),lty=2)
curve(dunif(x, min=0, max=10), lwd=2, add=TRUE)
rug(res)

#Binomial
# n=10, P(X=5), p=1/2
choose(10,5)*(1/2)^5*(1/2)^(10-5)
dbinom(5,size=10,prob=1/2)
#P(X<=5)
pbinom(5,10,1/2)
#[1] 0.6230469
sum(dbinom(0:5,10,1/2))
#[1] 0.6230469
qbinom(p=1/2,size=10,prob=1/2)
#[1] 5
qbinom(0.62,size=10,prob=1/2)
#[1] 5
pbinom(4,10,1/2)
#[1] 0.3769531
qbinom(0.38,size=10,prob=1/2)
#[1] 5
fx=dbinom(0:10,size=10,prob=1/2)
plot(0:10,fx,type="h",main="Distribución Binomial",xlab="x",ylab="f(x)")
points(0:10,fx,pch=16,cex=2)

(a0<- (choose(4,0)*(0.1)^0*((0.9)^4)))
dbinom(0,4,0.1)
(a<- (choose(4,1)*(0.1)*((0.9)^3)))
dbinom(1,4,0.1)
(b<-(choose(4,2)*(0.1)^2*((0.9)^2)))
dbinom(2,4,0.1)
(c1<-(choose(4,3)*(0.1)^3*((0.9)^3)))
dbinom(3,4,0.1)
(d<-(choose(4,4)*(0.1)^4*((0.9)^0)))
dbinom(4,4,0.1)
(tabla <- data.frame(Pr=dbinom(0:4, size=4, prob=0.1)))

op <- par(mfrow = c(1, 1),bg = "antiquewhite")
par(lty="dashed")
par(col="red")
x <- 0:4
plot(x, dbinom(x, size=4, prob=0.1),
xlab="Numero de sucesos",
ylab="Funcion de Probabilidad",
main="Distribucion Binomial n= 4,
Probabilidad de suceso = 0.1", type="h")
points(x, dbinom(x, size=4, prob=0.1), pch=16)
abline(h=0, col="blue")
remove(x)

op <- par(mfrow = c(1, 1),bg = "antiquewhite")
par(lty="dashed")
par(col="red")
x <- 0:4
x <- rep(x, rep(2, length(x)))
plot(x[-1], pbinom(x, size=4, prob=0.1)[-length(x)],
xlab="Numero de sucesos",
ylab="Probabilidad acumulativa",
main="Distribucion Binomial: n= 4,
Probabilidad de suceso = 0.1", type="l")
abline(h=0, col="gray")
remove(x)
#        Explicando la funcion rep, que se refiere a
#repeticion:
rep(0:4, c(2,2,2,2,2))
#[1] 0 0 1 1 2 2 3 3 4 4
#Para graficar la funcion de distribucion de v.a.
#discretas, y realizar los escalones.
x <- 0:4;x <- rep(x, rep(2, length(x)))
x
#[1] 0 0 1 1 2 2 3 3 4 4
x[-3]
#[1] 0 0 1 2 2 3 3 4 4
x[-3] #, es retirar el tercer 3 elemento.

#Hallando los cuantiles
pbinom(q, 4, prob=0.1, lower.tail = TRUE, log.p = FALSE)
#lower.tail = TRUE ;Cola a la derecha
pbinom(1, 4, prob=0.1, lower.tail = TRUE, log.p = FALSE)
#0.9477
pbinom(2, 4, prob=0.1, lower.tail = TRUE, log.p = FALSE)
#[1] 0.9963
pbinom(3, 4, prob=0.1, lower.tail = TRUE, log.p = FALSE)
#[1] 0.9999
pbinom(4, 4, prob=0.1, lower.tail = TRUE, log.p = FALSE)
#[1] 1

#Hallando el conjunto de los valores mas pequenos posibles
#de la variable B(4,0.1), la cual
#tiene una probabilidad de ocurrir al 95%.
#Los cuantiles Binomiales
qbinom(c(0.95), size=4, prob=0.1, lower.tail=TRUE)
#[1] 2
pbinom(1, 4, prob=0.1, lower.tail = TRUE, log.p = FALSE)
#[1] 0.9477
pbinom(2, 4, prob=0.1, lower.tail = TRUE, log.p = FALSE)
#[1] 0.9963


(Tabla <- data.frame(dbino=dbinom(0:20,
size=20, prob=0.1),pbino=pbinom(0:20,
size=20, prob=0.1)))
head(Tabla)
(rownames(Tabla)<-0:20)

par(mfrow=c(1,2),bg="antiquewhite")
par(lty="dashed")
par(col="blue")
plot(dbinom(0:10, size=10, prob=1/4),col="red",
type="h", main="f p B(10,1/4)")
plot(dbinom(0:10, size=10, prob=1/2),col="red",
type="h",main="f p B(10,1/2)")

par(mfrow=c(1,3),bg="antiquewhite")
par(lty="dashed")
par(col="blue")
plot(dbinom(0:5, size=5, prob=1/5),col="red",
type="h",main="f p B(5,1/5)")
plot(dbinom(0:5, size=5, prob=0.4),col="red",
type="h",main="f p B(5,0.4)")
plot(dbinom(0:5, size=5, prob=0.6),col="red",
type="h",main="f p B(5,0.6)")

# D. Hipergeometrica
par(mfrow=c(1,2),bg="antiquewhite")
par(lty="dashed")
par(col="blue")
x<-0:4
plot(x,dhyper(0:4, m=4, n=6, k=4),type="h",
main=" fp H(10,4,4)",col="red",
xlab="x<-0:4")
plot(x,phyper(0:4, m=4, n=6, k=4),type="h",
main=" Fp H(10,4,4)",col="red",
xlab="x<-0:4")

(Table<-data.frame(dhiper=dhyper(0:4, m=4, n=6, k=4),
phiper=phyper(0:4, m=4, n=6, k=4)))
(rownames(Table)<-0:4)
Table
par(mfrow=c(1,2),bg="antiquewhite")
par(lty="dashed")
par(col="blue")
x1<-0:5
plot(x1,dhyper(0:5, m=4, n=6, k=5),type="h",
main=" fp H(10,4,5)",col="red",
xlab="x<-0:5")
plot(x1,phyper(0:5, m=4, n=6, k=5),type="h",
main=" Fp H(10,4,5)",col="red",
xlab="x<-0:5")

(Table<-data.frame(dhiper=dhyper(0:5, m=4, n=6, k=5),
phiper=phyper(0:5, m=4, n=6, k=5)))
(rownames(Table)<-0:5)
Table

#D. Poisson
par(mfrow=c(1,2),bg="antiquewhite")
par(lty="dashed")
par(col="blue")
x<-0:5
plot(x,dpois(0:5,lambda =0.5),type="h",
main=" fp P(0.5)",col="red",
xlab="x<-0:5")
plot(x,ppois(0:5,lambda =0.5),type="h",
main=" Fp P(0.5)",col="red",
xlab="x<-0:5")

(Table<-data.frame(dpoisson=dpois(0:5,lambda =0.5),
ppoison=ppois(0:5,lambda =0.5)))
(rownames(Table)<-0:5)
Table

par(mfrow=c(1,2),bg="antiquewhite")
par(lty="dashed")
par(col="blue")
x<-0:5
plot(x,dpois(0:5,lambda =1),type="h",
main=" fp P(1.0)",col="red",
xlab="x<-0:5")
x1<-0:12
plot(x1,dpois(0:12,lambda =4),type="h",
main=" fp P(4)",col="red",
xlab="x<-0:12")

#D.Geometrica
par(mfrow=c(1,2),bg="antiquewhite")
par(lty="dashed")
par(col="blue")
x<-0:5
plot(x,dgeom(0:5,prob=0.5),type="h",
main=" fp G(0.5)",col="red",
xlab="x<-0:5")
plot(x,pgeom(0:5,prob=0.5),type="h",
main=" Fp G(0.5)",col="red",
xlab="x<-0:5")


# D. Normal
dnorm(1.5,mean=0,sd=1)
pnorm(1.5,mean=0,sd=1)
pnorm(2,mean=0,sd=1)-pnorm(-2,0,1)
#[1] 0.9544997
 pnorm(1,mean=0,sd=1)-pnorm(-1,0,1)
#[1] 0.6826895
pnorm(3,mean=0,sd=1)-pnorm(-3,0,1)
#[1] 0.9973002
qnorm(c(.25,.5,.75))
#[1] -0.6744898  0.0000000  0.6744898


#Exponencial
res = rexp(50, rate=1/5)
## boxplot
par(fig=c(0,1,0,.35))
boxplot(res, horizontal=TRUE, bty="n",xlab="exponential sample")
#  histogram
par(fig=c(0,1,.25,1))
## store values, then find largest y one to set ylim=
tmp.hist = hist(res, plot=FALSE)
tmp.edens = density(res)
tmp.dens = dexp(0, rate=1/5)
y.max = max(tmp.hist$density, tmp.edens$y, tmp.dens)
hist(res, ylim=c(0,y.max), prob=TRUE, main="",col=gray(.9))
lines(density(res), lty=2)
curve(dexp(x, rate=1/5), lwd=2, add=TRUE)


