## Read Household_power_consumption data in to R
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";", stringsAsFactors=FALSE,dec=".")
## subset only first two days in Feb2007
req_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
##convert Global_active_power to numeric
Global_active_power <- as.numeric(req_data$Global_active_power)
## open png graph device
png("plot1.png",width=480,height=480)
hist(Global_active_power,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")
## close png graph device
dev.off() 