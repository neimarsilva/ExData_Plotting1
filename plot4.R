# Exploratory Data analysis - peer-graded assignment
# 28/04/2022
# Neimar de Paula Silva

# Plot 4
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
with(powerData, {
  plot(dt, Global_active_power, type = "n", xlab = "", ylab = "Global Active Power")
    lines(dt, Global_active_power)
  plot(dt, Voltage, type = "n", xlab = "datetime", ylab = "Voltage")
    lines(dt, Voltage)
  plot(dt, Global_reactive_power, type = "n", xlab = "datetime", ylab = "Global_reactive_power")
    lines(dt, Global_reactive_power)
  plot(dt, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
    lines(dt, Sub_metering_1)
    lines(dt, Sub_metering_2, col = "red")
    lines(dt, Sub_metering_3, col = "blue")
    text(legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")))
})
dev.off()