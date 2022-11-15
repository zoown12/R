#1번
library(ggplot2)
library(dplyr)


mpg=as.data.frame(ggplot2::mpg)

a_displ<- mpg%>%filter(displ<=4)
b_displ<-mpg%>%filter(displ>=5)

mean(a_displ$hwy)
mean(b_displ$hwy)

#2번

a_manufacturer<-mpg%>%filter(manufacturer=="audi")
b_manufacturer<-mpg%>%filter(manufacturer=="toyota")

mean(a_manufacturer$hwy)
mean(b_manufacturer$hwy)

#3번

all_manufacturer<-mpg%>%filter(manufacturer%in%c("chevrolet","ford","honda"))
mean(all_manufacturer$hwy)
