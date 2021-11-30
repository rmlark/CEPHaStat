library(saemix)
library(RColorBrewer)

source("CEPHaStat_3.2.R")

###########################################################################
#  Example 1.  Fitting a single model to one set of measurements

data.df<-read.table("wrcExample.dat",header=T)

plot.wrc.data(data.df,hvar="h",thetavar="theta")


init.vals<-c(0.05,0.5,0.05,1.5)

op<-VanGenuchten.fit.single(data.df,init.vals)
plot.wrc.data(data.df,op$Coefficient.estimates,hvar="h",thetavar="theta")

index.values<-SQ.indices(op$Coefficient.estimates)

print.indices(index.values,ret=F)


###########################################################################
#  Example 2.  Fitting a single model to replicated data

data.df<-read.table("wrcZambia.dat",header=T,stringsAsFactors=T)
names(data.df)

plot.wrc.data(data.df,hvar="h",thetavar="theta",main="Three Acrisols from Zambia")

init.vals<-c(0.05,0.5,0.05,1.5)
op<-VanGenuchten.fit.group(data.df,init.vals,"Sample")

plot.wrc.data(data.df,op$Coefficient.estimates,hvar="h",thetavar="theta",main="Three Acrisols from Zambia")

index.values<-SQ.indices(op$Coefficient.estimates)

print.indices(index.values,ret=F)

###########################################################################
#  Example 3.  Fitting a model to data with different classes and testing for differences

data.df<-read.table("wrcZimbabwe.dat",header=T,stringsAsFactors=T)
names(data.df)

plot.wrc.data(data.df,hvar="h",thetavar="theta",
xlab="Tension /kPa",maxth=-1,groups="FAO_class",main="Zimbabwe soils")

par.var.null<-c(0,0,0,0)  #Which parameters differ between groups in null model?
par.var.full<-c(1,1,1,1)  #Which parameters differ between groups in full model?

op<-VanGenuchten.fit.compare(data.df,init.vals,g.name="Sample",par.var.null,
par.var.full,cov.name="FAO_class")

print(op)

plot.wrc.data(data.df,op$Coefficient.estimates,groups="FAO_class",hvar="h",thetavar="theta",main="Zimbabwe soils")

index.values<-SQ.indices(op$Coefficient.estimates)

print.indices(index.values,ret=F)


