data <- read.table(file = "C:/Users/Asus/Documents/R/coursera course 4 week 1/household_power_consumption.txt" , header = TRUE , sep = ";")
data <- subset(data , Date %in% c("1/2/2007" , "2/2/2007"))

png("C:/Users/Asus/Documents/R/coursera course 4 week 1/Plot2.png")

DateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
data$Global_active_power <- as.numeric(data$Global_active_power)



plot(DateTime , data$Global_active_power , xlab = "" , ylab = "Global Active Power (Kilowatts)" , type = "l")
dev.off()