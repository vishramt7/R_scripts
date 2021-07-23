read.delim("SARGAM_WGS_freq_joint_95Geno.txt") -> small.file
abs (small.file[,10] - small.file[,11] ) -> small.file$diff
jpeg("new_plot1.jpg")
plot(small.file[,11],small.file[,12],xlab="MAF_WGS",ylab="abs (MAF_WGS - MAF_SARGAM)",pch=19)
dev.off()

