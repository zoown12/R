library(ggplot2)
##========================================================##p183

mpg=ggplot2::mpg
#x축 displ, y축 hwy로 지정해 배경 생성
ggplot(data=mpg,aes(x=displ,y=hwy))

#배경에 산점도 추가
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()

#x축 범위 3~6으로 지정
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()+xlim(3,6)

#x축 범위 3~6,y축 범위 10~30으로 지정
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()+xlim(3,6)+ylim(10,30)

####  08-3  #####

##-----------------------------------------------------------##
#quiz
#data=mpg,x=cty,y=hwy 산점도 추가
ggplot(data=mpg,aes(x=cty,y=hwy))+geom_point()

#data=midwest,x=poptotal(50만명이하),y=popasian(1만명이하) 산점도 추가
ggplot(data=midwest,aes(x=poptotal,y=popasian))+geom_point()+
xlim(0,500000)+ylim(0,10000)
##-----------------------------------------------------------##
install.packages("dplyr")
library(dplyr)
class(mpg$drv)
as.factor(mpg$drv)
levels(mpg$drv)
df_mpg <-mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy=mean(hwy))

df_mpg

ggplot(data=df_mpg,aes(x=drv, y=mean_hwy))+geom_col()

#-는 큰순서대로 reorder=>크기 순서대로 
ggplot(data=df_mpg,aes(x=reorder(drv, -mean_hwy),y=mean_hwy)) + geom_col()

ggplot(data=mpg,aes(x=drv)) + geom_bar()

ggplot(data=mpg,aes(x=hwy)) + geom_bar()

####  08-4  ####

#Quiz
df<-mpg%>%
  filter(class=="suv")%>%
  group_by(manufacturer)%>% #제조사별로 출력
  summarise(mean_cty = mean(cty))%>% #평균구하기
  arrange(desc(mean_cty)) %>%
  head(5)

ggplot(data=df,aes(x=reorder(manufacturer,-mean_cty),y=mean_cty))+geom_col()

#Quiz
ggplot(data=mpg,aes(x=class)) + geom_bar()

#%>% ---> +랑같은 역할
ggplot(data=mpg,aes(x=year))+geom_bar()
ggplot(data=mpg,aes(x=model))+geom_bar()

#시계열 그래프
ggplot(data=economics,aes(x=date,y=unemploy))+geom_line()

#Quiz 개인 저축률
ggplot(data=economics,aes(x=date,y=psavert))+geom_line()

#QUiz 세 차종의 cty 상자 그림
df_class<-mpg%>%
  filter(class=="suv" & class=="subcompact"& class=="compact")
ggplot(data=df_class,aes(x=class,y=cty))+geom_boxplot()

df_class1<-mpg%>%
  filter(class %in% c("suv","compact","subcompact"))
ggplot(data=df_class1,aes(x=class,y=cty))+geom_boxplot()
