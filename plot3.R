data <- read.csv("household_power_consumption.txt",sep=';')
m <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
y1 <- as.numeric(sub("," , ".", m$Sub_metering_1))
y2 <- as.numeric(sub("," , ".", m$Sub_metering_2))
y3 <- as.numeric(sub("," , ".", m$Sub_metering_3))
tt = strptime(paste(as.character(m$Date),as.character(m$Time)),"%d/%m/%Y %H:%M:%S")
png(filename="plot3.png", width = 480, height = 480)
plot(tt,y1,type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
points(tt,y2,type = "l", ylab = "Energy sub metering", xlab = "", col = "red")
points(tt,y3,type = "l", ylab = "Energy sub metering", xlab = "", col = "blue")
legend("topright", legend = c("sub_metering_1","sub_metering_2","sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()