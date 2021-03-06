# Codebook

## Data structure
### Data files
The data has been prepared in three formats:
* comma separated value (**accData.csv**)
* tab deliminated text file (**accData.txt**)
* R binary data file (**accData.rda**) formats. 

All three files are identical in structure and have been processed from the supplied raw data files. The text files were produced because the coursera project submission page would not except files with .csv extensions.

### Structure and dimensions
The data structure consists of 10299 observations of 86 features (response variables) and 2 independent variables - **subject** and **activity**. The total number of columns (variables) in the dataset in 88.

The feature (response) variables are outlined below - refer to feature selection below.

The two independent variables ('subject' and 'activity') identify the subject person 'subject' from whom the data was collected and the 'activity' they were carrying out when the data was being collected.

Since two independent variables are present, the **subject** variable should be subset out of the training set (if trying to predict activity type), so that the resulting prediction model does not use **subject** as a predictor of activity. Basically, different subjects (people) walk in different ways.



### Summarised dataset
In addition, an aggregated dataset of average values for each feature and 'activity - subject' combination is provided in **accAggData.csv** and **accAggData.rda**.
The text file format of this dataset has been submitted via the cousera project submission page

### Data location
All of these output data files are located in the ./data subdirectory at the author's github repository - https://github.com/jameselvy/DataCleaningProject/. 

Raw data files are located in the ./rawData subdirectory. Refer to **README.md** for more information.

## Data Processing
### Creation of dataframe
The processing of the data included merging the test and training data, and adding the corresponding subject and activity columns. 

### Transformations
Column headings were imported and transformed by removing characters that often cause problems for column names '(' , ')' , '-' , and ','.

The data features were noted to be recorded with a large number of significant figures. Possibly more than the precision of the recording instruments on the Samsung smartphone. However, no transformations have been made to 'round' the response variables to lower precision in case this precision is needed. Lower precision will result in smaller data files.

### Missing values
The resulting dataframe was checked for NA data and none were detected

### Subsetting
Next, the data frame was subset to include only the sets feature variables recording averages and standard deviations.


## Feature Selection
### Overview
The features selected for this database come from the accelerometer and gyroscope 3_axial raw signals 
tAcc_XYZ and tGyro_XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc_XYZ and tGravityAcc_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

### Time domain features
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk_XYZ and tBodyGyroJerk_XYZ). Also the magnitude of these three_dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3_axial signals in the X, Y and Z directions.

* tBodyAcc_XYZ
* tGravityAcc_XYZ
* tBodyAccJerk_XYZ
* tBodyGyro_XYZ
* tBodyGyroJerk_XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag


### Frequency domain features
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc_XYZ, fBodyAccJerk_XYZ, fBodyGyro_XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

* fBodyAcc_XYZ
* fBodyAccJerk_XYZ
* fBodyGyro_XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

### Sets of Variables
The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

### Additional vectors
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the 'angle_' variable:

* angle_gravityMean
* angle_tBodyAccMean
* angle_tBodyAccJerkMean
* angle_tBodyGyroMean
* tBodyGyroJerkMean
