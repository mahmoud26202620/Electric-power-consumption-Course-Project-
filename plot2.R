##Reading and subsetting the data

power_consumption<-read.table("household_power_consumption.txt",skip=1,sep=";",col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

subpower<-subset(power_consumption,power_consumption$Date=="1/2/2007"|power_consumption$Date=="2/2/2007")

##Transforming the Data and the Time variable from characters into object of type Date and POSIXlt

subpower$Date<-as.Date(subpower$Date,format="%d/%m/%Y")
subpower$Time<-strptime(subpower$Time,format = "%H:%M:%S")

subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

##ploting Global Active Power Vs Time and save it as PNG file called "plot2"

png(filename = "C:/Users/mahmo/Documents/plot2.png",width=480, height=480)

plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",main="Global Active Power Vs Time",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()
