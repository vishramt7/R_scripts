contact = read.table(file="WGSMAF_del_absWGSMAF-SARGAMMAF.txt", header=F)
attach(contact)
jpeg("plot1.jpg")
plot(V1,V2,xlab="MAF_WGS",ylab="abs (MAF_WGS - MAF_SARGAM)",pch=19)
dev.off()
#dev.copy(jpeg, filename="/BXRX_STAFF/vishram.terse/R_plots/plot1.jpg");
#dev.off();
