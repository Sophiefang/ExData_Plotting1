# Exploratory Data Analysis
# week 1 - Course Project 1

# Plot 3

# load the data
load("data.Rda")

submeter1 <- as.numeric(as.character(data$Sub_metering_1))
submeter2 <- as.numeric(as.character(data$Sub_metering_2))
submeter3 <- as.numeric(as.character(data$Sub_metering_3))

time <- as.character(data$Time)
date <- as.character(data$Date)
x <- paste(date, time)
xx <-strptime(x, "%d/%m/%Y %H:%M:%S")

# plot 3

plot(xx,submeter1,'l',xlab="", ylab="Energy sub metering")
lines(xx,submeter2,'l',col="red")
lines(xx,submeter3,'l',col="blue")
legend("topright",pch="-", col=c("black","blue","red"),
       legend=c("Sub_metering_1",
                "Sub_metering_2",
                "Sub_metering_3"),
       cex=0.8)

#dev.copy(png, file="Plot 1.png")
#dev.off()




