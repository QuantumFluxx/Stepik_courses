get_pc <- function(d){
   xs <- prcomp(d)$x
   d$PC1 <- xs[,1]
   d$PC2 <- xs[,2]
   return(d)
 }