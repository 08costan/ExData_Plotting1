# Coursera class "Exploratory Data Analysis"
# Course project Week 1
# This is the R source file for making the first plot of a series of 4.

# This code assumes you are working in the directory where the TXT sourcefile is located.

# Loading data into R
data<-read.table("household_power_consumption.txt",sep=";",quote="",na.strings="?",header=TRUE)
data2<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

# Plotting first graph into a PNG file
png("plot1.png",width=480,height=480)
hist(data2$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()