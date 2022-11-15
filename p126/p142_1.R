library(readxl)
exam=read.csv("csv_exam.csv")
exam

library(dplyr)

exam2=exam %>%
  mutate(total=math+english+science)
exam2

exam %>%
  mutate(total7=math+english+science,
         mean7=(math+english+science)/3) %>%
  head(5)

exam %>%
  mutate(test=ifelse(mean7>=65, "passs","fail")) %>%
  head(10)

library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
mpg

mpg2=mpg%>%
  mutate(total=cty+hwy)%>%
  head(5)
mpg2

mpg2=mpg2%>%
  mutate(mean=(total/2))
mpg2

mpg2=mpg2%>%
  arrange(desc(mean))%>%
  head(3)
mpg2

mpg3=mpg%>%
  mutate(total=cty+hwy,
         mean=(total)/2)%>%
  arrange(desc(mean))%>%
  head(3)
mpg3  
