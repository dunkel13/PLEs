install.packages("SDaA")
library(SDaA)
data(agsrs)
View(agsrs)
dim(agsrs)
install.packages("XLConnect")
library(XLConnect)
wb=loadWorkbook("agsrs.xlsx", create=TRUE)
createSheet(wb, name="datos")
createName(wb, name="datos", formula="datos!A$1")
writeNamedRegion(wb, agsrs, name="datos")
saveWorkbook(wb)
