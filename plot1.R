data <- read.csv("household_power_consumption.txt",sep=';')
m <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
y = as.numeric(sub("," , ".", m$Global_active_power))
png(filename="plot1.png", width = 480, height = 480)
hist(y,main = "Global Activ Power", col = "red", xlab = "Global Active Power (killowatts)", ylim = c(0,1200) )
dev.off()

