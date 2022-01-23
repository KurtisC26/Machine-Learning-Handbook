# Random Forrest Regresssion:
setwd("~/Desktop/Machine Learning A-Z/A.Codes_and_Datasets/Part 2 - Regression/Section 9 - Random Forest Regression/R")
library(tidyverse)
library(randomForest)
data = read_csv("Position_Salaries.csv")
data = data[2:3]

set.seed(1234)
regressor = randomForest(x = data[-2],
                         y = data$Salary,
                         ntree = 500)

# Predicting a new result with Random Forest Regression
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the Random Forest Regression results (higher resolution)
x_grid = seq(min(data$Level), max(data$Level), 0.01)
ggplot() +
  geom_point(aes(x = data$Level, y = data$Salary),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Random Forest Regression)') +
  xlab('Level') +
  ylab('Salary')
