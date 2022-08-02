max_resid <- function(x){
  chi_t <- chisq.test(table(x))$stdres
  ind <-  which(chi_t == max(chi_t), arr.ind = T)
  return(c(rownames(ind), rownames(t(chi_t))[ind[2]]))
}