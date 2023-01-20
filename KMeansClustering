path<-"...csv"
ds<-read.csv(path)
ds

library(dplyr)
library(ggplot2)
library(cluster)
library(ClusterR)


dist_matrix<-dist(ds, method='euclidean')
dist_matrix


attributes<-ds[,1:2]
target<-ds[,2]
model<-kmeans(attributes, centers=3, nstart<-20)


cm<-table(target,model$cluster)
cm
clusplot(ds,model$cluster)
