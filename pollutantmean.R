pollutantmean <- function (directory, pollutant, id = 1:332) {
  
  myfiles <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  
  x <- numeric()
  
  for(i in id) {
    mydata <- read.csv(myfiles[i])
    x <- c(x, mydata[[pollutant]])
  }
  
 mean(x, na.rm = TRUE)

}
