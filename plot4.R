# Exploratory Data Analysis
# week 1 - Course Project 1

# Plot 4

# load the data
load("data.Rda")

submeter1 <- as.numeric(as.character(data$Sub_metering_1))
submeter2 <- as.numeric(as.character(data$Sub_metering_2))
submeter3 <- as.numeric(as.character(data$Sub_metering_3))
global_active_power <- as.numeric(as.character(data$Global_active_power))
global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
voltage <- as.numeric(as.character(data$Voltage))

time <- as.character(data$Time)
date <- as.character(data$Date)
x <- paste(date, time)
xx <-strptime(x, "%d/%m/%Y %H:%M:%S")

# plot 4
par(mfrow=c(2,2))

plot(xx, global_active_power,"l",
     ylab="Global Active Power",
     xlab="")

plot(xx, voltage,'l', xlab="datetime", ylab="Voltage")

#dev.copy(png, file="Plot 1.png")
#dev.off()
plot(xx,submeter1,'l',xlab="", ylab="Energy sub metering")
lines(xx,submeter2,'l',col="red")
lines(xx,submeter3,'l',col="blue")
legend("topright",pch="-", col=c("black","blue","red"),
       legend=c("Sub_metering_1",
                "Sub_metering_2",
                "Sub_metering_3"),
       cex=0.2)

plot(xx, global_reactive_power, 'l',
     xlab="datetime", ylab="Global_reactive_power")

