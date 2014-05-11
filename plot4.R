# plot1.R
#
#setwd("C:/documentation/Video Trainings/InProgress/Data Science Track/Exploratory Data Analysis/Projects/ExData_Plotting1")
hpc <- read.table("./data/household_power_consumption.txt",sep=";",header=T,na.strings="?")
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
hpc$Date <- as.Date(hpc$Date,format="%d/%m/%Y")
hpc2days <- subset(subset(hpc,Date>="2007-02-01"),Date<="2007-02-02")

png(filename = "./figure/plot4.png", width = 480, height = 480)
par(mfrow=c(2,2),ps=10)
with(hpc2days, {
  plot(datetime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
  plot(datetime,Voltage,type="l",xlab="datetime",ylab="Voltage")
  plot(datetime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
  lines(datetime,Sub_metering_2,col="red")
  lines(datetime,Sub_metering_3,col="blue")
  leg.txt <- c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
  legend("topright",leg.txt,col=c("black","red","blue"),lty=c(1,1,1),bty="n")
  plot(datetime,Global_reactive_power,type="l")
})
#dev.copy(png,file="./figure/plot4.png")
dev.off()
