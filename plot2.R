# Exploratory Data analysis - peer-graded assignment
# 28/04/2022
# Neimar de Paula Silva

# Plot 2
png("plot2.png", width = 480, height = 480)
with(powerData, plot(dt, Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)"))
with(powerData, lines(dt, Global_active_power))
dev.off()