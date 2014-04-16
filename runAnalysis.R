### runAnalysis.R
### DataCleaning Project for course 'getting and cleaning data course'
### This data file (c) 2014 J Elvy 


rm(list = ls(all = TRUE))                 ## start with clean environment

source("./scripts/loadLibraries.R")       ## load package libraries

#source("./scripts/getData.R")             ## download raw data and save in rawData directory

source("./scripts/createDataFrame.R")     ## create dataframe acc by merging training and test data
                                          ## and adding subject and activity columns and 
                                          ## feature names for column headings

source("./scripts/tidyUpDataFrame.R")     ## transform column names to remove illegal chars in colnames
                                          ## check for NA data and remove if necessary

source("./scripts/subsetDataFrame.R")     ## use gsub with regular expression to subset dataframe
                                          ## feature representing including means and standard deviations

source("./scripts/saveData.R")            ## save 'accData' dataframe into new data subfolder
                                          ## saved as accData.rda and accData.csv

source("./scripts/summaryMeanDataFrame.R") ## create aggregate summary dataset using reshape
                                          ## saved as accAggData.rda

## clean up environment
rm(list = ls(all = TRUE))
load("./data/accData.rda")
load("./data/accAggData.rda")