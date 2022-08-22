##Reading and subsetting the data

power_consumption<-read.table("household_power_consumption.txt",skip=1,sep=";",col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

subpower<-subset(power_consumption,power_consumption$Date=="1/2/2007"|power_consumption$Date=="2/2/2007")

##plotting the histogram of "Global_active_power" and save it as PNG file called "plot1"

png(filename ="C:/Users/mahmo/Documents/plot1.png",width=480, height=480)

hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.off()
