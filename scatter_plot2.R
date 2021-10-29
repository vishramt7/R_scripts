# table_1a <- read.table("D:Papers_Medgenome/X_chromosome/Chromosome_X_CAD_GWAS/Chromosome_X_CAD_GWAS/rs_p_RE_table_Ia_Ib.txt",header = TRUE)
# table_1b <- read.table("D:Papers_Medgenome/X_chromosome/Chromosome_X_CAD_GWAS/Chromosome_X_CAD_GWAS/table_Ib_p_RE.dat",header =  TRUE)
# typeof (table_1a)
# typeof (table_1b)
# plot(table_1a[,2],table_1a[,3], cex = 0.5)
# abline(a = 0, b = 1, col="black")
# cor(table_1a[,2], table_1a[,3])
# ? cor.test()
#cor.test(table_1a[,2], table_1a[,3],
#         method = "pearson")
#? abline

# log_p_values <- read.table("D:/R_scripts/rsid_tableIa_xstrat_logistic_.neg_log10_Pval_top30", header = FALSE)
# jpeg("D:/R_scripts/rsid_tableIa_xstrat_logistic_.neg_log10_Pval_top30.jpg", width = 1800, height = 1800, res = 600)
# plot (log_p_values[,2], log_p_values[,3], 
#       main="-log10 Pvalues",
#       xlab="CARDIOGRAM+C4D", ylab="XWAS_CAD", cex = 0.5, pch=19,
#       xlim=c(0,3), ylim=c(0,6.5),xaxs="i",yaxs="i")
# 
# cor (log_p_values[,2], log_p_values[,3])
# cor.test(log_p_values[,2], log_p_values[,3])
# ? plot
# length(log_p_values[,3])
# df <- cbind.data.frame(log_p_values[,2], log_p_values[,3])
# typeof(df)
# fit = lm( log_p_values[,3] ~ log_p_values[,2])
# summary(fit)
# abline(a = 4.2140, b = 0.5692, col="red", lwd = 2)
# ? lm() # a : intercept, b = slope
# # summary (log_p_values[,3])
# dev.off()

beta_values <- read.table("D:/Data_Medgeno???me/XWAS_testing/xwas_testing_BetaCARDIO_BetaF.txt", header = FALSE)
jpeg("D:/Data_Medgenome/XWAS_testing/xwas_testing_BetaCARDIO_BetaF.jpg", width = 1800, height = 1800, res = 600)
plot (beta_values[,1], beta_values[,2], 
      main="xwas CAD UKBB ARRAY output",
      xlab="Beta_CARDIOGRAM", ylab="Beta_F_xwas", cex = 0.3, pch=19,
      xlim=c(-0.06,0.06), ylim=c(-0.06,0.1),xaxs="i",yaxs="i")
cor.test(beta_values[,1], beta_values[,2])
fit = lm( beta_values[,2] ~ beta_values[,1])
summary(fit)
abline(a = 0.019055, b = 0.425334, col="red", lwd = 2)
dev.off()