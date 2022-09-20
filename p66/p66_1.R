##----------p66-------------##
#변수 만들기
x=c(1,2,3,10)
x
#변수 적용하기
max(x)
min(x)

str5=c("Hello","world","is","good")
str5
paste(str5,collapse=",")# 쉼표를 구분자로 str4의 단어들 하나로 합치기
paste(str5,collapse=" ")
paste(str5,collapse="kkkk")

x_mean<-mean(x)
x_mean

str5_paste<-paste(str5,collapse=" ")
str5_paste


#### 03-3(p74) ####
library(ggplot2) #packages에서 ggplot2 불러오기

#여러 문자로 구성된 변수 생성
x1<-c("a","b","b","c")
x1
#빈도 그래프 출력
qplot(x1)

##------------------------------------------------------(p75)##
mpg=ggplot2::mpg
#data에 mpg,x축에 hwy변수 지정하여 그래프 생성
qplot(data=mpg,x=hwy)

#x축 cty
qplot(data=mpg,x=cty)

#x축drv,y축 hwy
qplot(data=mpg,x=drv,y=hwy)

#x축 drv, y축 hwy, 선 그래프 형태
qplot(data=mpg,x=drv,y=hwy,geom="line")

#x축 drv,y축 hwy,상자 그림형태
qplot(data=mpg,x=drv,y=hwy,geom="boxplot")

#x축 drv,y축 hwy,상자 그림 형태,drv별 색 표현
qplot(data=mpg,x=drv,y=hwy,geom="boxplot",colour=drv)

#qplot 함수 매뉴얼 출력
?qplot

#quiz
#1.
score=c(80,60,70,50,90)
score
#2.
mean(score)
#3.
avg=mean(score)
avg