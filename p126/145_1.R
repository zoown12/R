library(ggplot2)
exam %>% 
  group_by(class) %>%
  summarise(mean_math=mean(math))

exam%>%filter(class==1)
exam%>%filter(class==2)

exam%>%
  group_by(class) %>%
  summarise(mean_m = mean(math),
            sum_m=sum(math),
            median_m=median(math),
            n_m =n()
  )

mpg%>%
  group_by(manufacturer,drv) %>%
  summarise(mean_cty=mean(cty)) %>%
  head(10)

a=mpg%>%
  group_by(manufacturer)%>%
  filter(class=="SUV")%>%
  mutate(tot=(cty+hwy)/2)%>%
  summarise(mean_tot=mean(tot))%>%
  arrange(desc(mean_tot)) %>%
  head(5)

#=========p150================
#문제 1

b=mpg%>%
  group_by(class) %>%
  summarise(mean_cty=mean(cty))
b

#문제 2

c=mpg%>%
  group_by(class)%>%
  summarise(mean_cty=mean(cty))%>%
  arrange(desc(mean_cty))
c

#문제 3
d=mpg%>%
  group_by(class)%>%
  summarise(mean_cty=mean(cty))%>%
  arrange(desc(mean_cty))%>%
  head(3)
d

#문제 4
f=mpg%>%
  group_by(manufacturer)%>%
  filter(class=="compact")%>%
  summarise(count=n())%>%
  arrange(desc(count))
f
