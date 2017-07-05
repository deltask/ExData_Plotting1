

day_time <-  strptime(paste(req_data$Date,req_data$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
sm1 <- as.numeric(req_data$Sub_metering_1)
sm2 <- as.numeric(req_data$Sub_metering_2)
sm3 <- as.numeric(req_data$Sub_metering_3)
png("plot3.png",width = 480,height = 480)
plot(day_time,sm1,type = "l",xlab="",ylab="Energy Sub Metering")
lines(day_time,sm2,type = "l",col = "Red")
lines(day_time,sm3,type = "l",col = "Blue")
legend("topright",c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),lty = 1,lwd = 2.5,col=c("black","red","blue"))
dev.off()
