complete <- function(directory, id = 1:332) {
  
  myfiles <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
 
  nobs <- numeric()
  
  for (i in id) {
    mydata <- read.csv(myfiles[i])
    nobs <- c(nobs, sum(complete.cases(mydata)))
    
    }
  
  data.frame(id, nobs)
}