#===p160===

library(ggplot2)
library(dplyr)

#문제 1
midwest<-as.data.frame(ggplot2::midwest)
midwest

midwest<-midwest%>%
        mutate(child= (poptotal-popadults)/poptotal*100)
midwest

#문제 2

midwest <- midwest %>%
          arrange(desc(child)) %>%
          select(child,county)%>%
          head(5)

#문제 3
midwest<- midwest %>%
  mutate(grade=ifelse(child>=40,"large",ifelse(child>=30,"middle","small")))

table(midwest$grade)

#문제 4

a=midwest %>%
  mutate(ratio_asian=(popasian/poptotal)*100) %>%
  arrange(ratio_asian) %>%
  select(state,county,ratio_asian)%>%
  head(10)
