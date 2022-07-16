{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "39dee189",
   "metadata": {},
   "source": [
    "Усложним предыдущую задачу! Напишите функцию get_pca2, которая принимает на вход dataframe с произвольным числом количественных переменных. Функция должна рассчитать, какое минимальное число главных компонент объясняет больше 90% изменчивости в исходных данных и добавлять значения этих компонент в исходный dataframe в виде новых переменных."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "43d2e075",
   "metadata": {},
   "outputs": [],
   "source": [
    "library(dplyr)\n",
    " get_pca2 <- function(data){\n",
    "   fit <- prcomp(data)\n",
    "   cumulative <- summary(fit)$importance[3,]\n",
    "   nums <- min(which((cumulative >= 0.9) == TRUE))\n",
    "   pcs <- as.data.frame(fit$x) %>% select(1:nums)\n",
    "   return(cbind(data, pcs))\n",
    " }"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "3.6.1"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
