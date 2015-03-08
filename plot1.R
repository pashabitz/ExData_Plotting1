plot1 <- function() {
  colClasses <- c("character", "character", "character", "character", "character", 
                 "character", "character", "character", "character")
  data <- read.delim("household_power_consumption.txt", sep=";", colClasses=colClasses)
  data <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")
  png("plot1.png")
  hist(as.numeric(data$Global_active_power), main="Global Active Power", 
       xlab="Global Active Power (kilowatts)", col="red")
  dev.off()
}