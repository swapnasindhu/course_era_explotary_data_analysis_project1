dataFile <- "/home/karthik/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", na.strings = "?")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
attach(data)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png", width=480, height=480)
dev.off()
detach(data)