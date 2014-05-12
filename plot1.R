> fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
> powercon <- download.file(fileUrl,destfile="./household_power_consumption.txt",method="curl")
> c <- subset(powercon,Date=="2007/2/1"|Date=="2007/2/2")
> hist(c$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
> dev.copy(png,file="plot1.png")
> dev.off()