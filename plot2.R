source("readData.R")

## plot 2
plot(data$Global_active_power, type = "n", xaxt = "n",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
lines(data$Global_active_power)
axis(1, at = seq(0, 2880, length.out = 3), label = c("Thu", "Fri", "Sat"))

dev.copy(png, "plot2.png")

dev.off()
