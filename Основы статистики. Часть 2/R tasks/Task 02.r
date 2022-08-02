smart_test <-  function(x){
  t <- table(x)
  if (min(t) >= 5){
    chi <- chisq.test(t)
    print(c(chi$statistic, chi$parameter, chi$p.value))
  }else {
    fisher.test(t)[1]
  }
}