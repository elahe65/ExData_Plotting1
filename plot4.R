data <- read.csv("household_power_consumption.txt",sep=';')
m <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
y11 <- as.numeric(sub("," , ".", m$Global_active_power))
y12 <- as.numeric(sub("," , ".", m$Voltage))
        
y21_1 <- as.numeric(sub("," , ".", m$Sub_metering_1))
y21_2 <- as.numeric(sub("," , ".", m$Sub_metering_2))
y21_3 <- as.numeric(sub("," , ".", m$Sub_metering_3))

y22 <- as.numeric(sub("," , ".", m$Global_reactive_power))


tt = strptime(paste(as.character(m$Date),as.character(m$Time)),"%d/%m/%Y %H:%M:%S")
#making the plots

png(filename="plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(tt,y11,type = "l", ylab = "Global Active Power", xlab = "")

plot(tt,y12,type = "l", ylab = "Voltage", xlab = "datetime")

plot(tt,y21_1,type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
points(tt,y21_2,type = "l", ylab = "Energy sub metering", xlab = "", col = "red")
points(tt,y21_3,type = "l", ylab = "Energy sub metering", xlab = "", col = "blue")
legend("topright", legend = c("sub_metering_1","sub_metering_2","sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

plot(tt,y22,type = "l", ylab = "Global Reactive Power", xlab = "datetime")

dev.off()
