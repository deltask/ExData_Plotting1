household <- read.table("household_power_consumption.txt",sep =";",header = T,stringsAsFactors = F,dec=".")
req_data <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot4.png",width = 480,height = 480)
par(mfrow =c(2,2))

#ESM plot
day_time <-  strptime(paste(req_data$Date,req_data$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
sm1 <- as.numeric(req_data$Sub_metering_1)
sm2 <- as.numeric(req_data$Sub_metering_2)
sm3 <- as.numeric(req_data$Sub_metering_3)
plot(day_time,sm1,type = "l",xlab="",ylab="Energy Sub Metering")
lines(day_time,sm2,type = "l",col = "Red")
lines(day_time,sm3,type = "l",col = "Blue")
legend("topright",c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),lty = 1,lwd = 2.5,col=c("black","red","blue"))
#GAP Plot
gap <- as.numeric(req_data$Global_active_power)
plot(day_time,gap,type = "l",xlab="",ylab="Global Active Power (Kilowatts)")

#V(voltage) plot
v <- as.numeric(req_data$Voltage)
plot(day_time,v,type = "l",xlab = "datetime",ylab="Voltage")

#GRP(global reactive power) Plot
grp <- as.numeric(req_data$Global_reactive_power)
plot(day_time,grp,type="l",xlab = "datetime",ylab="Global_reactive_power")


dev.off()