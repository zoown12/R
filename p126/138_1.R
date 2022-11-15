exam %>% select(english)

exam %>% select(english,math,class)

exam%>%
  filter(class==1)
  select(english)
  
ex_id_eng=exam %>% select(id,english)

library(dplyr)
library(ggplot2)
#1번
mpg<-as.data.frame(ggplot2::mpg)

mpg_cc<-mpg%>%select(class,cty)
mpg_cc
head(mpg_cc)

#2번
mpg_suv<-mpg%>%filter(class=="suv")
mpg_compact<-mpg%>%filter(class=="compact")


mean(mpg_suv$cty)
mean(mpg_compact$cty)

#p141 1번

mpg_audi<-mpg%>%filter(manufacturer=="audi")
mpg_audi%>%arrange(hwy)%>%head(5)
