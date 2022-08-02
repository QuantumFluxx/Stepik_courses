smart_anova <- function(test_data){
  nm <- names(table(test_data$y))
  oden <- test_data$x[test_data$y == nm[1]]
  dva <- test_data$x[test_data$y == nm[2]]
  tre <- test_data$x[test_data$y == nm[3]]
  
  tes <- all(c(shapiro.test(oden)$p > 0.05,
               shapiro.test(dva)$p > 0.05,
               shapiro.test(tre)$p > 0.05,
               bartlett.test(x ~ y, test_data)$p.value > 0.05) == T)
  
  if (tes == T){
    fit <- aov(x ~ y, test_data)
    p <- summary(fit)[[1]]$'Pr(>F)'[1]
    names(p) <- "ANOVA"
    return(p)
  } else{
    p <- kruskal.test(x ~ y, test_data)$p.value
    names(p) <- "KW"
    return(p)
  }
}