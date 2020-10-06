corr <- function(directory, threshhold = 0) {
  
  myfiles <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  correlations <- vector("numeric", length = 0)
  
  for (i in 1:length(myfiles)) {
    mydata <- read.csv(myfiles[i])
    cases <- sum(complete.cases(mydata))
    
    if (cases > threshhold) {
      
      correlations <-  c(correlations, cor(mydata[["sulfate"]], mydata["nitrate"], use = "complete.obs"))
    } 
  }
  correlations
}