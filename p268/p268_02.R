encoding{UTF8}
useNIADic() 
library(KoNLP)
extractNoun("나는 지금 R을 공부하고 있다.")

txt=readLines("hiphop.txt")
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
