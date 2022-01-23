# Hierarichal Clusterin:

setwd("~/Desktop/Machine Learning A-Z/A.Codes_and_Datasets/Part 4 - Clustering/Section 24 - K-Means Clustering/R")
data <- read.csv("Mall_Customers.csv")
x <- data[4:5]

# Using the dendogeam to find optimal number of clusters

dendogram <- hclust(dist(x,method = 'euclidean'),method = 'ward.D')

plot(dendogram,
     main = paste("Dendogram"),
     xlab = "Customer",
     ylab = "Eucledian distances")
# we can see that 5 clusters is optimal


# Fitting hierarichal clustering:
hc <- hclust(dist(x,method = 'euclidean'),method = 'ward.D')
y_hc <- cutree(hc,k = 5)

y_hc

# Visualizing the clusters:
library(cluster)
clusplot(x,y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of clients"),
         xlab = "Annual Income",
         ylab = "Spending Score")
