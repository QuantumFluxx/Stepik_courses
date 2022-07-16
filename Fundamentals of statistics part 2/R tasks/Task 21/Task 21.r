{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "c8dd2b96",
   "metadata": {},
   "source": [
    "Задача для Чака Норриса.\n",
    "\n",
    "Как я говорил, метод главных компонент может применяться для борьбы с мультиколлинеарностью в данных (ситуация, когда некоторые переменные очень сильно коррелируют между собой). Однако иногда некоторые переменные не просто сильно взаимосвязаны, но могут представлять линейную комбинацию друг друга. На такие переменные лучше сразу взглянуть повнимательнее и выяснить, откуда они взялись в наших данных.\n",
    "\n",
    "Напишите функцию is_multicol, которая получает на вход dataframe произвольного размера с количественными переменными. Функция должна проверять существование строгой мультиколлинеарности, а именно наличие линейной комбинации между предикторами. Линейной комбинацией является ситуация, когда одна переменная может быть выражена через другую переменную при помощи уравнения V1 = k*V2+bV1=k∗V2+b.\n",
    "﻿Например V1 = V2 + 4 или V1 = V2 - 5.\n",
    "\n",
    "Функция возвращает имена переменных, между которыми есть линейная зависимость или cобщение \"There is no collinearity in the data\".\n",
    "\n",
    "Подсказки:\n",
    "Далеко не всегда 1 == 1 или 0.2 == 0.2 ﻿есть ТRUE!"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "f0dafa86",
   "metadata": {},
   "outputs": [],
   "source": [
    "is_multicol <- function(d){\n",
    "  corel <- cor(d)\n",
    "  diag(corel) <- 0\n",
    "  abss <- abs(corel)\n",
    "  truesi <- round(abss, digits = 2) == 1\n",
    "  rows <- rownames(which(truesi, arr.ind = T))\n",
    "  len <- length(rows)\n",
    "  if (len!=0){\n",
    "    return(rows)\n",
    "  }else{\n",
    "    return(\"There is no collinearity in the data\")\n",
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
