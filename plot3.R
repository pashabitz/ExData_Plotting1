plot3 <- function() {
  colClasses <- c("character", "character", "character", "character", "character", 
                 "character", "character", "character", "character")
  data <- read.delim("household_power_consumption.txt", sep=";", colClasses=colClasses)
  data <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")
  png("plot3.png")
  plot(as.numeric(data$Sub_metering_1), main="", xlab="", type="l", 
       ylab="Energy sum metering", xaxt="n")
  lines(as.numeric(data$Sub_metering_2), col="red")
  lines(as.numeric(data$Sub_metering_3), col="blue")
  axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1,nrow(data) / 2,nrow(data)))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
  dev.off()
}