### subsetDataFrame.r
### Extracts only the measurements on the mean and standard deviation for each measurement. 

# extract field names using gsub
accData <- accData[, grep("[Mm]ean|[Ss]td|subject|activity", colnames(accData))]
