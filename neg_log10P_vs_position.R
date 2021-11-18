# position_logP <- read.table("D:/R_scripts/positn_neg_log10P_value.dat", header = FALSE)
# jpeg("D:/R_scripts/positn_neg_log10P_value.jpg", width = 1800, height = 1800, res = 600)

position_logP <- read.table("D:/R_scripts/positn_neg_log10P_value_TG.dat", header = FALSE)
jpeg("D:/R_scripts/positn_neg_log10P_value_TG.jpg", width = 1800, height = 1800, res = 600)
plot (position_logP[,1], position_logP[,2], 
      main="TG UKBB",
      xlab="Position (Mbp)", ylab="-Log10 (P values)", cex = 0.3, pch=19,
      ylim=c(0,16.2))
      #,xaxs="i",yaxs="i")

abline(a = 5, b = 0, col="blue", lwd = 2)
abline(a = 7.3, b = 0, col="red", lwd = 2)
dev.off()
