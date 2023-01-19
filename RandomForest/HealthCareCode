> path<-"/Users/athena/Desktop/Data Science/Healthcare.csv"
> ds<-read.csv(path)
> ds
   

> print("Structure:")
> str(ds)


> print("Installation")
> install.packages("caTools")
> install.packages("randomForest")
> library(caTools)
> library(randomForest)


> print("Splitting")
> split<-sample.split(ds,SplitRatio=0.7)
> train<-subset(ds,split=="TRUE")
> test<-subset(ds,split=="FALSE")


> print("Setting seed")
> set.seed(120)


> print("Building model")
> model<-randomForest(x=train[-5],y=train$Disease,ntree=500)

> print("Predicting test values")
> ypred<-predict(model,newdata=test[-5])


> print("Confusion matrix")
> cm<-table(test[,5], ypred)
> cm
   
   
> print("Plotting values of model")
> plot(model)


> print("Plotting importance")
> importance(model)
             
