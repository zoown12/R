iris
class(iris)
iris[,5]
iris[1,]
mpg=ggplot2::mpg
x=boxplot(mpg$cty)
x

mpg[1,]
mpg[2,]
mpg[,2]
#===데이터 변환을 통해 -->factor변환 이름알아보기===
x=boxplot(mpg$cty)
x$stats[,1]
class(mpg$manufacturer)
#==manufacturer 제조사 알아보기==
mpg$manufacturer=as.factor(mpg$manufacturer)
class(mpg$manufacturer)
boxplot(mpg$manufacturer)
levels(mpg$manufacturer)
#==year 년도 알아보기==
mpg$year=as.factor(mpg$year)
class(mpg$year)
boxplot(mpg$year)
levels(mpg$year)
#==model 알아보기 ==
mpg$model=as.factor(mpg$model)
class(mpg$model)
levels(mpg$model)
boxplot(mpg$model)