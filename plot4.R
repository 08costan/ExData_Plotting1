# Coursera class "Exploratory Data Analysis"
# Course project Week 1
# This is the R source file for making the fourth plot of a series of 4.

# This code assumes you are working in the directory where the TXT sourcefile is located.

# Loading data into R
data<-read.table("household_power_consumption.txt",sep=";",quote="",na.strings="?",header=TRUE)
data2<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

# Plotting fourth graph into a PNG file
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))

	# 1st sub-graph
	plot(data2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
	axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),las=0)

	# 2nd sub-graph
	plot(data2$Voltage,type="l",ylab="Voltage",xlab="datetime",xaxt="n")
	axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),las=0)
	
	# 3rd sub-graph
	plot(data2$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",xaxt="n")
	points(data2$Sub_metering_2,type="l",col="red")
	points(data2$Sub_metering_3,type="l",col="blue")
	axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),las=0)
	legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	
	# 4th sub-graph
	plot(data2$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime",xaxt="n")
	axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),las=0)	
	
dev.off()