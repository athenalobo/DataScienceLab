path<-".....csv"
ds<-read.csv(path)
ds

library(dplyr)
library(ggplot2)



dist_matrix<-dist(ds, method='euclidean')
dist_matrix



model<-hclust(dist_matrix, method='average')


plot(model)

rect.hclust(model, k=3)

fit<-cutree(model, k=3)

print(fit)
