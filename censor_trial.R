source("CEPHaStat_3.1.R")

data.df<-read.table("Thickness.dat",header=F)
y<-as.vector(data.df$V1)
summa(y)
summaplot(y,"Soil thickness /cm")

log.y<-log(y)
summa(log.y)
summaplot(log.y,"Soil thickness /log cm")

censored.value<-log(99)
op<-mean_censor(log.y,censored.value,side.left=F,log.t=T)

colnames(op)
print(op)

##########
