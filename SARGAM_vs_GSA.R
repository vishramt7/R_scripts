# This script will make bar plots for SARGAM and GSA comparison

# infile <- read.table("D:/Data_Medgenome/Marker_summary_table.csv", sep = ",")

legend = c ("SARGAM","GSA")
Exonic <- c(3.3, 3.8)
Intronic <- c(52.6, 55)
Nonsense <- c(0.4,0.9)
Missense <- c(13.5,7.8)
UTR <- c(1.8,2)
Intergenic <- c(27.9,29.7)
Frameshift <- c(0.4,1.3)
Mitochon <- c(0.1,0.2)
Indels <- c(3.6,1.5)
X <- c(3.3,4.2)
Y <- c(0.1,0.6)

marker_summary = cbind(Exonic,Intronic,Nonsense,Missense,
                       UTR, Intergenic,Frameshift,Mitochon,Indels,
                       X,Y)
# marker_summary
jpeg("D:/R_scripts/SARGAM_VS_GSA_markers.jpg",units="in",
    width=8, height=6, res=600)
barp <- barplot(marker_summary,beside=T,col=c("blue","orange"), 
                legend = legend, ylim = c(0, 60),ylab = "% of markers",
                las = 2.0, space = c(0.2,0.8))
                # cex.axis = 1.1, cex.lab = 1.1,
                # cex.names = 1.1)
text(barp, marker_summary + 1.0, labels = marker_summary)
dev.off ()
#? barplot
#? text