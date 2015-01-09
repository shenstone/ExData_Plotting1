##
## used to plot the number 2 plot
##

## read file
require(sqldf)
f <- file("C:\\Users\\js3684\\Documents\\My Exercises\\DataScience\\data\\household_power_consumption.txt")
data <- sqldf("select * from f where Date in ('2/2/2007', '1/2/2007') ", file.format = list(header = T, row.names = F, sep=";"))

dd<- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

## plot 2
png(filename = "plot2.png")
plot(dd,data$Global_active_power,type='l',xlab="",ylab="Global Active Power(kilowatts)")
dev.off()