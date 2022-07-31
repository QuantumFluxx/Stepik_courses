is_multicol <- function(d){
  corel <- cor(d)
  diag(corel) <- 0
  abss <- abs(corel)
  truesi <- round(abss, digits = 2) == 1
  rows <- rownames(which(truesi, arr.ind = T))
  len <- length(rows)
  if (len!=0){
    return(rows)
  }else{
    return("There is no collinearity in the data")
  }
}