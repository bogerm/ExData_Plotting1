# plot1.R
#
setwd("C:/documentation/Video Trainings/InProgress/Data Science Track/Exploratory Data Analysis/Projects/ExData_Plotting1")
hpc <- read.table("./data/household_power_consumption.txt",sep=";",header=T,na.strings="?")
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
hpc$Date <- as.Date(hpc$Date,format="%d/%m/%Y")
hpc2days <- subset(subset(hpc,Date>="2007-02-01"),Date<="2007-02-02")

plot(hpc2days$datetime,hpc2days$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")


dev.copy(png,file="./figure/plot2.png")
dev.off()
