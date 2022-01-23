# K-means clustering:

setwd("~/Desktop/Machine Learning A-Z/A.Codes_and_Datasets/Part 4 - Clustering/Section 24 - K-Means Clustering/R")

data <- read.csv("Mall_Customers.csv")


# We want to segment the clients into different segments:
x <- data[4:5]

# Using the elbow method to find the optimal number of clusters:
set.seed(6)
wcss <- vector()
for (i in 1:10) {
 wcss[i]<-sum(kmeans(x,i)$withinss)}
plot(1:10,wcss,"b",main = paste("Clusters of clients"), xlab = "Number of clusters", ylab = "WCSS")

# When we look at the graph, we can see the optimal number of cluster is 5, now to the model
set.seed(29)
kmeans <- kmeans(x,5,iter.max = 300, nstart = 10)

# Visualizing the clusters:
# Only for 2 dimensional clustering


library(cluster)
clusplot(x,kmeans$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of clients"),
         xlab = "Annual Income",
         ylab = "Spending Score")
