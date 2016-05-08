library(dplyr)
df <- data.frame("c1"=c(1,2,3),"c2"=c("one","two","three"))
print(filter(df,c1==1,c2=="two")) #Doesn't match
print(filter(df,c1==1,c2=="one")) #match and return the first row
#Below is baseR of way doing it
print ("Base R of way of doing thins")
print (df[df$c1==1 & df$c2=="one",])
#filter is more explicit and direct data manipulation

