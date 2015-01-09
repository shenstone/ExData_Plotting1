##
## used to plot the number 3 plot
##

## read file
require(sqldf)
f <- file("C:\\Users\\js3684\\Documents\\My Exercises\\DataScience\\data\\household_power_consumption.txt")
data <- sqldf("select * from f where Date in ('2/2/2007', '1/2/2007') ", file.format = list(header = T, row.names = F, sep=";"))

dd<- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

## plot 3
png(filename = "plot3.png")
plot(dd, data$Sub_metering_1,type='n', xlab="", ylab="Energy sub meter")
points(dd, data$Sub_metering_1, type='l', col="grey")
points(dd, data$Sub_metering_2, type='l', col="red")
points(dd, data$Sub_metering_3, type='l', col="blue")
legend("topright", lty = 1, col = c("grey", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()