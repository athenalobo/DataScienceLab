install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)

data("Groceries")
head(Groceries)



ds<-Groceries



model<-apriori(ds, parameter=list(support=0.0004, confidence=0.2))



ItemFrequencyPlot(ds, topN=10)

plot(model, method="grouped")
