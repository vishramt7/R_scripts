args = commandArgs(TRUE)
library(qqman)

test <- read.table(paste0(args[1],".tbl"), header=T, sep="\t")
test <- cbind (test, do.call("rbind", strsplit(test[, 1], ":")))
snp <- test[, c(1)]
chrom_pos_p <- test[, c(8,9,6)]
gwas <- cbind (snp, chrom_pos_p)
colnames(gwas)<-c("SNP","CHR","BP","P")
gwas$CHR<-as.integer(gwas$CHR)
gwas$BP<-as.integer(gwas$BP)

png(paste0(args[1],"_manhattan",".png"), width=10, height=5, units="in", res=500)
#manhattan(test, col = c("green4", "orange3"),genomewideline = -log10(0.0001),main = "Manhattan Plot",cex=0.5,cex.axis = 0.8)
#manhattan(gwas, col = c("green4", "orange3"), suggestiveline =  -log10(0.001), main = "Manhattan Plot",cex=0.5,cex.axis = 0.8)
manhattan(gwas, col = c("green4", "orange3"), suggestiveline =  -log10(0.001),main = "Manhattan Plot",cex=0.5,cex.axis = 0.8)
dev.off()
