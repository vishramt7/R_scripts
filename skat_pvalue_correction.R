skat_file <- read.table("D:/Data_Medgenome/Ramesh_data/skat.txt",
                          header = TRUE)
head (skat_file)
colnames(skat_file)
P_val <- skat_file$Pvalue
head (P_val)
# p.adjust(P_val, method = p.adjust.methods, n = length(P_val))
p.adjust.methods
p_adj_holm <- p.adjust(P_val, method = "holm", n = length(P_val))
p_adj_hochberg <- p.adjust(P_val, method = "hochberg", n = length(P_val))
p_adj_hommel <- p.adjust(P_val, method = "hommel", n = length(P_val))
p_adj_bonferroni <- p.adjust(P_val, method = "bonferroni", n = length(P_val))
p_adj_BH <- p.adjust(P_val, method = "BH", n = length(P_val))
p_adj_BY <- p.adjust(P_val, method = "BY", n = length(P_val))
p_adj_fdr <- p.adjust(P_val, method = "fdr", n = length(P_val))
p_adj_none <- p.adjust(P_val, method = "none", n = length(P_val))
?cbind
?c
df <- cbind(p_adj_holm, p_adj_hochberg, p_adj_hommel, p_adj_bonferroni, p_adj_BH, p_adj_BY, p_adj_fdr, p_adj_none)
# colnames(df) <- c( "holm", "hochberg" , "hommel", "bonferroni", "BH", "BY", "fdr", "none")
colnames(df) <- c("holm","hochberg","hommel","bonferroni","BH","BY","fdr","none")
# write.table(df, "D:/Data_Medgenome/Ramesh_data/skat.txt", append = TRUE)
skat_file <- cbind(skat_file, df)
write.table(skat_file, "D:/Data_Medgenome/Ramesh_data/skat_output.txt")
