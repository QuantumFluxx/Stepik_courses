{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "43562a31",
   "metadata": {},
   "source": [
    "Представьте, что мы работаем в аэропорту в службе безопасности и сканируем багаж пассажиров. В нашем распоряжении есть информация о результатах проверки багажа за предыдущие месяцы. Про каждую вещь мы знаем:\n",
    "\n",
    "являлся ли багаж запрещенным - is_prohibited (No - разрешенный, Yes - запрещенный) \n",
    "\n",
    "его массу (кг) - weight\n",
    "\n",
    "длину (см) - length\n",
    "\n",
    "ширину (см) - width\n",
    "\n",
    "тип багажа (сумка или чемодан) - type.\n",
    "\n",
    "Напишите функцию get_features , которая получает на вход набор данных о багаже. Строит логистическую регрессию, где зависимая переменная ﻿ - ﻿являлся ли багаж запрещенным, а предикторы - остальные переменные,﻿ и возвращает вектор с названиями статистически значимых переменных (p < 0.05) (в модели без взаимодействия). Если в данных нет значимых предикторов, функция возвращает строку с сообщением  \"Prediction makes no sense\".\n",
    "\n",
    "Пример работы функции и описание переменных:\n",
    "\n",
    "> test_data <- read.csv(\"https://stepic.org/media/attachments/course/524/test_luggage_1.csv\")\n",
    "\n",
    "> str(test_data)\n",
    "\n",
    "'data.frame':\t60 obs. of  5 variables:\n",
    "\n",
    " $ is_prohibited: Factor w/ 2 levels \"No\",\"Yes\": 1 1 1 1 1 1 1 1 1 1 ...\n",
    " \n",
    " $ weight       : int  69 79 82 81 84 81 64 76 77 88 ...\n",
    " \n",
    " $ length       : int  53 52 54 50 48 51 53 52 53 52 ...\n",
    " \n",
    " $ width        : int  17 21 20 23 19 20 16 20 23 23 ...\n",
    " \n",
    " $ type         : Factor w/ 2 levels \"Bag\",\"Suitcase\": 2 1 2 1 2 1 2 1 2 1 ...\n",
    " \n",
    "> get_features(test_data)\n",
    "\n",
    "[1] \"Prediction makes no sense\"\n",
    "\n",
    "> test_data <- read.csv(\"https://stepic.org/media/attachments/course/524/test_luggage_2.csv\")\n",
    "\n",
    "> str(test_data)\n",
    "\n",
    "> get_features(test_data)\n",
    "\n",
    "[1] \"length\" \"width\"  \"type\" \n",
    "\n",
    "#обратите внимаение функция возвращает именно названия исходных переменных, а не typeBad или typeSuitcase! Ведь нас интересует именно влияние переменной в целом.\n",
    "\n",
    "Подсказка. Для отбора значимых предикторов воспользуйтесь функцией anova()\n",
    "\n",
    "fit <- glm(x ~ y, data, family = \"binomial\")\n",
    "\n",
    "result <- anova(fit, test = \"Chisq\") #тут и будет вся нужная информация!"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "0bb954aa",
   "metadata": {},
   "outputs": [],
   "source": [
    "get_features <- function(dataset){\n",
    "  dataset$is_prohibited <- factor(dataset$is_prohibited)\n",
    "  dataset$type <- factor(dataset$type)\n",
    "  fit <- glm(is_prohibited ~ ., data = dataset, family = \"binomial\")\n",
    "  result <- anova(fit, test = \"Chisq\")[5]\n",
    "  otvet <- rownames(result)[result<0.05 & is.na(result)!=T]\n",
    "  if (length(otvet)==0){\n",
    "    return(\"Prediction makes no sense\")\n",
    "  } else{\n",
    "    return(otvet)\n",
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
