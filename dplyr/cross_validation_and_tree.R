one_rows <- pred[pred$ARR_DEL15==1,]
zero_rows <- pred[pred$ARR_DEL15==0,]
combined <- rbind(one_rows[sample(1:nrow(one_rows),1000,replace = F),],zero_rows[sample(1:nrow(zero_rows),1000,replace = F),])
treefit <- tree(ARR_DEL15 ~  DAY_OF_WEEK ,data = combined)
#The below did not work because in the origin_city there are more than
#32 categories, R Have a limitation of 32 categories
#treefit <- tree(ARR_DEL15 ~ ORIGIN_CITY + DAY_OF_WEEK ,data = combined)
