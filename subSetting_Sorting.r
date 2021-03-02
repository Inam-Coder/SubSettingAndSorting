#sub-Setting and Sorting
set.seed(12435)
x<-data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var2"=sample(11:15))
x<-x[sample(1:5),]
x$var2[c(1,3)]=NA
x
#show the 1st row in x
x[1,]
#only show var2 in x 
x[,"var2"]
#
x[1:2,"var1"]
#logical operation
x[(x$var1<=3&x$var2>1),]
x[(x$var1<=3|x$var2>11),]
#sorting
#syntax, sort(x,decreasing=true,na.last=true)
sort(x$var1)
sort(x$var1,decreasing = TRUE)
sort(x$var2,decreasing = FALSE,na.last = TRUE)
#ordering in dataframe
x[order(x$var1),]
x[order(x$var1,x$var2),]
