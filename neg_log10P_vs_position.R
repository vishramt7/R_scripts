# position_logP <- read.table("D:/R_scripts/positn_neg_log10P_value.dat", header = FALSE)
# jpeg("D:/R_scripts/positn_neg_log10P_value.jpg", width = 1800, height = 1800, res = 600)

position_logP <- read.table("D:/R_scripts/UKBB_50K_Exome_T2D_chrX_positn_neg_log10P_value.dat", header = FALSE)
jpeg("D:/R_scripts/UKBB_50K_Exome_T2D_chrX_positn_neg_log10P_value.jpg", width = 1800, height = 1800, res = 600)
plot (position_logP[,1], position_logP[,2], 
      main="xwas T2D Exome output",
      xlab="Position (Mbp)", ylab="-Log10 (P values)", cex = 0.3, pch=19)
#      xlim=c(0,3), ylim=c(0,6.5),xaxs="i",yaxs="i")

abline(a = 5, b = 0, col="red", lwd = 2)

dev.off()