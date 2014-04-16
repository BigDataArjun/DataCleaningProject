# Codebook

## Data structure
The data has been prepared in both comma separated value (accData.csv) and R binary data file (accData.rda) formats. Both files are identical in structure and have been processed from the supplied raw data files.
The data structure consists of 10299 observations of 88 features and two identifier variables. 

The feature variables are outlined below (refer to feature selection) and the two identifier variables ('subject' and 'activity' identify the subject person 'subject' from whom the data was collected and the 'activity' they were carrying out when the data was being collected.

In addition, an aggregated dataset of average values for each feature and 'activity - subject' combination is provided in 'accAggData.csv' and 'accAggData.rda'.

All the output files are located in the ./data subdirectory. Raw data files are located in the ./rawData subdirectory. Refer to README.md for more information.

## Data Processing
The processing of the data included merging the test and training data, and adding the corresponding subject and activity columns. 

Column headings were imported and cleaned by up by removing characters that often cause problems for column names '(', ')', '-', and ','. 

The resulting dataframe was checked for NA data and none was located.

Next, the data framw was subset to include only the sets feature variables recording averages and standard deviations.


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
