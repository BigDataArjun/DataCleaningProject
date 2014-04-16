### summaryMeanDataFrame.r
### Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## determine number of columns in final dataframe
sort(unique(accData$subject)) # 30 subjects
sort(unique(accData$activity)) # 6 activities
# should have 30 x 6 or 180 columns


## start with reshaping

# melting dataframes
accMelt <- melt(accData, id = c("subject", "activity"), measure.vars = c(1:86))

# Casting data frames
accAggData <- dcast(accMelt, subject + activity ~ variable, mean) # rows ~ columns
# this is the second tidy dataset

# check: ok?
testAggOk <- subset(accData, subject == 1 & activity == "LAYING")
colMeans(testAggOk[1:86]) # yes! casting function worked!

## save datafile to disk
write.csv(accAggData, "./data/accAggData.csv", quote = TRUE, row.names = FALSE)
write.table(accAggData, "./data/accAggData.txt", sep = "\t", quote = TRUE, row.names = FALSE)
save(accAggData, file = "./data/accAggData.rda")
