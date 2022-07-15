{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "8d9b8c5a",
   "metadata": {},
   "source": [
    "В лекциях я говорил, что иногда возникает необходимость перекодировать количественную переменную в номинативную. Однако зачастую мы можем создавать новую номинативную переменную, комбинируя значения нескольких количественных переменных. Рассмотрим такой пример.\n",
    "\n",
    "Воспользуемся встроенными в R данными Iris. Они сразу доступны для работы. Если вы не знакомы с историей этого набора данных, вызовите справку:\n",
    "\n",
    "?iris \n",
    "\n",
    "Создайте новую переменную important_cases - фактор с двумя градациями (\"No\" и \"Yes\"). Переменная должна принимать значение Yes, если для данного цветка значения хотя бы трех количественных переменных выше среднего. В противном случае переменная important_cases  будет принимать значение No.\n",
    "\n",
    "Что должно получиться:\n",
    "\n",
    "> str(iris$important_cases)\n",
    "\n",
    " Factor w/ 2 levels \"No\",\"Yes\": 1 1 1 1 1 1 1 1 1 1 ...\n",
    "\n",
    "> table(iris$important_cases)\n",
    "\n",
    " No Yes \n",
    " \n",
    " 81  69 \n",
    " \n",
    "Формат ответа: в поле для ответа напишите скрипт, который создает новую переменную - фактор в данных iris. Код для проверки задания считает переменную  important_cases из данных Iris и сравнит ее с верным ответом."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "8f7150b8",
   "metadata": {},
   "outputs": [],
   "source": [
    "dat <- iris[, 1:4]\n",
    "means <-colMeans(dat)\n",
    "t_f <- t(t(dat)>means)\n",
    "rowss <- rowSums(t_f)\n",
    "iris$important_cases <- factor(ifelse(rowss>=3,\"Yes\",\"No\"))"
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
