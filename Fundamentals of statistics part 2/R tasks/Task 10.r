centered <- function(test_data, var_names){
means <- colMeans(test_data[var_names])
 transp <- t(t(test_data[var_names])-means)
 test_data[var_names] <- transp
 return(test_data)
}