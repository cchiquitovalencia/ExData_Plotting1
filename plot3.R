source("readData.R")

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
       cex = 0.8)
axis(1, at = seq(0, length(data$Sub_metering_1), length.out = 3), label = c("Thu", "Fri", "Sat"))

dev.copy(png, "plot3.png")

dev.off()
