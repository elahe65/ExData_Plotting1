data <- read.csv("household_power_consumption.txt",sep=';')
m <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
y <- as.numeric(sub("," , ".", m$Global_active_power))
tt = strptime(paste(as.character(m$Date),as.character(m$Time)),"%d/%m/%Y %H:%M:%S")
png(filename="plot2.png", width = 480, height = 480)
plot(ll,y,type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()