# README.md

## Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## Data source (raw data)
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The raw data files are stored in the './rawData' subdirectory


## Organisation

### R scripts
The data processing can be carried out by running the **runAnalysis.R** script. When the runAnalysis.R script is run it sources the scripts located in the './scripts' subdirectory. 

These scripts are summarised below:

* source("./scripts/loadLibraries.R") - loads package libraries
* source("./scripts/getData.R") - downloads raw data and save in rawData directory
* source("./scripts/createDataFrame.R") - creates dataframe acc by merging training and test data and adding subject and activity columns and feature names for column headings
* source("./scripts/tidyUpDataFrame.R") - ransforms column names to remove illegal chars in colnames check for NA data and remove if necessary
* source("./scripts/subsetDataFrame.R") - uses gsub with regular expression to subset dataframe feature representing including means and standard deviations
* source("./scripts/saveData.R") - saves 'accData' dataframe into new data subfolder saved as accData.rda and accData.csv
* source("./scripts/summaryMeanDataFrame.R") - creates aggregate summary dataset using reshape saved as accAggData.rda



## Data cleaning overview
The processing of the data included merging the test and training data, and adding the corresponding subject and activity columns. 

Column headings were imported and transformed by up by removing characters that often cause problems for column names '(', ')', '-', and ','. 

The resulting dataframe was checked for NA data and none was located.

Next, the data frame was subset to include only the sets feature variables recording averages and standard deviations.



## Processed data outputs

### Codebook
The **codebook.md** file describes the data structure of the processed data files found in the './data' subdirectory:

### Subset processed data files:
* accData.csv
* accData.rda

### Aggregate data files:
An aggregated dataset of average values for each feature and 'activity - subject' combination is provided in 'accAggData.csv' and 'accAggData.rda'.

* accData.csv
* accData.rda

