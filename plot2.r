household <- read.table("household_power_consumption.txt",sep =";",header = T,stringsAsFactors = F,dec=".")
req_data <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]


day_time <-  strptime(paste(req_data$Date,req_data$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
gap <- as.numeric(req_data$Global_active_power)
png("plot2.png",width = 480,height = 480)
plot(day_time,gap,type = "l",xlab="",ylab="Global Active Power (Kilowatts)")
dev.off()