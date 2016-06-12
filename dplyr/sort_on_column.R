df <- df[order(df$c3),]
#Using the dplyr version
arrange(df,c1)
