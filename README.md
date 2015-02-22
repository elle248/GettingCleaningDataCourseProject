# GettingCleaningDataCourseProject
A repository for the output files, code and readme file for the week 3 course project of the Getting and Cleaning Data course

##Repository Objective
This repository contains all the files and information required for obtaining and cleansing data collected from the Samsung Galaxy S smartphone. Details on the files used for this activity are provided in the next section.

The code used for cleansing the data in the run_analysis.R file was tested on R version 3 on a Windows 7 machine.

##File Details in this Repository

###README.md
This file is the readme file, summarising the objective of the repository and details of how the files within it can be used.

###CodeBook.md
This file indicates all the variables and summaries calculated, along with units, and any other relevant information. All variables used are defined and explained within this file.

###run_analysis.R
This file contains the R code which needs to be run on the raw data in order to produce the cleansed dataset found in the TidyData.txt file. The steps performed on the raw data within the run_analysis.R file are as follows:

STEP 1: Merges the training and the test sets to create one data set
STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement
STEP 3: Uses descriptive activity names to name the activities in the data set
STEP 4: Appropriately labels the data set with descriptive variable names
STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

###TidyData.txt
This file contains the output of the run_analysis.R file. It is a space delimited header file containing the cleansed Samsung Galaxy S data, including the subject (person) involved for each of the measurements, the activity which they were undertaking (walking, walking upstairs etc.) and the mean and standard deviation measurements for the accelerometer and gyroscope. As expected for tidy data, each variable measured is in one column and each observation of that variable is in a different row.

##Dependencies
The run_analysis.R file assumes that the raw data is available and unzipped within the users working directory (as specified in the course project instructions). If this data is not yet available in your working directory, please download it from the link below and unzip the files to your working directory:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
