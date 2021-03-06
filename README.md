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

* **./scripts/loadLibraries.R** - loads package libraries
* **./scripts/getData.R** - downloads raw data and save in rawData directory
* **./scripts/createDataFrame.R** - creates dataframe acc by merging training and test data and adding subject and activity columns and feature names for column headings
* **./scripts/tidyUpDataFrame.R** - transforms column names to remove illegal chars in colnames check for NA data and remove if necessary
* **./scripts/subsetDataFrame.R** - uses gsub with regular expression to subset dataframe feature representing including means and standard deviations
* **./scripts/saveData.R** - saves 'accData' dataframe into new data subfolder saved as accData.rda and accData.csv
* **./scripts/summaryMeanDataFrame.R** - creates aggregate summary dataset using reshape saved as accAggData.rda



## Data cleaning overview
### Creation of dataframe
The processing of the data included merging the test and training data, and adding the corresponding subject and activity columns. 

### Transformations
Column headings were imported and transformed by removing characters that often cause problems for column names '(' , ')' , '-' , and ','.

The data features were noted to be recorded with a large number of significant figures. Possibly more than the precision of the recording instruments on the Samsung smartphone. However, no transformations have been made to 'round' the response variables to lower precision in case this precision is needed. Lower precision will result in smaller data files.

### Missing values
The resulting dataframe was checked for NA data and none were detected

### Subsetting
Next, the data frame was subset to include only the sets feature variables recording averages and standard deviations.



## Processed data outputs

### Codebook
The **codebook.md** file describes the data structure of the processed data files found in the './data' subdirectory.

The processed data files present only a subset of the response variables given in the raw data files.
These processed files are given in three formats: 

### Processed data files:
* **accData.csv** - comma separated value data file with character strings encapsulated in quotes
* **accData.txt** - tab separated value data file
* **accData.rda** - R binary data file

### Aggregate data files:
An aggregated dataset of average values for each feature and 'activity - subject' combination is provided in 'accAggData.csv' and 'accAggData.rda'.

* **accData.csv** - comma separated value data file with character strings encapsulated in quotes
* **accData.txt** - tab separated value data file
* **accData.rda** - R binary data file

