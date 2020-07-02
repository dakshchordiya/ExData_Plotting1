data <- read.table(file = "C:/Users/Asus/Documents/R/coursera course 4 week 1/household_power_consumption.txt" , header = TRUE , sep = ";")
data <- subset(data , Date %in% c("1/2/2007" , "2/2/2007"))

png("C:/Users/Asus/Documents/R/coursera course 4 week 1/Plot4.png")
par(mfrow = c(2, 2)) 


DateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)
data$Voltage <- as.numeric(data$Voltage)

plot(DateTime , data$Global_active_power , xlab = "" , ylab = "Global Active Power (Kilowatts)" , type = "l")



plot(DateTime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")



plot(DateTime , data$Sub_metering_1 , type = "l" , col = "black" , xlab = "" , ylab = "Energy sub metering")
lines(DateTime , data$Sub_metering_2 , col = "red")
lines(DateTime , data$Sub_metering_3 , col = "blue")

legend("topright" , col = c("black" , "red" , "blue") ,  legend = c("Sub_metering_1" , "Sub_metering_2", "Sub_metering_3") , lty  = 1)


plot(DateTime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")


dev.off()
