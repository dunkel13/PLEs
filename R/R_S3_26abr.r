Programa=c("Estadistica","Ingenieria Agroind","Lic en Matematicas","Matematica Aplicada","Matematicas","Matematicas Aplicadas","Matematicas enf Estad")
Programa
Programa=c("Estadistica","Ingenieria Agroind","Lic en Matematicas","Matematica Aplicada","Matematicas","Matematicas Aplicadas",Matematicas enf Estad)
#Error
Programa=c("Estadistica","Ingenieria Agroind","Lic en Matematicas","Matematica Aplicada","Matematicas","Matematicas Aplicadas","Matematicas enf Estad")
dim(Programa)
length(Programa)
7
Salario15=c(2592907,1326966,1838000,1430600,1759094,3000000,1272742)
TasaEmpl=c(90.2,87.5,100,100,67.5,66.7,45)
TasaEmpl15=c(90.2,87.5,100,100,67.5,66.7,45)
CarMat=data.frame(Programa,Salario15,TasaEmpl15)
CarMat
 Programa Salario15 TasaEmpl15
1           Estadistica   2592907       90.2
2    Ingenieria Agroind   1326966       87.5
3    Lic en Matematicas   1838000      100.0
4   Matematica Aplicada   1430600      100.0
5           Matematicas   1759094       67.5
6 Matematicas Aplicadas   3000000       66.7
7 Matematicas enf Estad   1272742       45.0
class(CarMat)
Salario14=c(2349370,NA,1758000,1640500,1526919,NA,1511086)
TasaEmpl14=c(88.7,NA,100,87.5,73.9,NA,50)
CarMat=cbind(CarMat,Salario14,TasaEmpl14)
CarMat
Programa Salario15 TasaEmpl15 Salario14 TasaEmpl14
1           Estadistica   2592907       90.2   2349370       88.7
2    Ingenieria Agroind   1326966       87.5        NA         NA
3    Lic en Matematicas   1838000      100.0   1758000      100.0
4   Matematica Aplicada   1430600      100.0   1640500       87.5
5           Matematicas   1759094       67.5   1526919       73.9
6 Matematicas Aplicadas   3000000       66.7        NA         NA
7 Matematicas enf Estad   1272742       45.0   1511086       50.0
InfMat=c("Informatica Mat",NA,NA,1420000,100)
CarMat=rbind(CarMat,InfMat)
CarMat
 Programa Salario15 TasaEmpl15 Salario14 TasaEmpl14
1           Estadistica   2592907       90.2   2349370       88.7
2    Ingenieria Agroind   1326966       87.5      <NA>       <NA>
3    Lic en Matematicas   1838000        100   1758000        100
4   Matematica Aplicada   1430600        100   1640500       87.5
5           Matematicas   1759094       67.5   1526919       73.9
6 Matematicas Aplicadas     3e+06       66.7      <NA>       <NA>
7 Matematicas enf Estad   1272742         45   1511086         50
8                  <NA>      <NA>       <NA>   1420000        100
CarMat[8,1]="Informatica Mat"
CarMat
levels(CarMat$Programa)
levels(CarMat$Programa)=cbind(levels(CarMat$Programa),"Informatica Mat")
levels(CarMat$Programa)
CarMat[8,1]="Informatica Mat"
CarMat
Salario13=c(2346300,NA,NA,NA,1423764,1292000,1101897,1765000)
TasaEmpl13=c(89.2,NA,NA,NA,71.8,50,68.8,100)
CarMat=cbind(CarMat,Salario13,TasaEmpl13)
CarMat
Salario15
CarMat$Salario15
class(CarMat$Salario15)
mean(CarMat$Salario15) #No promedio variables cualitativas
Salario15=as.numeric(Salario15)
CarMat$Salario15=as.numeric(CarMat$Salario15)
mean(CarMat$Salario15)
mean(CarMat$Salario15,na.rm=T)
CarMat$TasaEmpl15=as.numeric(CarMat$TasaEmpl15)
CarMat$TasaEmpl14=as.numeric(CarMat$TasaEmpl14)
CarMat$TasaEmpl13=as.numeric(CarMat$TasaEmpl13)
CarMat$Salario14=as.numeric(CarMat$Salario14)
CarMat$Salario13=as.numeric(CarMat$Salario13)
mean(CarMat$TasaEmpl15,na.rm=T)
mean(CarMat$Salario15,na.rm=T)
mean(CarMat$Salario14,na.rm=T)
mean(CarMat$TasaEmpl14,na.rm=T)
mean(CarMat$Salario13,na.rm=T)
mean(CarMat$TasaEmpl13,na.rm=T)
CarMat$PromSal=rowMeans(CarMat[,c(2,4,6)],na.rm=T)
CarMat
CarMat$PromTE=rowMeans(CarMat[,c(3,5,7)],na.rm=T)
CarMat
CarMat$sdSal=apply(CarMat[,c(2,4,6)],MARGIN=1,FUN=sd,na.rm=T)
CarMat
CarMat$PromTE=exp(apply(log(CarMat[,c(3,5,7)]),MARGIN=1,FUN=mean,na.rm=T))
a�o=c(2013,2014,2015)
plot(a�o,CarMat[1,c(2,4,6)])
plot(a�o,CarMat[1,c(6,4,2)])
plot(a�o,CarMat[1,c(6,4,2)],ylab="Salario Estad�stica")
colors()
plot(a�o,CarMat[1,c(6,4,2)],ylab="Salario Estad�stica",type="l",ylim=c(1000000,3500000))
lines(a�o,CarMat[3,c(6,4,2)],col="green")
points(a�o,CarMat[2,c(6,4,2)],col="red",pch=23)
lines(a�o,CarMat[4,c(6,4,2)],col="yellow")
lines(a�o,CarMat[5,c(6,4,2)],col="orange")
points(a�o,CarMat[6,c(6,4,2)],col="brown",pch=23)
lines(a�o,CarMat[7,c(6,4,2)],col="tan")
lines(a�o,CarMat[8,c(6,4,2)],col="violet")
cor(PromSal,PromTE)
[1] 0.06577715
plot(PromSal,PromTE)
CarMatS=CarMat[order(CarMat$PromSal),]
CarMatS=CarMat[order(CarMat$PromSal,decreasing=T),]
CarMatT=CarMat[order(CarMat$PromTE,decreasing=T),]
CarMatT
attach(CarMat)
CarMat$PromSal100=(PromSal*100)/2429526
CarMat$score=(PromSal100+PromTE)/2
Error: objeto 'PromSal100' no encontrado
CarMat$score=(CarMat$PromSal100+PromTE)/2
CarMat
CarMatF=CarMat[order(CarMat$score,decreasing=T),]
CarMatF
x=scan()
1: 2
2: 3
3: 16
4: 23
5: 14
6: 12
7: 4
8: 13
9: 2
10: 0
11: 0
12: 0
13: 6
14: 28
15: 31
16: 14
17: 4
18: 8
19: 2
20: 5
21: 
Read 20 items
sum(x)/length(x)
mean(x)
[1] 9.35
> median(x)
[1] 5.5
> mean(x[-15])
[1] 8.210526
> mean(x[-c(14,15)])
[1] 7.111111
> median(x[-15])
[1] 5
> mean(x,trim=.2)
[1] 7.25
> which(table(x)==max(table(x)))
0 2 
1 2 
> x
 [1]  2  3 16 23 14 12  4 13  2  0  0  0  6 28 31 14  4  8  2  5
> quantile(x,.25)
25% 
  2 
> quantile(x,c(.25,.5,.75))
 25%  50%  75% 
 2.0  5.5 14.0 
> quantile(x)
  0%  25%  50%  75% 100% 
 0.0  2.0  5.5 14.0 31.0 
> hist(x) #Frequency
hist(x,breaks=3)
hist(x,breaks=3,prob=T)
lines(density(x))
library(UsingR)
library(UsingR)
rbind(c(56,8),c(2,16))
x=matrix(c(56,2,8,16),nrow=2)
x
rownames(x)=c("con cintur�n","sin cintur�n")
colnames(x)=c("con cintur�n","sin cintur�n")
x
tmp=c("con cintur�n","sin cintur�n")
dimnames(x)=list(padre=tmp,hijo=tmp)
x
margin.table(x,1)
margin.table(x,2)
prop.table(x,1)
prop.table(x,2)
barplot(x,xlab="Padre")
barplot(x,xlab="Hijo")
barplot(x,xlab="Hijo",legend.text=T)
attach(kid.weights)
dim(kid.weights)
kid.weights[1:5,]
max(age)
144/12
plot(height,weight,pch=as.character(gender))
cor(height,weight)
zh=(height-mean(height))/sd(height)
kid.weights$zh=(height-mean(height))/sd(height)
kid.weights$zw=(weight-mean(weight))/sd(weight)
kid.weights[1:5,]
x=c(30,20,7,42,50,20)
rank(x)
cor(rank(height),rank(weight))
[1] 0.8822136
cor(height,weight,m="s")
[1] 0.8822136
height.2=kid.weights$height^2
cor(height.2,weight)
plot(weight~height.2)
res=lm(weight~height.2)
abline(res)
res
plot(BUCHANAN~BUSH, data=florida)
> res=lm(BUCHANAN~BUSH, data=florida)
> abline(res)
> with(florida, identify(BUSH,BUCHANAN,n=2,labels=County))
[1] 13 50
florida$County[c(13,50)]
 with(florida,predict(res,data.frame(BUSH=BUSH[50])))
       1 
796.8074 
> residuals(res)[50]
      50 
2610.193 
> library(MASS)
> abline(lqs(BUCHANAN~BUSH,data=florida),lty=3)
> abline(rlm(BUCHANAN~BUSH,data=florida,method="MM"),lty=4)
abline(lm(BUCHANAN~BUSH, data=florida, subset=-50),lty=2)
labels=c("lm","lm sin 50","min cuad recortados","regr robusta")
ltys=1:4
legend(50000,3000,legend=labels,lty=ltys)
attach(five.yr.temperature)
scatter.smooth(temps~days,col=gray(.75),bty="n")
lines(smooth.spline(temps~days),lty=2,lwd=2)
lines(supsmu(days,temps),lty=3,lwd=2)
legend(locator(1),lty=c(1,2,3),lwd=c(1,2,2),legend=c("scatter.smooth","smooth.spline","supsmu"))
