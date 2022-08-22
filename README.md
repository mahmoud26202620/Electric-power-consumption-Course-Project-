# Electric-power-consumption-Course-Project-
This project is part of pre-graduate Assignment of "Data Science: Foundations using R Specialization" course

This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets

## Dataset

   **- Dataset file :** https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

   **- Description:** Measurements of electric power consumption in one household with a one-minute sampling rate over a period of   almost 4 years. Different electrical quantities and some sub-metering values are available.

## Descriptions of the variables

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:


**Date:** Date in format dd/mm/yyyy

**Time:** time in format hh:mm:ss

**Global_active_power:** household global minute-averaged active power (in kilowatt)

**Global_reactive_power:** household global minute-averaged reactive power (in kilowatt)

**Voltage:** minute-averaged voltage (in volt)

**Global_intensity:** household global minute-averaged current intensity (in ampere)

**Sub_metering_1:** energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).

**Sub_metering_2:** energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.

**Sub_metering_3:** energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Plot 1
Reading and subsetting the data
```
power_consumption<-read.table("household_power_consumption.txt",skip=1,sep=";",col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

subpower<-subset(power_consumption,power_consumption$Date=="1/2/2007"|power_consumption$Date=="2/2/2007")
```
plotting the histogram of "Global_active_power" and save it as PNG file called "plot1"

```
png(filename ="C:/Users/mahmo/Documents/plot1.png",width=480, height=480)

hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.off()
```

![plot1](https://user-images.githubusercontent.com/41892582/185813414-e6d8ffc2-260e-4a40-b6eb-fecf4b90f77b.png)

## Plot 2

Reading and subsetting the data

```
power_consumption<-read.table("household_power_consumption.txt",skip=1,sep=";",col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

subpower<-subset(power_consumption,power_consumption$Date=="1/2/2007"|power_consumption$Date=="2/2/2007")
```

Transforming the Data and the Time variable from characters into object of type Date and POSIXlt

```
subpower$Date<-as.Date(subpower$Date,format="%d/%m/%Y")
subpower$Time<-strptime(subpower$Time,format = "%H:%M:%S")

subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
```

ploting Global Active Power Vs Time and save it as PNG file called "plot2"

```
png(filename = "C:/Users/mahmo/Documents/plot2.png",width=480, height=480)

plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",main="Global Active Power Vs Time",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()
```

![plot2](https://user-images.githubusercontent.com/41892582/185815557-a80687f8-9a79-431e-a710-0c5b170afd72.png)

## Plot 3

Reading and subsetting the data

```
power_consumption<-read.table("household_power_consumption.txt",skip=1,sep=";",col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

subpower<-subset(power_consumption,power_consumption$Date=="1/2/2007"|power_consumption$Date=="2/2/2007")
```

Transforming the Data and the Time variable from characters into object of type Date and POSIXlt

```
subpower$Date<-as.Date(subpower$Date,format="%d/%m/%Y")
subpower$Time<-strptime(subpower$Time,format = "%H:%M:%S")

subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
```

##ploting Energy sub-metering and save it as PNG file called "plot2"
```
png(filename = "C:/Users/mahmo/Documents/plot3.png",width=480, height=480)

plot(subpower$Time,subpower$Sub_metering_1,type="n",xlab="",main = "Energy sub-metering",ylab="Energy sub metering")
with(subpower,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(subpower,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(subpower,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
```
![plot3](https://user-images.githubusercontent.com/41892582/185816264-b2e3ed94-b9bd-4d76-877d-765b64cb8299.png)

## Plot 4

Reading and subsetting the data

```
power_consumption<-read.table("household_power_consumption.txt",skip=1,sep=";",col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

subpower<-subset(power_consumption,power_consumption$Date=="1/2/2007"|power_consumption$Date=="2/2/2007")
```

Transforming the Data and the Time variable from characters into object of type Date and POSIXlt

```
subpower$Date<-as.Date(subpower$Date,format="%d/%m/%Y")
subpower$Time<-strptime(subpower$Time,format = "%H:%M:%S")

subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
```

ploting 4 Graphs that form the plot and save it as PNG file called "plot4"

```
png(filename = "C:/Users/mahmo/Documents/plot4.png",width=480, height=480)

par(mfrow=c(2,2))

with(subpower,{
  plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",  xlab="",ylab="Global Active Power")  
  plot(subpower$Time,as.numeric(as.character(subpower$Voltage)), type="l",xlab="datetime",ylab="Voltage")
  plot(subpower$Time,subpower$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
  with(subpower,lines(Time,as.numeric(as.character(Sub_metering_1))))
  with(subpower,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
  with(subpower,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
  legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.6)
  plot(subpower$Time,as.numeric(as.character(subpower$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power")
})

dev.off()
```

![plot4](https://user-images.githubusercontent.com/41892582/185816912-be2570bb-db03-493d-8dda-3488541fba39.png)
