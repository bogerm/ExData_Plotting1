# plot1.R
#
setwd("C:/documentation/Video Trainings/InProgress/Data Science Track/Exploratory Data Analysis/Projects/ExData_Plotting1")
hpc <- read.table("./data/household_power_consumption.txt",sep=";",header=T,na.strings="?")
hpc$Date <- as.Date(hpc$Date,format="%d/%m/%Y")
hpc2days <- subset(subset(hpc,Date>="2007-02-01"),Date<="2007-02-02")
hist(hpc2days$Global_active_power,xlab="Global Active Power (kilowatts)",col="Red",main="Global Active Power")
dev.copy(png,file="./figure/plot1.png")
dev.off()
