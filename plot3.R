# plot3.R - Exploratory Data Analysis assignment
# I am just reading in the data for 2007-02-01 and 2007-02-02.  I created a new file that
# just contains the relevant data for the assignment - household_power_consumption_2.txt.

dataset <- read.table('household_power_consumption_2.txt', header=TRUE, sep=';')

png(filename="plot3.png", width=480, height=480)

dataset$DateTime <- strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S") 

with(dataset, plot(DateTime, Sub_metering_1, xlab="", ylab="Energy sub metering", type='l'))

with(dataset, lines(DateTime, Sub_metering_2, col='red')) 

with(dataset, lines(DateTime, Sub_metering_3, col='blue'))

legend("topright", col=c('black', 'red', 'blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1) 

dev.off()