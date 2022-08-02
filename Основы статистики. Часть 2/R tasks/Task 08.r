library("ggplot2")
obj <- ggplot(diamonds,aes(x = color, fill = cut))+
 geom_bar(position = "dodge")
