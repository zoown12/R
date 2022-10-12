useNIADic() 
library(KoNLP)
extractNoun("나는 지금 R을 공부하고 있다.")

txt=readLines("hiphop.txt",encoding="UTF-8")
head(txt,30)

library(stringr)
t1=str_replace_all(txt,"\\W"," ")
head(t1)

??str_replace_all

#===명사만 추출===
extractNoun(t1)
useNIADic()
noun=extractNoun(t1)

word_cnt=table(unlist(noun))

df_word=as.data.frame(word_cnt,stringsAsFactors = F)

#=====p269===
library(KoNLP)
useNIADic()
ex1=extractNoun("우리는 지금 10장 텍스트마이닝을 공부하고 있다. 10장은 마이닝 공부입니다.")
head(ex1)

word_ex1=table(unlist(ex1))
df_word_ex1=as.data.frame(word_ex1,stringsAsFactors = F)
#=p269====
txt=readLines("hiphop.txt",encoding = "UTF-8")
library(stringr)
txt=str_replace_all(txt,"\\w", " ")
noun=extractNoun(txt)
wordcount=table(unlist(noun))#unlist로 만들기
df_word=as.data.frame(wordcount,stringsAsFactors = F)
library(dplyr)
df_word=rename(df_word,word=Var1,freq=Freq)#dataframe이름 변경
df_word=filter(df_word,nchar(word) >=2) #두글자 이상인것을 다시 저장

top2=df_word %>%
  arrange(desc(freq)) %>%
  head(2)
top2

top_20=df_word %>%
  arrange(desc(freq))%>%
  head(20)
library(ggplot2)
ggplot(top_20,aes(x=word,y=freq)) +
  geom_col()+
  coord_flip()

#=====wordcloud============
install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)
pal=brewer.pal(8,"Dark2")
set.seed(1234)
wordcloud(df_word$word,df_word$freq,min.freq=2,max.words=300,
          random.order=F,
          rot.per = .1,
          scale=c(4,0,3), #가장 큰 사이즈는 4 작은사이즈 0.3
          colors=pal)
