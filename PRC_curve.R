#install.packages("pROC")
#install.packages("DT")
library(pROC)

data <- read.table("D:/R_scripts/CAD-PRS_for_ROC_lower.txt", header = FALSE)
#data("aSAH")
#head(aSAH)
#jpeg("D:/R_scripts/ROC.jpg", width = 1800, height = 1800, res = 600)
#plot.roc(data[,1], data[,2],print.auc=TRUE,col="red")
#head (coords (ROC, x ="all"))
# Print a roc object:
rocobj <- roc(data[,1], data[,2], print.auc=TRUE,col="red")
plot(rocobj, print.auc=TRUE,col="blue")
roc_coords <- coords(rocobj, x = "all")
head (roc_coords)
precision <- coords(rocobj, x = "all", ret=c("precision"))
recall <- coords(rocobj, x = "all", ret=c("recall"))
specificity <- coords(rocobj, x = "all", ret=c("specificity"))
head (precision)
head (recall)
numerator <- 2*precision*recall
denominator <- (precision+recall)
head(numerator)
head (denominator)
head (recall)
f1_score <- numerator / denominator
#jpeg("D:/R_scripts/ROC.jpg", width = 1800, height = 1800, res = 600)
#plot(rocobj, print.auc=TRUE,col="red")
head(f1_score)
#lines( as.numeric(unlist(specificity)), as.numeric(unlist(f1_score)), col="green")
#legend("bottomright", legend=c("ROC", "f1_score"),col=c("red", "green"),lty=1:1,cex=0.8)
#plot.roc(aSAH$outcome,aSAH$s100b)
f1_output <- cbind(specificity,f1_score)
head (f1_output)
write.table(roc_coords, "D:/R_scripts/roc_coords.tsv", sep = "\t" , row.names = FALSE)
write.table(f1_output, "D:/R_scripts/f1_score.tsv", sep = "\t" , row.names = FALSE)
dev.off()
