# Takes a dataframe, column-name, value and repacement-value
# returns a new data-frame.
#Not in place change.
replaceValues <- function(dfv,col,value,rep) { 
  i <- which(dfv[,col] == value)  
  dfv[i,col]<-rep       
  dfv
}