# project1
It is a document where you will find the files of the project 1
This is the first program related to the plot1
#############################################################################
#############################################################################
# load all data
library(readr)
library(lubridate)
household_power_consumption <- read_delim("~/Documents/Documentación Semestre/2020/Statistics course/statistic course in R/household_power_consumption.txt", 
                                        ";", escape_double = FALSE, trim_ws = TRUE)
household_power_consumption$Date<-as.Date(household_power_consumption$Date,"%d/%m/%Y") 
household_power_consumption<- subset(household_power_consumption, household_power_consumption$Date >= "2007-02-01" & household_power_consumption$Date <= "2007-02-02" )
household_power_consumption$Date<-as.POSIXct(paste(household_power_consumption$Date, household_power_consumption$Time), format="%Y-%m-%d %H:%M:%S")
hist((household_power_consumption$Global_active_power), col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.copy(png,'plot1.png', height = 480, width = 480)
dev.off()
##########################################################################################
##########################################################################################
PLOT 2
##########################################################################################
# load all data
library(readr)
library(lubridate)
household_power_consumption <- read_delim("~/Documents/Documentación Semestre/2020/Statistics course/statistic course in R/household_power_consumption.txt", 
                                          ";", escape_double = FALSE, trim_ws = TRUE)
household_power_consumption$Date<-as.Date(household_power_consumption$Date,"%d/%m/%Y") 
household_power_consumption<- subset(household_power_consumption, household_power_consumption$Date >= "2007-02-01" & household_power_consumption$Date <= "2007-02-02" )
household_power_consumption$Date<-as.POSIXct(paste(household_power_consumption$Date, household_power_consumption$Time), format="%Y-%m-%d %H:%M:%S")
par(mfrow=c(1,1))
#png(filaname='plot2.png',width=480,height=480,bg='transparent')
plot(x=household_power_consumption$Date,y=household_power_consumption$Global_active_power, type="l",ylab="Global Active Power(kilowatts)", xlab="")
dev.copy(png,'plot2.png', height = 480, width = 480)
dev.off()
##########################################################################################
##########################################################################################
PLOT3
##########################################################################################
# load all data
library(readr)
library(lubridate)
household_power_consumption <- read_delim("~/Documents/Documentación Semestre/2020/Statistics course/statistic course in R/household_power_consumption.txt", 
                                          ";", escape_double = FALSE, trim_ws = TRUE)
household_power_consumption$Date<-as.Date(household_power_consumption$Date,"%d/%m/%Y") 
household_power_consumption<- subset(household_power_consumption, household_power_consumption$Date >= "2007-02-01" & household_power_consumption$Date <= "2007-02-02" )
household_power_consumption$Date<-as.POSIXct(paste(household_power_consumption$Date, household_power_consumption$Time), format="%Y-%m-%d %H:%M:%S")
par(mfrow=c(1,1))
plot(x=household_power_consumption$Date,y=household_power_consumption$Sub_metering_1, type="l",ylab="Energy sub metering", xlab="")
lines(x=household_power_consumption$Date, y=household_power_consumption$Sub_metering_2, type='l', col='red')
lines(x=household_power_consumption$Date, y=household_power_consumption$Sub_metering_3, type='l', col='blue')
legend(x='topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty=c(1, 1, 1))
dev.copy(png,'plot3.png', height = 480, width = 480)
dev.off()
#########################################################################################
##########################################################################################
PLOT 4
##########################################################################################
# load all data
library(readr)
library(lubridate)
household_power_consumption <- read_delim("~/Documents/Documentación Semestre/2020/Statistics course/statistic course in R/household_power_consumption.txt", 
                                          ";", escape_double = FALSE, trim_ws = TRUE)
household_power_consumption$Date<-as.Date(household_power_consumption$Date,"%d/%m/%Y") 
household_power_consumption<- subset(household_power_consumption, household_power_consumption$Date >= "2007-02-01" & household_power_consumption$Date <= "2007-02-02" )
household_power_consumption$Date<-as.POSIXct(paste(household_power_consumption$Date, household_power_consumption$Time), format="%Y-%m-%d %H:%M:%S")
par(mfrow=c(2,2))
with(household_power_consumption,{
  #plot1
  plot(x=household_power_consumption$Date,y=household_power_consumption$Global_active_power, type="l",ylab="Global Active Power(kilowatts)", xlab="")
  
#plot 2
  plot(x=household_power_consumption$Date, y=household_power_consumption$Voltage, type='l', xlab='datetime', ylab='Voltage')
  
#plot3
plot(x=household_power_consumption$Date,y=household_power_consumption$Sub_metering_1, type="l",ylab="Energy sub metering", xlab="")
lines(x=household_power_consumption$Date, y=household_power_consumption$Sub_metering_2, type='l', col='red')
lines(x=household_power_consumption$Date, y=household_power_consumption$Sub_metering_3, type='l', col='blue')
legend(x='topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty=c(1, 1, 1))

#plot4
plot(x=household_power_consumption$Date, y=household_power_consumption$Global_reactive_power, type='l', 
     xlab='datetime', ylab='Global_reactive_power')
})

dev.copy(png,'plot4.png', height = 480, width = 480)
dev.off()
