install.packages("ggplot2")
mpg=as.data.frame(ggplot2::mpg)

#==Q1(p331)==
class(mpg$drv)
mpg$drv=as.factor(mpg$drv)
mpg$drv
levels(mpg$drv)

a=1
b="hello"
class(a)
class(b)

#===백터에 이름붙이기===
v1=c(90,80,78)
v1
names(v1)=c("JOhn","Ami","James")
names(v1)[1]
names(v1)
v1[3]

#===백터의 인덱싱===
n1=c(1,4,3,6,7)
n1
n1[2]
n1[1:4]
n1[c(1,3,5)]
n1[-2]
n1[-c(3:5)]