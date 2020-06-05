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