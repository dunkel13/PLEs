a <- matrix(rnorm(25), 5 ,5)
x=xtable(a,align=rep("",ncol(a)+1)) # We repeat empty string 6 times
print(x, floating=FALSE, tabular.environment="pmatrix", 
        hline.after=NULL, include.rownames=FALSE, include.colnames=FALSE)
