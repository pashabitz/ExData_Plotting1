plot4 <- function() {
  colClasses <- c("character", "character", "character", "character", "character", 
                 "character", "character", "character", "character")
  data <- read.delim("household_power_consumption.txt", sep=";", colClasses=colClasses)
  data <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")
  png("plot4.png")
  par(mfrow=c(2,2))
  
  plot(as.numeric(data$Global_active_power), main="", xlab="", type="l", 
       ylab="Global Active Power", xaxt="n")
  axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1,nrow(data) / 2,nrow(data)))
  
  plot(as.numeric(data$Voltage), main="", xlab="datetime", type="l", 
       ylab="Voltage", xaxt="n")
  axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1,nrow(data) / 2,nrow(data)))
  
  plot(as.numeric(data$Sub_metering_1), main="", xlab="", type="l", 
       ylab="Energy sum metering", xaxt="n")
  lines(as.numeric(data$Sub_metering_2), col="red")
  lines(as.numeric(data$Sub_metering_3), col="blue")
  axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1,nrow(data) / 2,nrow(data)))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
  
  plot(as.numeric(data$Global_reactive_power), main="", xlab="datetime", type="l", 
       ylab="Global_reactive_power", xaxt="n")
  axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1,nrow(data) / 2,nrow(data)))
  
  dev.off()
}