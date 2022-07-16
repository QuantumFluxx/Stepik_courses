{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "74c67b06",
   "metadata": {},
   "source": [
    "Напишите функцию get_pc﻿, которая получает на вход dataframe с произвольным числом количественных переменных. Функция должна выполнять анализ главных компонент и добавлять в исходные данные две новые колонки со значениями первой и второй главной компоненты. Новые переменные должны называться \"PC1\"  и \"PC2\" соответственно.\n",
    "\n",
    "Для выполнения анализа главных компонент используйте функцию prcomp(). Изучите результат применения этой функции к данным, чтобы найти, где хранятся значения выделенных главных компонент."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "9f7f723d",
   "metadata": {},
   "outputs": [],
   "source": [
    "get_pc <- function(d){\n",
    "   xs <- prcomp(d)$x\n",
    "   d$PC1 <- xs[,1]\n",
    "   d$PC2 <- xs[,2]\n",
    "   return(d)\n",
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
