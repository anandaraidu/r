kfold <- function(n,k){
  
  sampled <- sample(n)

  res <- vector("list",k) #create k empty lists
  
  sz <- round(n/k)
  
  s <- 1 #start index
  e <- sz
  k <- k -1 
  
  #we can get rid of this for loop and make it lapply
  for (i in (1:k)) {    
    res[[i]] <- sampled[s:e]
    s <- s + sz
    e <- e + sz
  }  
  res[[i+1]] <- sampled[s:n]
  res
}
