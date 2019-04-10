library(dplyr)
groups <- group_by_at(ResultsSimAll, names(Design))
results <- as.data.frame(summarise(groups, mean(Method1), mean(Method2)))
results$typeI <- results$es==0
results <- merge(Design,results,by=names(Design),sort=FALSE)
