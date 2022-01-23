# Simple Linear Regression in R:

library(tidyverse)
library(caTools)
# Step 1: Data Preprocesing
data <- read_csv('Salary_Data.csv')
# Data contains years of experience and salary
set.seed(123)
split <- sample.split(data$Salary, SplitRatio = 2/3)
training_set <- subset(data,split==TRUE)
test_set <- subset(data,split==FALSE)


# Step 2: Taining the data
regressor <- lm(formula = Salary ~ YearsExperience,
                data = training_set)
#For more information on the trained model:
summary(regressor) # star notation in R: 0-3(0 low and 3 high)

# Step 3: Predicting results
# Building our vector of predictions:
y_pred <- predict(regressor,newdata = test_set)


# Step 4: Visualising the set results:

# Training set results
ggplot()+
geom_point(aes(x= training_set$YearsExperience, y=training_set$Salary),
           col = 'navy')+
geom_line(aes(x = training_set$YearsExperience, y= predict(regressor,newdata = training_set)),col='red')+
ggtitle("Salary vs Experience (Training Set)") +
  xlab("Years of Experience")+
  ylab("Salary")


# Test set Results
ggplot()+
  geom_point(aes(x= test_set$YearsExperience, y=test_set$Salary),
             col = 'navy')+
  geom_line(aes(x = training_set$YearsExperience, y= predict(regressor,newdata = training_set)),col='red')+
  ggtitle("Salary vs Experience (Test Set)") +
  xlab("Years of Experience")+
  ylab("Salary")


