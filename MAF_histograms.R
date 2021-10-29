
male_cases <- read.table("D:/R_scripts/male_cases.frq", header = TRUE)
male_controls <- read.table("D:/R_scripts/male_controls.frq", header = TRUE)
female_cases <- read.table("D:/R_scripts/female_cases.frq", header = TRUE)
female_control <- read.table("D:/R_scripts/female_controls.frq", header = TRUE)
#head (male_cases)

#combined <- as.data.frame(cbind(male_cases$MAF, male_controls$MAF,
#                                female_cases$MAF,female_control$MAF))
combined <- data.frame(male_cases$MAF, male_controls$MAF,
                       female_cases$MAF,female_control$MAF)
head (combined)
#?cbind

# Put graphs in 4 rows and 1 column
par(mfrow = c(4, 1))
hist(combined$male_cases.MAF,main = "MAF -> male cases", 
     breaks = 50, col = "blue",xlab = "", ylim = c(0, 60))
hist(combined$male_controls.MAF,main = "MAF -> male controls",
     breaks = 50, col = "red", xlab = "", ylim = c(0, 60))
hist(combined$female_cases.MAF, main = "MAF-> female cases",
     breaks = 50, col = "green", xlab = "", ylim = c(0, 60))
hist(combined$female_control.MAF, main = "MAF-> female control", 
     breaks = 50, col = "purple",xlab = "", ylim = c(0, 60))
# Restore graphic parameter
par(mfrow=c(1, 1))
#?hist

summary(combined$male_cases.MAF)
