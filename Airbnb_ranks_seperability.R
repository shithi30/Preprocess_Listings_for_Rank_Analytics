# ANOVA-test to verify separability of scores

setwd("F:/Sheba Assignment")
dummy_rank_scores <- read.csv("rank_scores.csv")

Group1 <- dummy_rank_scores$accuracy
Group2 <- dummy_rank_scores$checkin
Group3 <- dummy_rank_scores$cleanliness
Group4 <- dummy_rank_scores$communication
Group5 <- dummy_rank_scores$location

Group1 <- as.numeric(Group1)
Group2 <- as.numeric(Group2)
Group3 <- as.numeric(Group3)
Group4 <- as.numeric(Group4)
Group5 <- as.numeric(Group5)

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3, Group4, Group5)) # combines the data into a single data set

summary(Combined_Groups) # min, median, mean, max 

# Group1           Group2           Group3           Group4           Group5      
#  Min.   : 2.000   Min.   : 2.000   Min.   : 2.000   Min.   : 2.000   Min.   : 2.000  
#  1st Qu.:10.000   1st Qu.:10.000   1st Qu.: 9.000   1st Qu.:10.000   1st Qu.: 9.000  
#  Median :10.000   Median :10.000   Median :10.000   Median :10.000   Median :10.000  
#  Mean   : 9.664   Mean   : 9.714   Mean   : 9.325   Mean   : 9.732   Mean   : 9.506  
#  3rd Qu.:10.000   3rd Qu.:10.000   3rd Qu.:10.000   3rd Qu.:10.000   3rd Qu.:10.000  
#  Max.   :10.000   Max.   :10.000   Max.   :10.000   Max.   :10.000   Max.   :10.000 

Stacked_Groups <- stack(Combined_Groups)

Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

# Df Sum Sq Mean Sq F value Pr(>F)    
# ind             4   2141   535.2   852.1 <2e-16 ***
# Residuals   90540  56871     0.6
