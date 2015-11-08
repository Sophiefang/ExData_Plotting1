# Exploratory Data Analysis
# week 1 - Course Project 1

# Plot 2

# load the data
load("data.Rda")

global_active_power <- as.numeric(as.character(data$Global_active_power))

time <- as.character(data$Time)
date <- as.character(data$Date)
x <- paste(date, time)
xx <-strptime(x, "%d/%m/%Y %H:%M:%S")

# plot the global active power

plot(xx,global_active_power,"l",
     ylab="Global Active Power(kilowatts",
     xlab="")

#dev.copy(png, file="Plot2.png")
#dev.off()

