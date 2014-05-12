> fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
> powercon <- download.file(fileUrl,destfile="./household_power_consumption.txt",method="curl")
> c <- subset(powercon,Date=="2007/2/1"|Date=="2007/2/2")
> Gap <- c$Global_active_power
> plot(Gap,type="l",lty=1,ylab="Global Active Power")
> dev.copy(png,file="plot2.png")
> dev.off()
