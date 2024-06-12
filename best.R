best <- function(state, outcome) {
  # reading in the data
  outcome_table <- read.csv("outcome-of-care-measures.csv", colClasses="character")
  
  # checking for invalid state
  if(length(outcome_table$State[outcome_table$State==state])==0) stop("invalid state")
  
  # finding logical indices with desired state and no NAs
  if(outcome=="heart failure") logical_indices <- outcome_table$State==state & (outcome_table$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure!="Not Available")
  else if(outcome=="heart attack") logical_indices <- outcome_table$State==state & (outcome_table$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack!="Not Available")
  else if(outcome=="pneumonia") logical_indices <- outcome_table$State==state & (outcome_table$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia!="Not Available")
  
  # checking for invalid outcome
  else stop("invalid outcome")
  
  # finding all eligible rates and eligible hospitals as per logical_indices
  eligible_rates <- character(0)
  eligible_hospitals <- character(0)
  for (i in 1:4706) {
    if(logical_indices[i]==TRUE) {
      if(outcome=="heart failure") eligible_rates <- c(eligible_rates, outcome_table$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure[i])
      else if(outcome=="heart attack") eligible_rates <- c(eligible_rates, outcome_table$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack[i])
      else if(outcome=="pneumonia") eligible_rates <- c(eligible_rates, outcome_table$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia[i])
      eligible_hospitals <- c(eligible_hospitals, outcome_table$Hospital.Name[i])
    }
  }
  eligible_rates <- as.numeric(eligible_rates)
  
  # finding the best rate and corresponding hospitals
  best_rate <- min(eligible_rates)
  best_hospitals <- character(0)
  for (i in 1:length(eligible_rates)) {
    if(eligible_rates[i]==best_rate) best_hospitals <- c(best_hospitals, eligible_hospitals[i])
  }
  
  # finding lexicographically least best hospital
  best_hospital <- min(best_hospitals)
  
  # returning the best hospital
  best_hospital
}