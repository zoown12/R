library(ggiraphExtra)
library(ggplot2)
library(dplyr)

tbc=kormaps2014::tbc
kormap1 =kormaps2014::kormap1
gido_tbc=ggChoropleth(tbc,
                      aes(fill=NewPts,map_id =code, tooltip=name),
                      map=kormap1, interactive = T)
gido_tbc


#world map!!
??map_data
library(maps)
library(mapproj)
world = map_data(map='world')
world

#basic step 1 
ggplot(world,aes(x=long,y=lat,group=group))+geom_polygon()

#borderline point 국경표시
ggplot(world,aes(x=long,y=lat,group=group))+geom_polygon(color ='blue', fill='white')+
  coord_quickmap()

#3 위동/경도 표시
ggplot(world,aes(x=long,y=lat,group=group))+geom_polygon(color ='blue', fill='white')+
  coord_quickmap() +theme(panel.background = element_rect(fill='red'))

#4 국가별 색상 지정
install.packages("nord")
library(nord)

ggplot(world,aes(x=long,y=lat,group=group))+geom_polygon(aes(fill=region),color=NA,show.legend = FALSE) + scale_fill_nord('afternoon_prarie')+coord_quickmap()+theme_minimal()
