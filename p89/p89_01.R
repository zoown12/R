df_ex2=data.frame(id=c(11,12,13,15),name=c('kim','Lee','park','Lee'))

class(df_ex2)

write.csv(df_ex2,file="df_ex2.csv") #excel 저장
save(df_ex2,file="df_ex2.rda") # R date 저장

df_ex2_rad=load("df_ex2.rda") #R date 불러오기
df_ex2

csv_df_ex2=read.csv("df_ex2.csv") #excel 불러오기
csv_df_ex2

xls_df_ex2=read_excel("excel_ex_1.xlsx")

??read_excel
library(readxl)