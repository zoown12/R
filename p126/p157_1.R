fuel <- data.frame(f1=c("c","d","e","p","r"),
                   price_f1=c(2.35,2.38,2.11,2.76,2.22),
                   stringsAsFactors = F)

fuel


#==p157 퀴즈 1 ==
library(dplyr)
library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
mpg

mpg<-mpg%>%
  left_join(mpg,fuel,by = "f1")

#==p157 퀴즈 2 ==

mpg<-mpg %>%
  select(model,f1,price_f1)%>%
  head(5)
