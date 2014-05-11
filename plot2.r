setwd("C:\\Users\\NICOLE\\Desktop\\Coursera")
banco <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
banco$gDate <- as.Date(banco$Date, "%d/%m/%Y")
banco <- subset(banco, banco$gDate == "2007-02-01" | banco$gDate == "2007-02-02")
banco$Global_active_power <- as.numeric(as.character(banco$Global_active_power))
png("plot2.png", width = 480, height = 480)
plot(banco$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()