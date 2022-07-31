normality_test <- function(dataset){
return(unlist(sapply(dataset[sapply(dataset, is.numeric)], shapiro.test)["p.value",]))
}