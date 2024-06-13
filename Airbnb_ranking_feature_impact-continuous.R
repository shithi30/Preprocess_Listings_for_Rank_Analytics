# checking impact of continuous features: host_response_rate; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$host_response_rate[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$host_response_rate[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$host_response_rate[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$host_response_rate[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$host_response_rate[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df Sum Sq Mean Sq F value Pr(>F)    
# ind             4   10.9   2.728   170.8 <2e-16 ***
# Residuals   30605  488.9   0.016  

# checking impact of continuous features: security_deposit; good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$security_deposit[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$security_deposit[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$security_deposit[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$security_deposit[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$security_deposit[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results 

# Df    Sum Sq Mean Sq F value Pr(>F)
# ind             4 4.697e+05  117424   1.687   0.15
# Residuals   30605 2.131e+09   69615 

# checking impact of continuous features: sqft; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$sqft[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$sqft[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$sqft[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$sqft[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$sqft[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results  

# Df    Sum Sq  Mean Sq F value Pr(>F)    
# ind             4  79424781 19856195    2790 <2e-16 ***
# Residuals   30605 217810752     7117 

# checking impact of continuous features: availability_365; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$availability_365[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$availability_365[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$availability_365[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$availability_365[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$availability_365[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results            

# Df    Sum Sq Mean Sq F value   Pr(>F)    
# ind             4   1152630  288157   18.79 1.91e-15 ***
# Residuals   30605 469265778   15333    

# checking impact of continuous features: beds; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$beds[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$beds[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$beds[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$beds[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$beds[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df Sum Sq Mean Sq F value Pr(>F)    
# ind             4    398   99.60   61.33 <2e-16 ***
# Residuals   30605  49704    1.62

# checking impact of continuous features: host_listings; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$host_listings[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$host_listings[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$host_listings[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$host_listings[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$host_listings[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df Sum Sq Mean Sq F value Pr(>F)    
# ind             4   6675  1668.8   100.3 <2e-16 ***
# Residuals   30605 509016    16.6  

# checking impact of continuous features: cleaning_fee; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$cleaning_fee[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$cleaning_fee[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$cleaning_fee[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$cleaning_fee[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$cleaning_fee[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df   Sum Sq Mean Sq F value  Pr(>F)   
# ind             4     7532  1882.9   4.115 0.00246 **
# Residuals   30605 14003144   457.5

# checking impact of continuous features: latitude; good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$latitude[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$latitude[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$latitude[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$latitude[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$latitude[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df Sum Sq   Mean Sq F value Pr(>F)
# ind             4  0.006 0.0015964    1.69  0.149
# Residuals   30605 28.913 0.0009447 

# checking impact of continuous features: longitude; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$longitude[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$longitude[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$longitude[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$longitude[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$longitude[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df Sum Sq  Mean Sq F value   Pr(>F)    
# ind             4   0.06 0.015122   4.643 0.000956 ***
# Residuals   30605  99.67 0.003257 

# checking impact of continuous features: extra_people; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$extra_people[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$extra_people[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$extra_people[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$extra_people[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$extra_people[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df  Sum Sq Mean Sq F value   Pr(>F)    
# ind             4    5684  1420.9   11.67 1.79e-09 ***
# Residuals   30605 3725006   121.7

# checking impact of continuous features: guest_included; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$guest_included[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$guest_included[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$guest_included[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$guest_included[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$guest_included[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df Sum Sq Mean Sq F value   Pr(>F)    
# ind             4     63   15.79   19.51 4.79e-16 ***
# Residuals   30605  24783    0.81  

# checking impact of continuous features: max_nights; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$max_nights[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$max_nights[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$max_nights[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$max_nights[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$max_nights[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df    Sum Sq   Mean Sq F value  Pr(>F)   
# ind             4 1.961e+15 4.902e+14   3.501 0.00729 **
# Residuals   30605 4.286e+18 1.400e+14

# checking impact of continuous features: min_nights; bad feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$min_nights[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$min_nights[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$min_nights[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$min_nights[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$min_nights[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df   Sum Sq Mean Sq F value Pr(>F)
# ind             4     7690    1923   0.879  0.476
# Residuals   30605 66965601    2188

# checking impact of continuous features: reviews; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$reviews[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$reviews[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$reviews[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$reviews[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$reviews[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df   Sum Sq Mean Sq F value Pr(>F)    
# ind             4   563328  140832   80.39 <2e-16 ***
# Residuals   30605 53614405    1752

# checking impact of continuous features: price; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

Group1 <- dummy_dataset$price[dummy_dataset$classified_rank==0]
Group2 <- dummy_dataset$price[dummy_dataset$classified_rank==1]
Group3 <- dummy_dataset$price[dummy_dataset$classified_rank==2]
Group4 <- dummy_dataset$price[dummy_dataset$classified_rank==3]
Group5 <- dummy_dataset$price[dummy_dataset$classified_rank==4]

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set
Stacked_Groups <- stack(Combined_Groups)
Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df    Sum Sq Mean Sq F value Pr(>F)  
# ind             4    205933   51483   2.868 0.0218 *
# Residuals   30605 549355040   17950
