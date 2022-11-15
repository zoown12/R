library(dplyr)
library(ggplot2)
exam=read.csv("csv_exam.csv")
exam

exam%>%filter(class==1)
exam%>%filter(class==2)

exam%>%filter(class!=1)
exam%>%filter(class!=2)

exam%>%filter(math>50)
exam%>%filter(math<50)
exam%>%filter(math==50)

exam%>%filter(english<60)
exam%>%filter(english>90)

exam%>%filter(class==1 & english>90)

exam%>%filter(class==1|class==2)
exam%>%filter(class==1|math==40)
exam%>%filter(math>=50|english<40)