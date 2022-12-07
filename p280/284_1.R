install.packages("DT")
library(DT)
library(kormaps2014)
library(stringi)
library(dplyr)
library(ggiraphExtra)
library(ggplot2)

korpop1 = kormaps2014::korpop1
korpop2 = kormaps2014::korpop2
korpop3 = kormaps2014::korpop3
str(changeCode(korpop1))
kormap2 = kormaps2014::kormap2
kormap3 = kormaps2014::kormap3

korpop1 <-rename(korpop1,pop=총인구_명 , name = 행정구역별_읍면동)
korpop3 <-rename(korpop3,pop=총인구_명 , name = 행정구역별_읍면동)

korpop1$name<-iconv(korpop1$name,"UTF-8","CP949")

korpop1_incheon <-korpop1$name

str(changeCode(kormap1))

areacode


#인천광역시 #11장,6장

areacode
korpop2 <-rename(korpop2,pop=총인구_명 , name = 행정구역별_읍면동)

korpop2_incheon <-korpop2 %>% filter(code<24000 & code>23000) 

ggChoropleth(data = korpop2_incheon,
             aes(fill=pop,
                 map_id=code,
                 tooltip=name),
             map=kormap2,
             interactive = T)

a1<-ggplot(korpop2_incheon, 
       aes(map_id=code, fill=pop))+
  geom_map(map=kormap2,colour="black",size=0.1)+
  expand_limits(x=kormap2$long, y=kormap2$lat)+
  scale_fill_gradientn(colours = c("white","orange","red"))+
  ggtitle("인천광역시 ggplot")+
  coord_map()

a1

#읍,면,동
korpop3_incheon <- korpop3 %>% filter(code<2400000 & code>2300000)
ggChoropleth(data = korpop3_incheon,
             aes(fill=pop,
                 map_id=code,
                 tooltip=name),
             map=kormap3,
             interactive = T)

areacode
a2<-ggplot(korpop3_incheon, 
           aes(map_id=code, fill=pop))+
  geom_map(map=kormap3,colour="black",size=0.1)+
  expand_limits(x=kormap3$long, y=kormap3$lat)+
  scale_fill_gradientn(colours = c("white","orange","red"))+
  ggtitle("인천광역시(읍/면/동) ggplot")+
  coord_map()
a2
