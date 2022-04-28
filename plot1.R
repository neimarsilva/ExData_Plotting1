# Exploratory Data analysis - peer-graded assignment
# 28/04/2022
# Neimar de Paula Silva

#Reading file
zip.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dir <- getwd()
zip.file <- "exdata_data_household_power_consumption.zip"
zip.combine <- as.character(paste(dir, zip.file, sep = "/"))
download.file(zip.url, destfile = zip.combine)
file <- unzip(zip.file)
data <- read.csv(file, , header = TRUE, sep = ";", na.strings = "?")

# Defining classes of variables
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage)
data$Global_intensity <- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

# dealing with date and time
data$date <- strptime(data$Date, format = "%d/%m/%Y")
data$dt <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

# subset
powerData <- subset(data, date == "2007-02-01" | date == "2007-02-02")

# Plot 1
png("plot1.png", width = 480, height = 480)
hist(powerData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
