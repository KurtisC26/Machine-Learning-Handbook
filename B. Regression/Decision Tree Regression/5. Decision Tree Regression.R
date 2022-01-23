# Decision Tree Regression:
library(tidyverse)
library(rpart)
setwd("~/Desktop/Machine Learning A-Z/A.Codes_and_Datasets/Part 2 - Regression/Section 8 - Decision Tree Regression/R")
data <- read_csv("Position_Salaries.csv")
data = data[2:3]


regressor = rpart(formula = Salary ~ .,
                  data = data,
                  control = rpart.control(minsplit = 1))
# Predicting a new result with Decision Tree Regression
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the Decision Tree Regression results (higher resolution)
# install.packages('ggplot2')
x_grid = seq(min(data$Level), max(data$Level), 0.01)
ggplot() +
  geom_point(aes(x = data$Level, y = data$Salary),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Decision Tree Regression)') +
  xlab('Level') +
  ylab('Salary')

# Plotting the tree
plot(regressor)
text(regressor)
