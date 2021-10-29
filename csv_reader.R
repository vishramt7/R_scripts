library("data.table")
ukbb_treatment <- fread("D:/R_scripts/ukb40072_subset100.csv", header = TRUE, sep =",")

df <- ukbb_treatment[, 1]

head (df)
for (i in 6628:6675){
  df <- cbind(df, ukbb_treatment[,..i])
}

write.table(df, "D:/R_scripts/ukbb_treatment.tsv", sep = "\t" , row.names = FALSE)