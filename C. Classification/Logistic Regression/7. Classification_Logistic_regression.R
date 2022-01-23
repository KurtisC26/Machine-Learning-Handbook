# Logistic Regression:
library(tidyverse)
library(caTools)
library(ElemStatLearn)
# 1) Importing data:
setwd("~/Desktop/Machine Learning A-Z/A.Codes_and_Datasets/Part 3 - Classification/Section 14 - Logistic Regression/R")
data = read_csv("Social_Network_Ads.csv")

# 2) Preprocessing data:
data = data[,3:5]

# 3) Tain/Test Split:
set.seed(123)
split <- sample.split(data$Purchased, SplitRatio = 0.75)
training <- subset(data,split==TRUE)
test <- subset(data,split==FALSE)

# 4) Feature scalling:
training[,1:2] <- scale(training[,1:2])
test[,1:2] <- scale(test[,1:2])

# 5) Fitting the logistic regression model
classifier <- glm(formula = Purchased ~ .,
                  family = binomial,
                  data = training)

# 6) Predicting the test set results
prob_preb <- predict(classifier,type = 'response',newdata = test[-3])
y_pred <- if_else(prob_preb > 0.50,1,0)

cm <- table(test[,4],y_pred)
cm




# 7) BONUS: showing the results in comparison to the predicted values
#predictions$prob <- predict(classifier,type = 'response',newdata = predictions[1:2])
#predictions$prob <- round(predictions$prob*100,2)
#predictions$pred <- if_else(predictions$prob >= 50,1,0)




# 9) Visualizing the data:
set = training
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))


# Visualising the Test set results
set = test
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Logistic Regression (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))





