# checking impact of discrete features: bed_type_num; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

dummy_var <- dummy_dataset$bed_type_num
dummy_target <- dummy_dataset$classified_rank
table(dummy_var, dummy_target)
dummy_tab <- table(dummy_var, dummy_target)
barplot(dummy_tab, beside=T, legend=T)
chisq.test(dummy_tab, correct=T)

# Pearson's Chi-squared test
# data:  dummy_tab
# X-squared = 27.396, df = 16, p-value = 0.03729

# checking impact of discrete features: location_exact; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

dummy_var <- dummy_dataset$location_exact
dummy_target <- dummy_dataset$classified_rank
table(dummy_var, dummy_target)
dummy_tab <- table(dummy_var, dummy_target)
barplot(dummy_tab, beside=T, legend=T)
chisq.test(dummy_tab, correct=T)

# Pearson's Chi-squared test
# data:  dummy_tab
# X-squared = 13.549, df = 4, p-value = 0.008884

# checking impact of discrete features: property_type_ranked; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

dummy_var <- dummy_dataset$property_type_ranked
dummy_target <- dummy_dataset$classified_rank
table(dummy_var, dummy_target)
dummy_tab <- table(dummy_var, dummy_target)
barplot(dummy_tab, beside=T, legend=T)
chisq.test(dummy_tab, correct=T)

# Pearson's Chi-squared test
# data:  dummy_tab
# X-squared = 348.97, df = 124, p-value < 2.2e-16

# checking impact of discrete features: room_num; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

dummy_var <- dummy_dataset$room_num
dummy_target <- dummy_dataset$classified_rank
table(dummy_var, dummy_target)
dummy_tab <- table(dummy_var, dummy_target)
barplot(dummy_tab, beside=T, legend=T)
chisq.test(dummy_tab, correct=T)

# Pearson's Chi-squared test
# data:  dummy_tab
# X-squared = 95.315, df = 8, p-value < 2.2e-16

# checking impact of discrete features: superhost_num; very good feature

setwd("F:/Sheba Assignment")
dummy_dataset <- read.csv("predict_rank_classed_imputed.csv")

dummy_var <- dummy_dataset$superhost_num
dummy_target <- dummy_dataset$classified_rank
table(dummy_var, dummy_target)
dummy_tab <- table(dummy_var, dummy_target)
barplot(dummy_tab, beside=T, legend=T)
chisq.test(dummy_tab, correct=T)

# Pearson's Chi-squared test
# data:  dummy_tab
# X-squared = 1108.6, df = 4, p-value < 2.2e-16
