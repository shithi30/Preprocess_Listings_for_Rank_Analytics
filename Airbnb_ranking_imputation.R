# mean imputation

setwd("F:/Sheba Assignment")
dummy <- read.csv("predict_rank_classed.csv")

dummy_classified_rank <- dummy$classified_rank

dummy_beds <- dummy$beds
dummy_beds[is.na(dummy_beds) & dummy_classified_rank==0] <- mean(dummy_beds[!is.na(dummy_beds) & dummy_classified_rank==0])
dummy_beds[is.na(dummy_beds) & dummy_classified_rank==1] <- mean(dummy_beds[!is.na(dummy_beds) & dummy_classified_rank==1])
dummy_beds[is.na(dummy_beds) & dummy_classified_rank==2] <- mean(dummy_beds[!is.na(dummy_beds) & dummy_classified_rank==2])
dummy_beds[is.na(dummy_beds) & dummy_classified_rank==3] <- mean(dummy_beds[!is.na(dummy_beds) & dummy_classified_rank==3])
dummy_beds[is.na(dummy_beds) & dummy_classified_rank==4] <- mean(dummy_beds[!is.na(dummy_beds) & dummy_classified_rank==4])
dummy$beds <- dummy_beds

dummy_cleaning_fee <- dummy$cleaning_fee
dummy_cleaning_fee[is.na(dummy_cleaning_fee) & dummy_classified_rank==0] <- mean(dummy_cleaning_fee[!is.na(dummy_cleaning_fee) & dummy_classified_rank==0])
dummy_cleaning_fee[is.na(dummy_cleaning_fee) & dummy_classified_rank==1] <- mean(dummy_cleaning_fee[!is.na(dummy_cleaning_fee) & dummy_classified_rank==1])
dummy_cleaning_fee[is.na(dummy_cleaning_fee) & dummy_classified_rank==2] <- mean(dummy_cleaning_fee[!is.na(dummy_cleaning_fee) & dummy_classified_rank==2])
dummy_cleaning_fee[is.na(dummy_cleaning_fee) & dummy_classified_rank==3] <- mean(dummy_cleaning_fee[!is.na(dummy_cleaning_fee) & dummy_classified_rank==3])
dummy_cleaning_fee[is.na(dummy_cleaning_fee) & dummy_classified_rank==4] <- mean(dummy_cleaning_fee[!is.na(dummy_cleaning_fee) & dummy_classified_rank==4])
dummy$cleaning_fee <- dummy_cleaning_fee

dummy_host_response_rate <- dummy$host_response_rate
dummy_host_response_rate[is.na(dummy_host_response_rate) & dummy_classified_rank==0] <- mean(dummy_host_response_rate[!is.na(dummy_host_response_rate) & dummy_classified_rank==0])
dummy_host_response_rate[is.na(dummy_host_response_rate) & dummy_classified_rank==1] <- mean(dummy_host_response_rate[!is.na(dummy_host_response_rate) & dummy_classified_rank==1])
dummy_host_response_rate[is.na(dummy_host_response_rate) & dummy_classified_rank==2] <- mean(dummy_host_response_rate[!is.na(dummy_host_response_rate) & dummy_classified_rank==2])
dummy_host_response_rate[is.na(dummy_host_response_rate) & dummy_classified_rank==3] <- mean(dummy_host_response_rate[!is.na(dummy_host_response_rate) & dummy_classified_rank==3])
dummy_host_response_rate[is.na(dummy_host_response_rate) & dummy_classified_rank==4] <- mean(dummy_host_response_rate[!is.na(dummy_host_response_rate) & dummy_classified_rank==4])
dummy$host_response_rate <- dummy_host_response_rate

dummy_security_deposit <- dummy$security_deposit
dummy_security_deposit[is.na(dummy_security_deposit) & dummy_classified_rank==0] <- mean(dummy_security_deposit[!is.na(dummy_security_deposit) & dummy_classified_rank==0])
dummy_security_deposit[is.na(dummy_security_deposit) & dummy_classified_rank==1] <- mean(dummy_security_deposit[!is.na(dummy_security_deposit) & dummy_classified_rank==1])
dummy_security_deposit[is.na(dummy_security_deposit) & dummy_classified_rank==2] <- mean(dummy_security_deposit[!is.na(dummy_security_deposit) & dummy_classified_rank==2])
dummy_security_deposit[is.na(dummy_security_deposit) & dummy_classified_rank==3] <- mean(dummy_security_deposit[!is.na(dummy_security_deposit) & dummy_classified_rank==3])
dummy_security_deposit[is.na(dummy_security_deposit) & dummy_classified_rank==4] <- mean(dummy_security_deposit[!is.na(dummy_security_deposit) & dummy_classified_rank==4])
dummy$security_deposit <- dummy_security_deposit

dummy_sqft <- dummy$sqft
dummy_sqft[is.na(dummy_sqft) & dummy_classified_rank==0] <- mean(dummy_sqft[!is.na(dummy_sqft) & dummy_classified_rank==0])
dummy_sqft[is.na(dummy_sqft) & dummy_classified_rank==1] <- mean(dummy_sqft[!is.na(dummy_sqft) & dummy_classified_rank==1])
dummy_sqft[is.na(dummy_sqft) & dummy_classified_rank==2] <- mean(dummy_sqft[!is.na(dummy_sqft) & dummy_classified_rank==2])
dummy_sqft[is.na(dummy_sqft) & dummy_classified_rank==3] <- mean(dummy_sqft[!is.na(dummy_sqft) & dummy_classified_rank==3])
dummy_sqft[is.na(dummy_sqft) & dummy_classified_rank==4] <- mean(dummy_sqft[!is.na(dummy_sqft) & dummy_classified_rank==4])
dummy$sqft <- dummy_sqft

write.csv(dummy, "predict_rank_classed_imputed.csv", row.names=FALSE)
