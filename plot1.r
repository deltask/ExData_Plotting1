household <- read.table("household_power_consumption.txt",sep =";",header = T,stringsAsFactors = F,dec=".")
req_data <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]
gap <- as.numeric(req_data$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(gap,col = "red",main="Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()
