# Polynomial Regression:
library(tidyverse)
library(caTools)
data <- read_csv("Position_Salaries.csv")

#Data preprocessing:
data <- data[,2:3]
set.seed(123)
#split <- sample.split(data$Salary, SplitRatio = 0.8)
#training_set <- subset(data,split==TRUE)
#test_set <- subset(data,split==FALSE)

# Baseline Linear Regression model
linReg <- lm(formula = Salary ~ Level,
                data = data)
summary(linReg)

# Polynomial Regression:
data$Level2 <- data$Level^2
data$Level3 <- data$Level^3
PolyReg <- lm(formula = Salary ~ .,
              data = data)
summary(PolyReg)

# Visualizing the graphical results:
ggplot()+
  geom_point(aes(x=data$Level,y=data$Salary),
             color = "blue")+
  geom_line(aes(x=data$Level,y=predict(linReg,newData = data)),color="red")+
  geom_path(aes(x=data$Level,y=predict(PolyReg, newdata = data)))+
  ggtitle("Comparing Linear and Polynomial Regression Models")+
  xlab("Level")+
  ylab("Salary")
  
# Predict using linear regression:
y_pred <- predict(linReg, newdata = data.frame(Level<-6.5))
y_pred_poly <- predict(PolyReg, newdata = data.frame(Level = 6.5,
                                                     Level2= 6.5^2,
                                                     Level3= 6.5^3))

