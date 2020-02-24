w1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
xp1<-w1[w1$Date=="1/2/2007"|w1$Date=="2/2/2007",]
xp1$Date=as.Date(xp1$Date, format = "%d/%m/%Y")
xp1$Date_Time<-as.POSIXct(paste(xp1$Date,xp1$Time))

with(xp1,{plot(Date_Time,Sub_metering_1, type = "l", ylab="Energy sub metering", xlab="")
    lines(Date_Time,Sub_metering_2, col = "red") 
    lines(Date_Time,Sub_metering_3, col = "blue")})  
legend("topright", col = c("black", "red", "blue"), lwd=c(1,1,1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

png("plot3.png")
dev.control("enable")
with(xp1,{plot(Date_Time,Sub_metering_1, type = "l", ylab="Energy sub metering", xlab="")
    lines(Date_Time, as.numeric(Sub_metering_2), col = "red") 
    lines(Date_Time, as.numeric(Sub_metering_3), col = "blue")})  
legend("topright", col = c("black", "red", "blue"), lwd=c(1,1,1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
