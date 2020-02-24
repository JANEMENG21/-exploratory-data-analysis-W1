w1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
xp1<-w1[w1$Date=="1/2/2007"|w1$Date=="2/2/2007",]
hist(as.numeric(xp1$Global_active_power),xlab="Global active power(kilowatts)",col="red",main="Global active power")

png("plot1.png")
dev.control("enable")
hist(as.numeric(xp1$Global_active_power),xlab="Global active power(kilowatts)",col="red",main="Global active power")#plot
dev.off()
