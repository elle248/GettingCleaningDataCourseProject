#Overview
This is the codebook for the TidyData.txt file. The data within this file was created by cleansing data from the original study, whose details are found below:

>"Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed >six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy >S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at >a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained data >was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the >test data. 
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width >sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and >body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational >force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each >window, a vector of features was obtained by calculating variables from the time and frequency domain."

The TidyData.txt file uses only the mean and standard deviation portions of the original data, averaged over the subject of the study and the activity which they were performing. More information can be found on this in the next sections.

##Variable definitions

###Subject
Type: Integer
Units: None
This field uses an ID to anonymously specify the person involved in each sample.
The range of this field is from 1-30, since 30 people took part in collecting the data for this study.

###Activity
Type: String
Units: None
This is the activity Label, which describes the activity that the person in the study was undertaking.
Possible values of this field are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

###Features
Type: String
Units: normalised and bounded within [-1,1]
There are a number of different columns (column 3 onwards in the TidyData.txt file) relating to different features from the study. These various column names can be broken down into 5 parts of the follwoing form:

<"t"/"f"><"body"/"Gravity"><"Acc"/"AccJerk"/"AccMag"/"Gyro"/"GyroJerk"/"GyroMag">-<"mean()"/"std()"><"X"/"Y"/"Z">

Each of these parts can be interpreted as follows:

####PART 1
Value "t" or "f". "t" corresponds to measurements derived in time. "f" corresponds to measurements for which a Fast Fourier Transform (FFT) has been applied.

####PART 2
Value "Body or "Gravity"
"Body": the body component of the 3 axial raw signal from the accelerometer/gyroscope
"Gravity": the gravity component of the 3 axial raw signal from the accelerometer/gyroscope

####PART 3
"Acc": 3 axial raw signal from the accelerometer
"Gyro": 3 axial raw signal from the gyroscope
"AccJerk": Jerk signal from the accelerometer, derived from the body linear acceleration and angular velocity
"GyroJerk": Jerk signal from the gyroscope, derived from the body linear acceleration and angular velocity
"AccMag": the magnitude of the three-dimensional accelerometer signals (calculated using the Euclidean Norm)
"GyroMag": the magnitude of the three-dimensional gyroscope signals (calculated using the Euclidean Norm)

####PART 4
"mean()": the mean value of the signal
"std()": the standard deviation of the signal

####PART 5
"X", "Y" and "Z" values suffixed to the feature names denote the 3-axial signals in the X, Y and Z directions.

The complete list of variable names using this notation in the TidyData.txt file are:
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()

##Summaries
All of the values found in the  TidyData.txt file are mean average values obtained from the raw data. The values are the mean values for each of the 30 subjects covering each of the 6 activities (i.e. 180 combinations altogether -> 180 orws of data in the file)
