
setwd("C:/Users/ssculley/Desktop/data/exdata_data_household_power")

try1 <- read.table(file="household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
try1$Date <- as.Date(try1$Date, format="%d/%m/%Y")
mini <- subset(try1,subset=(Date > "2007-01-31" & Date < "2007-02-03"))
png("plot1.png", width=480, height=480)
hist(as.numeric(mini$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
