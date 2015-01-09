##
## used to plot the number 1 plot
##

## read file
require(sqldf)
f <- file("C:\\Users\\js3684\\Documents\\My Exercises\\DataScience\\data\\household_power_consumption.txt")
data <- sqldf("select * from f where Date in ('2/2/2007', '1/2/2007') ", file.format = list(header = T, row.names = F, sep=";"))

## plot 1
png(filename = "plot1.png")
hist(data$Global_active_power,col="red",main="Gloabal Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency")
dev.off()