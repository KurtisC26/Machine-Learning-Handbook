# Multiple Linear Regression:
# Loading Libraries:
library(tidyverse)
library(caTools)

# Step 1: Prepare the data:
data <- read_csv('50_Startups.csv')
set.seed(123)
# Encode the state varibale into factors:
data$State <- factor(data$State,
                     levels = c("New York","California","Florida"),
                     labels = c(1,2,3))
# Train test split:
split <- sample.split(data$Profit, SplitRatio = 0.8)
training_set <- subset(data,split==TRUE)
test_set <- subset(data, split == FALSE)

# Step 2: Fitting the data:
regressor <- lm(formula = Profit ~ . , # . means all the variables, instead of adding each one
                data = training_set)
summary(regressor)

# Step 3: Predicting on the test data
y_pred <- predict(regressor,newdata = test_set)


# Building an optimal model using Backward Elimination:
# This time, we'll write out each of the varibales in the model in order to eliminate 
# the ones that are not statistically significant one by one.

#Step 1: Choose a significance level. 5%

#Step 2: Fit the model with all possible predictors:
regressor <- lm(formula = Profit ~  `R&D Spend` + Administration + `Marketing Spend` + State,
                data = data)
summary(regressor)
#Step 3: Consider the predictor with the highest P-value. If its above the 5% significance leve, remove and re-train:
regressor <- lm(formula = Profit ~  `R&D Spend` + Administration + `Marketing Spend`,
                data = data)
summary(regressor)

regressor <- lm(formula = Profit ~  `R&D Spend` + `Marketing Spend`,
                data = data)
summary(regressor)



