## Read Household_power_consumption data in to R
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";", stringsAsFactors=FALSE,dec=".")
## subset only first two days in Feb2007
req_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
## Create new datatime variable
datetime <- strptime(paste(req_data$Date, req_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Global_active_power <- as.numeric(req_data$Global_active_power)
png("plot2.png",width=480,height=480)
plot(datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()