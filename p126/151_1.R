t1=data.frame(id=c(1,2,3,4,5),midterm=c(60,70,80,90,55))
t2=data.frame(id=c(1,2,3,4,5),final=c(70,83,65,95,80))

??left_join
library(dplyr)
t1_2=left_join(t1,t2,by="id")
t1_2

ex10=read.csv("ex1.csv")
ex11=read.csv("ex2.csv")


ex10_11=left_join(ex10,ex11,by="id")
ex10_11

ex10_11_new = ex10 %>%  
              left_join(ex10_11,by="class") %>%
              mutate(t_N=ifelse(is.na(class),"없어",teacher))
ex10_11_new

ex10_1=data.frame(id=c(11,12),class=c(6,2),math=c(50,60),english=c(50,60),science=c(50,60))

ex10_1
