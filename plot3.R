> fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
> powercon <- download.file(fileUrl,destfile="./household_power_consumption.txt",method="curl")
> c <- subset(powercon,Date=="2007/2/1"|Date=="2007/2/2")
> Esm1 <- c$Sub_metering_1
> Esm2 <- c$Sub_metering_2
> Esm3 <- c$Sub_metering_3
> plot(Esm1,type="l",lty=1,ylab="Energy sub metering",col="black")
> points(Esm2,type="l",lty=1,col="red")
> points(Esm3,type="l",lty=1,col="blue")
> legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
> dev.copy(png,file="plot3.png")
> dev.off()
