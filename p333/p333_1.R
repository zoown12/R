#==데이터 프레임 만들기==
x1<-data.frame(var1=c(1,2,3),var2=c("a","b","c"))
x1
class(x1)

#==데이터 프레임만들기 2==
v1=1:3
v1_c=c(4,5,6)
v2=c("a","b","c")
df1=data.frame(v1,v1_c)
df1
df2=data.frame(v1,v2)
df2
df3=data.frame(v1_c,v2)
df3
class(df1)
class(df2)
df4=data.frame(df1,c(1,3,5))
df4
class(df4)
df5=data.frame(df1,df2)
df5