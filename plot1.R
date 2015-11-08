# Exploratory Data Analysis
# Week1 - Course Project 1

setwd("D:/Mooc/DataScienceSpecialization/Explatory data/Project 1")

raw_data <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
data1 <- raw_data[which(raw_data$Date=="1/2/2007"),]
data2 <- raw_data[which(raw_data$Date=="2/2/2007"),]
data <- rbind(data1,data2)

save(data, file="data.Rda")

# plotting the data

global_active_power <- as.numeric(as.character(data$Global_active_power))

hist(global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     ylim=c(0,1200),
     col="red")

#dev.copy(png, file="Plot 1.png")
#dev.off()
