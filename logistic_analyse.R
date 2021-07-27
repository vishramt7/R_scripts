df = read.table ("xwas.xstrat.logistic", header = TRUE)
df.sub_set <- na.omit (subset(df, select = c("P_M","P_F","P_comb_Fisher")))
summary(df.sub_set)
df.sub_set[df.sub_set$P_comb_Fisher <= 0.00001,]
df.sub_set[which.min(df.sub_set$P_F),]
df.sub_set[which.max(df.sub_set$P_F),]
head (df.sub_set[order(df.sub_set$P_comb_Fisher),])
