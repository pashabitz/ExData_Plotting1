plot2 <- function() {
  colClasses <- c("character", "character", "character", "character", "character", 
                 "character", "character", "character", "character")
  data <- read.delim("household_power_consumption.txt", sep=";", colClasses=colClasses)
  data <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")
  png("plot2.png")
  plot(as.numeric(data$Global_active_power), main="", xlab="", type="l", 
       ylab="Global Active Power", xaxt="n")
  axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1,nrow(data) / 2,nrow(data)))
  dev.off()
}