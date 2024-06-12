rankall <- function(outcome, num="best") {
  # reading in the data
  outcome_table <- read.csv("outcome-of-care-measures.csv", colClasses="character")
  
  # state, hospital: initial columns
  state_init <- levels(factor(outcome_table$State))
  hospital_init <- character(0)
  
  # for each state, determine desirably ranked hospital
  for (j in 1:length(state_init)) {
    current_state <- state_init[j] 
    ranked_hospital <- rankhospital(current_state, outcome, num)
    
    hospital_init <- c(hospital_init, ranked_hospital)
  }
  
  # order alphabetically according to state
  rank_observations <- order(state_init, hospital_init)
  
  # state, hospital: final columns
  state <- character(0)
  hospital <- character(0)
  for(k in 1:length(rank_observations)) {
    state <- c(state, state_init[rank_observations[k]]) 
    hospital <- c(hospital, hospital_init[rank_observations[k]])
  }
  
  # store columns in a frame
  res <- data.frame(hospital, state, row.names=state)
  
  # return the frame
  res
}

