# distribution of annual income

setwd("F:/Sheba Assignment")
dummy_income_dataset <- read.csv("income.csv")
dummy_annual_income <- dummy_income_dataset$annual_income
dummy_annual_income <- as.numeric(dummy_annual_income)
hist(dummy_annual_income, freq = FALSE)
lines(density(dummy_annual_income))
