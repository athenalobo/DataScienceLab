path<-"/.......csv"
ds<-read.csv(path)
ds

str(ds)
install.packages("caTools")
install.packages("randomForest")
library(caTools)
library(randomForest)



split<-sample.split(ds,SplitRatio=0.7)
train<-subset(ds,split=="TRUE")
test<-subset(ds,split=="FALSE")

set.seed(120)
model<-randomForest(x=train[-5],y=train$Disease, ntree=500)

y_pred<-predict(model,newdata=test[-5])
cm<-table(test[,5],y_pred)
cm
plot(model)
importance(model)
