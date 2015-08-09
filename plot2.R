# Coursera class "Exploratory Data Analysis"
# Course project Week 1
# This is the R source file for making the second plot of a series of 4.

# This code assumes you are working in the directory where the TXT sourcefile is located.

# Loading data into R
data<-read.table("household_power_consumption.txt",sep=";",quote="",na.strings="?",header=TRUE)
data2<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

# Plotting second graph into a PNG file
png("plot2.png",width=480,height=480)
plot(data2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),las=0)  # Used to create a fast custom X-axis without having to convert dates or dealing with regional settings
dev.off()