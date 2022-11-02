library(readxl)
library(ggplot2)
exam=read.csv("csv_exam.csv")
exam
head(exam)
tail(exam,10)
View(exam)
dim(exam)
str(exam)
summary(exam)

#==p106
mpg=as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
dim(mpg)
str(mpg)

##ggplot2에 있는 데이터
?ggplot2

economics=as.data.frame(ggplot2::economics)
midwest=as.data.frame(ggplot2::midwest)

library(dplyr)
mpg7=rename(mpg,m7=model,y7=year)
eco7=rename(economics,d1=date,p1=pop)

#--p113
df<-data.frame(var1=c(4,3,8),var2=c(2,6,1))
df
df$var_sum<-df$var1+df$var2
df$var_sum

df$var_mean<-(df$var1+df$var2)/2
df$var_mean

#=--p115
mpg$total<-(mpg$cty+mpg$hwy)/2
mpg$total

head(mpg)
summary(mpg$total)

hist(mpg$total)

mpg$test =ifelse(mpg$total>=20,"pass","fail")
mpg$test

table(mpg$test)
?table
library(vctrs)

qplot(mpg$test)

mpg$grade =ifelse(mpg$total>=30,"A",
                  ifelse(mpg$total >=20,"B","c")
                  )

table(mpg$grade)
qplot(mpg$grade)

mpg$grade2<-ifelse(mpg$total>=30,"A",
                  ifelse(mpg$total>=25,"B",
                        ifelse(mpg$total>=20,"C","D")))
table(mpg$grade2)
qplot(mpg$grade2)


#==p123==
#Q1.
midwest2<-as.data.frame(ggplot2::midwest)
midwest2
#Q2.
midwest2<-rename(midwest2,total=poptotal,asian=popasian)
#Q3.
midwest2$rate=midwest7$asian/midwest7$total*100
hist(midwest$rate)
#Q4.
mean(midwest$rate)
midwest2$Wrate<-ifelse(midwest2$rate>=0.4872462,"larege","Small")
midwest2$wrate
#Q5.
table(midwest2$wrate)
qplot(midwest2$wrate)
