english <-c(90,80,60,70)
math<-c(50,60,100,20)
#데이터 프레임 생성
df_midterm<-data.frame(english,math)
df_midterm
#정보 추가
class<-c(1,1,2,2)
class
df_midterm<-data.frame(english,math,class)
df_midterm

#평균 구하기
mean(df_midterm$english)
mean(df_midterm$math)

#데이터 프레임 한번에 만들기
df_midterm=data.frame(english=c(100,50,30,90),
                      math=c(50,30,10,60),
                      class=c(1,4,5,2))
df_midterm

n1=data.frame(이름=c("김지훈","이유진","박동현","김민지"),
               영어점수=c(90,80,60,70),
              수학점수=c(50,60,100,20))
n1
mean(n1$영어점수)
mean(n1$수학점수)

#excel#
##---------------------------------------------------------##
install.packages("readxl")
library(readxl)

df_exam<-read_excel("excel_exam.xlsx") #엑셀 파일 불러와서 df_exam에 할당
df_exam

mean(df_exam$english)
mean(df_exam$math)

df_exam_novar<-read_excel("excel_exam_novar.xlsx")
df_exam_novar

df_exam_novar_7<-read_excel("excel_exam_novar.xlsx",col_names=F)
df_exam_novar_7

#엑셀 파일의 세 번째 시트에 있는 데이터 불러오기
df_exam_sheet<-read_excel("excel_exam_sheet.xlsx")
df_exam_sheet

df_exam_ex01<-read_excel("excel_ex01.xlsx")
df_exam_ex01
