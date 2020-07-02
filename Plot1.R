data <- read.table(file = "C:/Users/Asus/Documents/R/coursera course 4 week 1/household_power_consumption.txt" , header = TRUE , sep = ";")
data <- subset(data , Date %in% c("1/2/2007" , "2/2/2007"))

png("C:/Users/Asus/Documents/R/coursera course 4 week 1/Plot1.png")
data$Global_active_power <- as.numeric(data$Global_active_power)

hist(data$Global_active_power , col = "red" , main = "Global Active Power" , xlab = "Global Active Power (Kilowatts)" , ylab = "Frequency")
dev.off()