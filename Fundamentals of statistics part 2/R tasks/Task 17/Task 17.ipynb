{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "2064f6c8",
   "metadata": {},
   "source": [
    "Напишите функцию smart_hclust, которая получает на вход dataframe  с произвольным числом количественных переменных и число кластеров, которое необходимо выделить при помощи иерархической кластеризации.\n",
    "\n",
    "Функция должна в исходный набор данных добавлять новую переменную фактор - cluster  -- номер кластера, к которому отнесено каждое из наблюдений.\n",
    "\n",
    "В этой и следующей задаче на кластерный анализ предполагается, что мы используем функцию hclust() для \n",
    "кластеризации данных с параметрами по умолчанию:\n",
    "\n",
    "hclust(d, method = \"complete\", members = NULL)\n",
    " \n",
    "Для расчета матрицы расстояний предполагается, что используется функция dist() также с параметрами по умолчанию:\n",
    "\n",
    "dist(x, method = \"euclidean\", diag = FALSE, upper = FALSE, p = 2)\n",
    "\n",
    "Для выделения желаемого числа кластеров по результатам иерархической кластеризации воспользуйтесь функцией cutree().\n",
    "\n",
    "Иными словами, для кластеризации данных swiss на три кластера мы бы использовали команды:\n",
    "\n",
    "dist_matrix <- dist(swiss) # расчет матрицы расстояний\n",
    "\n",
    "fit <- hclust(dist_matrix) # иерархическая кластеризация \n",
    "\n",
    "cluster <- cutree(fit, 3) # номер кластера для каждого наблюдения"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "1efc4774",
   "metadata": {},
   "outputs": [],
   "source": [
    "smart_hclust<-  function(test_data, cluster_number){\n",
    "   matr <- dist(test_data, method = \"euclidean\", diag = FALSE, upper = FALSE, p = 2)\n",
    "   fit <- hclust(matr, method = \"complete\", members = NULL)\n",
    "   test_data$cluster <- factor(cutree(fit, cluster_number))\n",
    "   return(test_data)\n",
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
