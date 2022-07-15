{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "892f1dd8",
   "metadata": {},
   "source": [
    "Обобщим предыдущую задачу! Напишем функцию get_important_cases, которая принимает на вход dataframe с произвольным числом количественных переменных (гарантируется хотя бы две переменные). Функция должна возвращать dataframe с новой переменной - фактором important_cases.\n",
    "\n",
    "Переменная  important_cases принимает значение Yes, если для данного наблюдения больше половины количественных переменных имеют значения больше среднего. В противном случае переменная important_cases принимает значение No.\n",
    "\n",
    "Переменная  important_cases - фактор с двумя уровнями 0 - \"No\", 1  - \"Yes\".  То есть даже если в каком-то из тестов все наблюдения получили значения \"No\", фактор должен иметь две градации. \n",
    "\n",
    "Я написал об этой важной особенности факторов в небольшой памятке. \n",
    "\n",
    "Пример работы функции. \n",
    "\n",
    "\n",
    "> test_data <- data.frame(V1 = c(16, 21, 18), \n",
    "\n",
    "                          V2 = c(17, 7, 16), \n",
    "                          \n",
    "                          V3 = c(25, 23, 27), \n",
    "                          \n",
    "                          V4 = c(20, 22, 18), \n",
    "                          \n",
    "                          V5 = c(16, 17, 19))\n",
    "\n",
    "\n",
    "\n",
    "> get_important_cases(test_data)\n",
    "\n",
    "  V1 V2 V3 V4 V5 important_cases\n",
    "  \n",
    "1 16 17 25 20 16              No\n",
    "\n",
    "2 21  7 23 22 17              No\n",
    "\n",
    "3 18 16 27 18 19             Yes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "58fdab08",
   "metadata": {},
   "outputs": [],
   "source": [
    "get_important_cases <- function(x){\n",
    "means <- colMeans(x)\n",
    "t_f <- t(t(x)>means)\n",
    "rowss <- rowSums(t_f)\n",
    "x$important_cases <- factor(ifelse(rowss>=ncol(x)%/%2+1,\"Yes\",\"No\"))\n",
    "return(x)\n",
    "}"
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
