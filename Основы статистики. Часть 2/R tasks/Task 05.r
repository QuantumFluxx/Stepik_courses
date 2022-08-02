get_important_cases <- function(x){
means <- colMeans(x)
t_f <- t(t(x)>means)
rowss <- rowSums(t_f)
x$important_cases <- factor(ifelse(rowss>=ncol(x)%/%2+1,"Yes","No"))
return(x)
}
