# Coursera class "Exploratory Data Analysis"
# Course project Week 1
# This is the R source file for making the third plot of a series of 4.

# This code assumes you are working in the directory where the TXT sourcefile is located.

# Loading data into R
data<-read.table("household_power_consumption.txt",sep=";",quote="",na.strings="?",header=TRUE)
data2<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

# Plotting third graph into a PNG file
png("plot3.png",width=480,height=480)
plot(data2$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",xaxt="n")
points(data2$Sub_metering_2,type="l",col="red")
points(data2$Sub_metering_3,type="l",col="blue")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),las=0) # Used to create a fast custom X-axis without having to convert dates or dealing with regional settings
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()