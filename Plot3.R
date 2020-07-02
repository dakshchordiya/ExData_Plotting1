data <- read.table(file = "C:/Users/Asus/Documents/R/coursera course 4 week 1/household_power_consumption.txt" , header = TRUE , sep = ";")
data <- subset(data , Date %in% c("1/2/2007" , "2/2/2007"))

png("C:/Users/Asus/Documents/R/coursera course 4 week 1/Plot3.png")

data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

DateTime <- strptime(paste(data$Date , data$Time) , "%d/%m/%Y%H:%M:%S")

plot(DateTime , data$Sub_metering_1 , type = "l" , col = "black" , xlab = "" , ylab = "Energy sub metering")
lines(DateTime , data$Sub_metering_2 , col = "red")
lines(DateTime , data$Sub_metering_3 , col = "blue")

legend("topright" , col = c("black" , "red" , "blue") ,  legend = c("Sub_metering_1" , "Sub_metering_2", "Sub_metering_3") , lty  = 1)

dev.off()