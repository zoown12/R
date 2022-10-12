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