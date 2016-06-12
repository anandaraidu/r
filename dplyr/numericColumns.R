getNumericColumns <- function(df) {
  names (which (sapply(colnames(df), function(x) is.numeric(df[,x]))) )
}
