# t-test to verify London is consistently gathering more tourists throught all zip-areas in 2018
setwd("F:/Sheba Assignment")
dummy_zipcoded_2018_reviews <- read.csv("zipcoded_2018_reviews.csv")
dummy_reviews <- as.numeric(dummy_zipcoded_2018_reviews$reviews)
dummy_place <- as.numeric(dummy_zipcoded_2018_reviews$place)
t.test(dummy_reviews~dummy_place, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_reviews by dummy_place
# t = -5.2364, df = 39, p-value = 5.924e-06
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -4522.492 -2002.189
# sample estimates:
# mean in group 1 mean in group 2 
#        16.65978      3279.00000 

# t-test to verify London consistently shows greater yearly availability 
setwd("F:/Sheba Assignment")
dummy_zipcoded_upto_2017_availability <- read.csv("zipcoded_upto_2017_availability.csv")
dummy_avg_availability_365 <- as.numeric(dummy_zipcoded_upto_2017_availability$avg_availability_365)
dummy_place <- as.numeric(dummy_zipcoded_upto_2017_availability$place)
t.test(dummy_avg_availability_365~dummy_place, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_avg_availability_365 by dummy_place
# t = 3.4195, df = 64.334, p-value = 0.001094
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   9.628041 36.677863
# sample estimates:
# mean in group 1 mean in group 2 
#        88.06705        64.91409

# t-test to verify London consistently shows lower security deposit
setwd("F:/Sheba Assignment")
dummy_zipcoded_upto_2017_security <- read.csv("zipcoded_upto_2017_security.csv")
dummy_avg_security <- as.numeric(dummy_zipcoded_upto_2017_security$avg_security)
dummy_place <- dummy_zipcoded_upto_2017_security$place
t.test(dummy_avg_security~dummy_place, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_avg_security by dummy_place
# t = -4.2804, df = 55.655, p-value = 7.423e-05
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  -302.3179 -109.5399
# sample estimates:
# mean in group L mean in group P 
#        273.9173        479.8462

# t-test to verify London consistently shows greater number of bedrooms
setwd("F:/Sheba Assignment")
dummy_zipcoded_bedrooms <- read.csv("zipcoded_bedrooms.csv")
dummy_avg_bedrooms <- as.numeric(dummy_zipcoded_bedrooms$avg_bedrooms)
dummy_place <- dummy_zipcoded_bedrooms$place
t.test(dummy_avg_bedrooms~dummy_place, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_avg_bedrooms by dummy_place
# t = 2.098, df = 71.274, p-value = 0.03945
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  0.01105874 0.43421947
# sample estimates:
# mean in group L mean in group P 
#        1.462152        1.239512 

# t-test to verify London consistently shows flexibility in accommodating extra people
setwd("F:/Sheba Assignment")
dummy_zipcoded_extra_people <- read.csv("zipcoded_extra_people.csv")
dummy_avg_extra_people <- as.numeric(dummy_zipcoded_extra_people$avg_extra_people)
dummy_place <- dummy_zipcoded_extra_people$place
t.test(dummy_avg_extra_people~dummy_place, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_avg_extra_people by dummy_place
# t = 3.4034, df = 72.996, p-value = 0.001084
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  0.8267345 3.1632530
# sample estimates:
# mean in group L mean in group P 
#        7.198771        5.203777

# t-test to verify London is consistently more spacious
setwd("F:/Sheba Assignment")
dummy_zipcoded_sqft <- read.csv("zipcoded_sqft.csv")
dummy_avg_sqft <- as.numeric(dummy_zipcoded_sqft$avg_sqft)
dummy_place <- dummy_zipcoded_sqft$place
t.test(dummy_avg_sqft~dummy_place, mu=0, conf=0.95, var.eq=F, paired=F)

# Welch Two Sample t-test
# data:  dummy_avg_sqft by dummy_place
# t = 4.5709, df = 157.99, p-value = 9.744e-06
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  139.8884 352.7664
# sample estimates:
# mean in group L mean in group P 
#        647.2359        400.9086 

