# plot1.R - Exploratory Data Analysis assignment
# I am just reading in the data for 2007-02-01 and 2007-02-02.  I created a new file that
# just contains the relevant data for the assignment - household_power_consumption_2.txt.

dataset <- read.table('household_power_consumption_2.txt', header=TRUE, sep=';')

png(filename="plot1.png", width=480, height=480)

with(dataset, hist(Global_active_power, breaks=12, col='red', xlab='Global Active Power(kilowatts)', main='Global Active Power')) 

dev.off()
