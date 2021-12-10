severe <- read.table("eids_severe_england_prs.dat", header = F)
non_severe <- read.table ("eids_nonsevere_england_prs.dat", header = F)
X1 <- severe[,2]
X2 <- non_severe[,2]
jpeg("prs_dist.jpg", width = 1800, height = 1800, res = 600)
#hist(X2, probability=TRUE, main="PRS dist plot", xlab="Raw PRS", ylim = c(0, 0.15))
plot (density(X1, adjust=2), col="red",lwd=2, main="PRS dist plot", xlab="Raw PRS", ylim = c(0, 0.15))
lines (density(X2, adjust=2), col="blue",lwd=2, main="PRS dist plot", xlab="Raw PRS", ylim = c(0, 0.15))
legend("topright", legend=c("Severe", "Nonsevere"),col=c("red", "blue"),lty=1:1,cex=0.8)
dev.off ()
