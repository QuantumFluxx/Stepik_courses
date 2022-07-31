get_difference<-  function(test_data, n_cluster){
matr <- dist(test_data, method = "euclidean", diag = FALSE, upper = FALSE, p = 2)
   fit <- hclust(matr, method = "complete", members = NULL)
   cluster <- factor(cutree(fit, n_cluster))
   pe <- apply(X = test_data, MARGIN = 2, FUN = function(x){anova(aov(x ~ cluster, test_data))$P[1]})
   return(names(which(pe < 0.05)))
}