### getData.R

## create rawData directory
if (!file.exists("rawData")) {
  dir.create("rawData")
}

## download data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./rawData/UCI_HAR_Dataset.zip", method = "curl")
dateDownloaded <- date()

## Unzip the file into the dir
unzip("./rawData/UCI_HAR_Dataset.zip", exdir = "./rawData")
