library(ggplot2)
obj <- ggplot(iris, aes(Sepal.Length))+
  geom_density(aes(fill = Species),alpha = 0.2)