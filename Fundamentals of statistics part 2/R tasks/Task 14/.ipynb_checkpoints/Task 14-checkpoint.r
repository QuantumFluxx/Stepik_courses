{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "519644e8",
   "metadata": {},
   "source": [
    "Напишите функцию smart_anova, которая получает на вход dataframe с двумя переменными x и y. Переменная x — это количественная переменная, переменная y - фактор, ﻿разбивает наблюдения на три группы.\n",
    "\n",
    "Если распределения во всех группах значимо не отличаются от нормального, а дисперсии в группах гомогенны, функция должна сравнить три группы при помощи дисперсионного анализа и вернуть ﻿именованный вектор со значением p-value, имя элемента — \"ANOVA\".\n",
    "\n",
    "Если хотя бы в одной группе распределение значимо отличается от нормального или дисперсии негомогенны, функция сравнивает группы при помощи критерия Краскела — Уоллиса и возвращает именованный вектор со значением p-value, имя вектора  — \"KW\".\n",
    "\n",
    "Распределение будем считать значимо отклонившимся от нормального, если в тесте shapiro.test() p < 0.05.\n",
    "\n",
    "Дисперсии будем считать не гомогенными, если в тесте bartlett.test() p < 0.05.\n",
    "\n",
    "Подсказка:\n",
    "Вытащить значение p-value из результатов применения функции aov() — та еще задача! Один из вариантов:\n",
    "\n",
    "fit <- aov(x ~ y, test)\n",
    "\n",
    "p_value <- summary(fit)[[1]]$'Pr(>F)'[1]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "c939da00",
   "metadata": {},
   "outputs": [],
   "source": [
    "smart_anova <- function(test_data){\n",
    "  nm <- names(table(test_data$y))\n",
    "  oden <- test_data$x[test_data$y == nm[1]]\n",
    "  dva <- test_data$x[test_data$y == nm[2]]\n",
    "  tre <- test_data$x[test_data$y == nm[3]]\n",
    "  \n",
    "  tes <- all(c(shapiro.test(oden)$p > 0.05,\n",
    "               shapiro.test(dva)$p > 0.05,\n",
    "               shapiro.test(tre)$p > 0.05,\n",
    "               bartlett.test(x ~ y, test_data)$p.value > 0.05) == T)\n",
    "  \n",
    "  if (tes == T){\n",
    "    fit <- aov(x ~ y, test_data)\n",
    "    p <- summary(fit)[[1]]$'Pr(>F)'[1]\n",
    "    names(p) <- \"ANOVA\"\n",
    "    return(p)\n",
    "  } else{\n",
    "    p <- kruskal.test(x ~ y, test_data)$p.value\n",
    "    names(p) <- \"KW\"\n",
    "    return(p)\n",
    "  }\n",
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
