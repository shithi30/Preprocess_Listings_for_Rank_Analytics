pollutantmean <- function(directory, pollutant, id=1:332) {
  # set working directory to what's in argument
  setwd(directory)
  
  # initializing sum and no. of entries
  temp_sum <- 0
  temp_entries <- 0
  
  for(i in id) {
    # setting file-names right
    if (i<10) temp_file <- paste("00",i, ".csv", sep="")
    else if (i<100) temp_file <- paste("0",i, ".csv", sep="")
    else temp_file <- paste(i, ".csv", sep="")
    
    # bringing inside temp_data the desired column without NAs
    temp_data <- read.csv(temp_file)
    if(pollutant=="sulfate") temp_data <- temp_data$sulfate
    else if(pollutant=="nitrate") temp_data <- temp_data$nitrate
    temp_data <- temp_data[!is.na(temp_data)]
    
    # summing pollutants and no. of entries
    temp_sum <- temp_sum+sum(temp_data)
    temp_entries <- temp_entries+length(temp_data)
  }
  
  # calculate and return desired mean
  temp_sum/temp_entries
}

complete <- function(directory, id=1:332) {
  # set working directory to what's in argument
  setwd(directory)
  
  # intializing nobs to hold number of complete cases
  nobs <- c(-1)
  
  for(i in id) {
    # setting file-names right
    if (i<10) temp_file <- paste("00",i, ".csv", sep="")
    else if (i<100) temp_file <- paste("0",i, ".csv", sep="")
    else temp_file <- paste(i, ".csv", sep="")
    
    # bringing inside temp_data the data of current file
    temp_data <- read.csv(temp_file)
    
    # counting number of complete cases in the file
    complete <- complete.cases(temp_data)
    complete <- sum(complete)
    nobs <- c(nobs, complete)
  }
  
  # moving nobs 1 position due to initialization
  nobs <- nobs[2:length(nobs)]
  
  # format to frame and return
  data.frame(id, nobs)
}

corr <- function(directory, threshold=0) {
  # set working directory to what's in argument
  setwd(directory)
  
  correlate <- c(-1)
  upper_threshold <- c(FALSE)
  
  for(i in 1:332) {
    # setting file-names right
    if (i<10) temp_file <- paste("00",i, ".csv", sep="")
    else if (i<100) temp_file <- paste("0",i, ".csv", sep="")
    else temp_file <- paste(i, ".csv", sep="")
    
    # bringing inside temp_data the data of current file
    temp_data <- read.csv(temp_file)
    
    # getting indices of complete cases in temp_data
    complete <- complete.cases(temp_data)
    
    # removing incomplete cases from temp_data
    temp_data <- temp_data[complete, ]
    
    # getting number of complete cases in temp_data
    complete <- sum(complete)
    
    # calculate correlation
    correlate <- c(correlate, cor(temp_data$sulfate, temp_data$nitrate))
    
    # logical indices of files that surpassed threshold
    if(complete>threshold) upper_threshold <- c(upper_threshold, TRUE)
    else upper_threshold <- c(upper_threshold, FALSE) 
  }
  correlate[upper_threshold]
}
