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
