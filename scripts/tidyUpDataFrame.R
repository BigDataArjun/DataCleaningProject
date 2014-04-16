### tidyUpDataFrame.R
### Appropriately labels the data set with descriptive activity names. 

## Sub out illegal characters from colnames
colnames(accData) <- gsub('angle', 'angle_', colnames(accData)) # substitute '-' for '_' in colnames
colnames(accData) <- gsub('-', '_', colnames(accData)) # substitute '-' for '_' in colnames
colnames(accData) <- gsub(',', '_', colnames(accData)) # substitute ',' for '_' in colnames
colnames(accData) <- gsub('\\(', '', colnames(accData)) # remove '(' from colnames
colnames(accData) <- gsub('\\)', '', colnames(accData)) # remove ')' from colnames


## check for duplicate colnames
table(duplicated(names(accData))) # returns logical vector
# good news, no duplicate column names


## remove records with NA values
accData <- na.omit(accData) # good news, no records with NA values
all(colSums(is.na(accData)) == 0) # doublecheck if any missing values in dataset

## assign factors
accData$subject <- factor(accData$subject)
accData$activity <- factor(accData$activity)

