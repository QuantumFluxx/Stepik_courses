get_features <- function(dataset){
  dataset$is_prohibited <- factor(dataset$is_prohibited)
  dataset$type <- factor(dataset$type)
  fit <- glm(is_prohibited ~ ., data = dataset, family = "binomial")
  result <- anova(fit, test = "Chisq")[5]
  otvet <- rownames(result)[result<0.05 & is.na(result)!=T]
  if (length(otvet)==0){
    return("Prediction makes no sense")
  } else{
    return(otvet)
  }
}