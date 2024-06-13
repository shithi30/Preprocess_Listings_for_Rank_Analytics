# shuffle, evenly divide, k-fold

setwd("F:/Sheba Assignment")
dummy <- read.csv("predict_rank_classed_imputed_arranged.csv")
dummy <- dummy[sample(1:nrow(dummy)), ]

dummy_zeros <- dummy[dummy$classified_rank==0, ]
dummy_zeros <- dummy_zeros[sample(1:nrow(dummy_zeros)), ]
train_zeros <- dummy_zeros[1:4592, ]
test_zeros <- dummy_zeros[4593:6122, ]

dummy_ones <- dummy[dummy$classified_rank==1, ]
dummy_ones <- dummy_ones[sample(1:nrow(dummy_ones)), ]
train_ones <- dummy_ones[1:2979, ]
test_ones <- dummy_ones[2980:3972, ]

dummy_twos <- dummy[dummy$classified_rank==2, ]
dummy_twos <- dummy_twos[sample(1:nrow(dummy_twos)), ]
train_twos <- dummy_twos[1:2144, ]
test_twos <- dummy_twos[2145:2858, ]

dummy_threes <- dummy[dummy$classified_rank==3, ]
dummy_threes <- dummy_threes[sample(1:nrow(dummy_threes)), ]
train_threes <- dummy_threes[1:2089, ]
test_threes <- dummy_threes[2090:2785, ]

dummy_fours <- dummy[dummy$classified_rank==4, ]
dummy_fours <- dummy_fours[sample(1:nrow(dummy_fours)), ]
train_fours <- dummy_fours[1:1770, ]
test_fours <- dummy_fours[1771:2359, ]

train <- rbind(train_zeros, train_ones, train_twos, train_threes, train_fours)
train <- train[sample(1:nrow(train)), ]
test <- rbind(test_zeros, test_ones, test_twos, test_threes, test_fours)
dummy2 <- rbind(train, test)
write.csv(dummy2, "predict_rank_classed_imputed_arranged2.csv", row.names=FALSE) # change number of dataset
