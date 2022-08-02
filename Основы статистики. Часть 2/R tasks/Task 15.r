library(dplyr)
normality_by <- function(test){
  nm <- names(test)
  tabl <- test %>%
    group_by(y, z) %>%
    summarise(shapiro.test(x)$p)
  names(tabl) <- c(nm[2],nm[3],"p_value")
  return(tabl)
}