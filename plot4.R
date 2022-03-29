source("readData.R")

par(mfcol = c(2,2), mar = c(4,4,2,1))

## plot 2
plot(data$Global_active_power, type = "n", xaxt = "n",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
lines(data$Global_active_power)
axis(1, at = seq(0, 2880, length.out = 3), label = c("Thu", "Fri", "Sat"))
#dev.off()

## plot 3
plot(data$Sub_metering_1, type = "n", xaxt = "n",
     ylab = "Energy sub metering",
     xlab = "")
lines(data$Sub_metering_1)
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1",
                  "Sub_metering_2",
                  "Sub_metering_3"),
       lty = c(1,1,1),
       col = c("black", "red", "blue"),
       cex = 0.5)
axis(1, at = seq(0, length(data$Sub_metering_1), length.out = 3), label = c("Thu", "Fri", "Sat"))
#dev.off()

## other plot 1
plot(data$Voltage, type = "n", xaxt = "n",
     ylab = "Voltage",
     xlab = "datetime")
lines(data$Voltage)
axis(1, at = seq(0, length(data$Sub_metering_1), length.out = 3), label = c("Thu", "Fri", "Sat"))
#dev.off()

## other plot 2
plot(data$Global_reactive_power, type = "n", xaxt = "n",
     ylab = "Global_reactive_power",
     xlab = "datetime")
lines(data$Global_reactive_power)
axis(1, at = seq(0, length(data$Sub_metering_1), length.out = 3), label = c("Thu", "Fri", "Sat"))
#dev.off()


dev.copy(png, "plot4.png")

dev.off()
