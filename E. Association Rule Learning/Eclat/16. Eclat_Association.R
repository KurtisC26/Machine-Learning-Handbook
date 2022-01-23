#n Eclate Association

setwd("~/Desktop/Machine Learning A-Z/A.Codes_and_Datasets/Part 5 - Association Rule Learning/Section 29 - Eclat/R")

data <- read.csv("Market_Basket_Optimisation.csv",header = FALSE)

# Optimizing the placement of products based on buying habbits:
# Each line in the data is a customer, and the columns is the products they have purhcased

# We need to create a sparse matrix for the model to work:
# Creating a column for each of the products, and make it binary:
library(arules)
dataset <- read.transactions("Market_Basket_Optimisation.csv",sep = ",",rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset,topN = 10)



# Training Eclat on the dataset
rules <- eclat(data = dataset,
                 parameter = list(support = 0.004, minlen = 2))

# Visualizing the rules:
inspect(sort(rules, by= 'support')[1:10])

