setwd("C:/Users/ssculley/Desktop/data/exdata_data_household_power")

try1 <- read.table(file="household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
try1$Date <- as.Date(try1$Date, format="%d/%m/%Y")
mini <- subset(try1,subset=(Date > "2007-01-31 23:59:59" & Date < "2007-02-03 00:00:00"))

datetime <- paste(as.Date(mini$Date), mini$Time)
mini$time2 <- as.POSIXct(datetime)
png("plot2.png", width=480, height=480)
plot(mini$time2, as.numeric(mini$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()