# plot1.R
#
setwd("C:/documentation/Video Trainings/InProgress/Data Science Track/Exploratory Data Analysis/Projects/ExData_Plotting1")
hpc <- read.table("./data/household_power_consumption.txt",sep=";",header=T,na.strings="?")
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
hpc$Date <- as.Date(hpc$Date,format="%d/%m/%Y")
hpc2days <- subset(subset(hpc,Date>="2007-02-01"),Date<="2007-02-02")

plot(hpc2days$datetime,hpc2days$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(hpc2days$datetime,hpc2days$Sub_metering_2,col="red")
lines(hpc2days$datetime,hpc2days$Sub_metering_3,col="blue")
leg.txt <- c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
legend("topright",leg.txt,col=c("black","red","blue"),lty=c(1,1,1))
dev.copy(png,file="./figure/plot3.png")
dev.off()
