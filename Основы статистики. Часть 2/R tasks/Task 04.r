dat <- iris[, 1:4]
means <-colMeans(dat)
t_f <- t(t(dat)>means)
rowss <- rowSums(t_f)
iris$important_cases <- factor(ifelse(rowss>=3,"Yes","No"))