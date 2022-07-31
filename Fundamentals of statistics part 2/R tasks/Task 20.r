library(dplyr)
 get_pca2 <- function(data){
   fit <- prcomp(data)
   cumulative <- summary(fit)$importance[3,]
   nums <- min(which((cumulative >= 0.9) == TRUE))
   pcs <- as.data.frame(fit$x) %>% select(1:nums)
   return(cbind(data, pcs))
 }