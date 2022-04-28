# Exploratory Data analysis - peer-graded assignment
# 28/04/2022
# Neimar de Paula Silva

# Plot 3
png("plot3.png", width = 480, height = 480)
with(powerData, plot(dt, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(powerData, lines(dt, Sub_metering_1))
with(powerData, lines(dt, Sub_metering_2, col = "red"))
with(powerData, lines(dt, Sub_metering_3, col = "blue"))
text(legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")))
dev.off()