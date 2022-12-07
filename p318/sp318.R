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

#==QUIZ===
d1=c(101:200)
d1
d1[10]
d1[-c(1:90)]
d1[seq(90,100,1)]
d1[seq(2,100,2)]
d20=d1[-c(1:20)]
d20[-5]
d20[c(-5,-7,-9)]