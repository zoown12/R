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

