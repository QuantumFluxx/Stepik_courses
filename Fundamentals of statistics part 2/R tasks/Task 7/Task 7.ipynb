{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "c36abb12",
   "metadata": {},
   "source": [
    "Доктор Пилюлькин решил вооружиться статистикой, чтобы сравнить эффективность трех лекарств! Давайте поможем ему и напишем функцию max_resid, которая получает на вход dataframe с двумя переменными: типом лекарства и результатом его применения. \n",
    "\n",
    "Drugs - фактор с тремя градациями: drug_1, drug_2, drug_3.     \n",
    "\n",
    "Result - фактор с двумя градациями: positive, negative.\n",
    "\n",
    "Функция должна находить ячейку таблицы сопряженности с максимальным  значением стандартизированного остатка и возвращать вектор из двух элементов: название строчки и столбца этой ячейки.\n",
    "\n",
    "Для расчета стандартизированных остатков вы можете воспользоваться уже знакомой вам функцией chisq.test(). Изучите справку по этой функции, чтобы найти, где хранятся стандартизированные остатки.\n",
    "\n",
    "Пример работы функции на одном из вариантов:\n",
    "\n",
    "> test_data <- read.csv(\"https://stepic.org/media/attachments/course/524/test_drugs.csv\")\n",
    "\n",
    "> str(test_data)\n",
    "\n",
    "'data.frame':  395 obs. of  2 variables:\n",
    "\n",
    " $ Drugs : Factor w/ 3 levels \"drug_1\",\"drug_2\",..: 3 1 1 2 1 1 3 1 2 3 ...\n",
    " \n",
    " $ Result: Factor w/ 2 levels \"negative\",\"positive\": 2 1 1 2 1 2 2 2 1 1 ...\n",
    " \n",
    "> max_resid(test_data)\n",
    "\n",
    "[1] \"drug_1\"   \"positive\"\n",
    "\n",
    "\n",
    "#именно в этой ячейке было максимальное значение стандартизированного остатка, равное 2.07"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "51c12205",
   "metadata": {},
   "outputs": [],
   "source": [
    "max_resid <- function(x){\n",
    "  chi_t <- chisq.test(table(x))$stdres\n",
    "  ind <-  which(chi_t == max(chi_t), arr.ind = T)\n",
    "  return(c(rownames(ind), rownames(t(chi_t))[ind[2]]))\n",
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
