### createDataFrame.R

## load rawdata components to build dataframe
X_train <- read.table("./rawData/UCI HAR Dataset/train/X_train.txt", header = FALSE, quote="\"")
y_train <- read.table("./rawData/UCI HAR Dataset/train/y_train.txt", header = FALSE, quote="\"")
subject_train <- read.table("./rawData/UCI HAR Dataset/train/subject_train.txt", header = FALSE, quote="\"")
X_test <- read.table("./rawData/UCI HAR Dataset/test/X_test.txt", header = FALSE, quote="\"")
y_test <- read.table("./rawData/UCI HAR Dataset/test/y_test.txt", header = FALSE, quote="\"")
subject_test <- read.table("./rawData/UCI HAR Dataset/test/subject_test.txt", header = FALSE, quote="\"")


## load activity descriptions
features <- read.table("./rawData/UCI HAR Dataset/features.txt", header = FALSE, quote="\"")
activity_labels <- read.table("./rawData/UCI HAR Dataset/activity_labels.txt", header = FALSE, quote="\"")


## Merge the training and the test sets to create one data set.
train <- cbind(X_train, subject_train, y_train) # create train dataframe
test <- cbind(X_test, subject_test, y_test) # create test dataframe
accData <- rbind(train, test) # combine datasets


## assign column names to 'accData' dataframe from features.txt
# plus append column names for new columns 'subject' and 'activity'
colnames(accData) <- c(as.character(features$V2), "subject", "V1") 


## Use descriptive activity names to name the activities in the data set
# merge in activity names from activity_labels.txt using column name 'V1' as join key
accData <- merge(accData, activity_labels, by.x = "V1", by.y = "V1", all = FALSE)
accData <- accData[,2:564] # drop ID key inserted by 'merge function' at position of column 1
colnames(accData)[563] <- "activity" # rename activity column label from 'V2' to 'activity'
