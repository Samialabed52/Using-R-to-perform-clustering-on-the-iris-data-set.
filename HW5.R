#1
short_data <- iris[-c(5)]
View(short_data)
#2
short_data_3means <- kmeans(short_data, centers = 3)
#3
out <- cbind(short_data, clusterNum = short_data_3means$cluster)
View(out)
#4
aggregate_data <- aggregate(. ~clusterNum, data=out, FUN = mean)
View(aggregate_data)
#5
print(short_data_3means)
#6
library(cluster)
plot(silhouette(short_data_3means$cluster, dist(short_data)^2), col=2, border = NA)
