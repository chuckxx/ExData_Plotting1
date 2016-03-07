# plot4.R - Exploratory Data Analysis assignment
# I am just reading in the data for 2007-02-01 and 2007-02-02.  I created a new file that
# just contains the relevant data for the assignment - household_power_consumption_2.txt.

dataset <- read.table('household_power_consumption_2.txt', header=TRUE, sep=';')

png(filename="plot4.png", width=480, height=480)

dataset$DateTime <- strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S") 

# make 4 plots arranged in 2 rows and 2 columns
par(mfrow=c(2,2)) 

# 1
with(dataset, plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type='l'))

# 2
with(dataset, plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type='l')) 

# 3
with(dataset, plot(DateTime, Sub_metering_1, xlab="", ylab="Energy sub metering", type='l')) 
with(dataset, lines(DateTime, Sub_metering_2, col='red')) 
with(dataset, lines(DateTime, Sub_metering_3, col='blue'))
legend("topright", col=c('black', 'red', 'blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1) 

# 4
with(dataset, plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type='l')) 

dev.off()