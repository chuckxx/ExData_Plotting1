# plot2.R - Exploratory Data Analysis assignment
# I am just reading in the data for 2007-02-01 and 2007-02-02.  I created a new file that
# just contains the relevant data for the assignment - household_power_consumption_2.txt.

dataset <- read.table('household_power_consumption_2.txt', header=TRUE, sep=';')

png(filename="plot2.png", width=480, height=480)

dataset$DateTime <- strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S") 

with(dataset, plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", type='l'))

dev.off()
