##
## used to plot the number 4 plot
##

## read file
require(sqldf)
f <- file("C:\\Users\\js3684\\Documents\\My Exercises\\DataScience\\data\\household_power_consumption.txt")
data <- sqldf("select * from f where Date in ('2/2/2007', '1/2/2007') ", file.format = list(header = T, row.names = F, sep=";"))

dd<- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

## plot 4
png(filename = "plot4.png")
par(mfrow = c(2, 2))
with(data, {
	plot(dd, Global_active_power, type='l', xlab="", ylab="Global Active Power")
	plot(dd, Voltage, type="l", xlab = "datatime")
	plot(dd, Sub_metering_1,type='n', xlab="", ylab="Energy sub meter")
		points(dd, Sub_metering_1, type='l', col="grey")
		points(dd, Sub_metering_2, type='l', col="red")
		points(dd, Sub_metering_3, type='l', col="blue")
		legend("topright", bty="n", lty = 1, col = c("grey", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	plot(dd, Global_reactive_power, type='l', xlab="datatime", ylab="Global_reactive_power")
})
dev.off()