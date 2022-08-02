smart_hclust<-  function(test_data, cluster_number){
   matr <- dist(test_data, method = "euclidean", diag = FALSE, upper = FALSE, p = 2)
   fit <- hclust(matr, method = "complete", members = NULL)
   test_data$cluster <- factor(cutree(fit, cluster_number))
   return(test_data)
}