install.packages("mapproj")
install.packages("ggiraphExtra")
library(ggiraphExtra)

str(USArrests)
head(USArrests)

crime<-rownames_to_column(USArrests,var="state")
crime$state <- tolower(crime$state)

library(tibble)
str(crime)

library(ggplot2)
state_map = map_data("state")
str(state_map)

#단계 구분도
library(ggiraphExtra)
ggChoropleth(crime,aes(fill=Murder,
                       map_id=state),
                      map=state_map
                      )

#인터랙티브 단계구분도
ggChoropleth(crime,aes(fill=Murder, map_id = state),
              map=state_map
             )

ggChoropleth(crime,aes(fill=Murder, map_id = state),
             map=state_map, interactive = T
)


install.packages("stringi")

install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")
library(kormaps2014)



str(korpop1)
str(changeCode(korpop1))

library(dplyr)
korpop1=rename(korpop1, pop=총인구_명,name=행정구역별_읍면동)
korpop1$name = iconv(korpop1$name,"UTF-8","cp949")

str(changeCode(kormap1))

# korpop1 , korpop2 , korpop3 , kormap1, kormap2, kormap3

#p287 단계구분도

library(ggiraphExtra)

library(ggplot2)

ggChoropleth(data = korpop1,
             aes(fill=pop,
                 map_id=code,
                 tooltip=name),
             map=kormap1,
             interactive = T)

#인천광역시 
