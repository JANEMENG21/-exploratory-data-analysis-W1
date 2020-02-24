w1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
xp1<-w1[w1$Date=="1/2/2007"|w1$Date=="2/2/2007",]
xp1$Date=as.Date(xp1$Date, format = "%d/%m/%Y")
xp1$Date_Time<-as.POSIXct(paste(xp1$Date,xp1$Time))
plot(xp1$Date_Time,as.numeric(xp1$Global_active_power), type = "l",ylab="Global Active Power (kilowatts)", xlab="")#must use POSIXCT

png("plot2.png")
dev.control("enable")
plot(xp1$Date_Time,as.numeric(xp1$Global_active_power), type = "l",ylab="Global Active Power (kilowatts)", xlab="")#must use POSIXCT
dev.off()
