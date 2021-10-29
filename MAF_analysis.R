xstrat_file <- read.table("D:/R_scripts/sex_diff_strat.xstrat.logistic",
                          header = TRUE)
head(xstrat_file)
?subset
#SNP_Pval = subset(xstrat_file, select = c(SNP, P_comb_Fisher))
#head (SNP_Pval)
new_val <- xstrat_file[(xstrat_file$P_comb_Fisher < 0.01),]
#SNPs <- SNP_Pval[SNP_Pval$P_comb_Fisher < 0.01, c(1)]
head (ordered_data <- new_val[order(new_val$P_comb_Fisher), ])
SNPs_fishersorted <- new_val[order(new_val$P_comb_Fisher), c(2)]
#typeof(xstrat_file)
#summary(new_val$P_comb_Fisher)

male_cases <- read.table("D:/R_scripts/male_cases.frq", header = TRUE)
male_controls <- read.table("D:/R_scripts/male_controls.frq", header = TRUE)
female_cases <- read.table("D:/R_scripts/female_cases.frq", header = TRUE)
female_control <- read.table("D:/R_scripts/female_controls.frq", header = TRUE)

# This part gets the intersection of SNPs between two lists
# Assumption : both case and control files have SNPs printed in the same order
(male_case_inter <- male_cases$SNP %in% (head (SNPs_fishersorted)))
(male_cases$MAF[male_case_inter])

male_control_inter <- male_controls$SNP %in% (head(SNPs_fishersorted))
(male_controls$MAF[male_control_inter])

female_case_inter <- female_cases$SNP %in% (head(SNPs_fishersorted))
female_control_inter <- female_control$SNP %in% (head(SNPs_fishersorted))

# Making the plots square
par(pty="s")
plot(male_controls$MAF[male_control_inter], male_cases$MAF[male_case_inter],
     pch=19, ylim = c(0, 0.5), xlim = c(0, 0.5),
     xlab="Male controls",ylab="Male cases", col = "red")
abline(a = 0, b = 1, col="black")
# Inserting labels
text(male_controls$MAF[male_control_inter], male_cases$MAF[male_case_inter],
     labels = male_controls$SNP[male_control_inter], pos = 2, offset = 1)

plot (female_control$MAF[female_control_inter], female_cases$MAF[female_case_inter],
      pch=19, ylim = c(0, 0.5), xlim = c(0, 0.5),
      xlab="Female controls",ylab="Female cases",col = "blue")
abline(a = 0, b = 1, col="black")
text(female_control$MAF[female_control_inter], female_cases$MAF[female_case_inter],
     labels = female_control$SNP[female_control_inter], pos = 3, offset = 1)
?text
