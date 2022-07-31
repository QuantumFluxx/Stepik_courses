get_coefficients <- function(dataset){
  return(exp(glm(y~x,data = dataset,family = "binomial")$coef))
}