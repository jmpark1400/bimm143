#' ---
#' title: "Class 5: R Graphics"
#' author: "Jimin Park"
#' date: "April 18th, 2019"
#' output: github_document
#' ---

#2A line plot
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

plot(weight$Age, weight$Weight, typ="o", pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age (months)", ylab = "Weight (kg)", main="Age vs. Weight")

#2B bar plot
mouse <-read.table("bimm143_05_rstats/feature_counts.txt", sep = "\t", header = TRUE)

par(mar = c(3.1, 11.1, 4, 2))

barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature,
        las = 1, main = "Number of feature in the mouse GRCm38 genome",
        xlim = c(0, 80000))

#3A Color
malefemale <- read.table("bimm143_05_rstats/male_female_counts.txt", sep = "\t", header = TRUE)
barplot(malefemale$Count, names.arg = malefemale$Sample, las = 2,
        col = terrain.colors(10))







