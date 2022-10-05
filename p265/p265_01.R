install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")
source("https://install-github.me/talgalili/installr")
installr::install.java()


library(rJava)
library(KoNLP)
library(dplyr)

install.packages("remotes")
remotes::install_github("haven-jeon/KoNLP",upgrade="never",INSTALL_opts=c("--no-multiarch"),force=T)
.libPaths()

install.packages("multilinguer")
library(multilinguer)
install_jdk()

install.packages(c("stringr","hash","tau","Sejong","RSQLite","devtools"),type="binary")
