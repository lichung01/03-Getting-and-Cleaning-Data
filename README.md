## Getting and Cleaning Data - Course Project
### Introduction

This repository contains my assignment for the course project for "Getting and Cleaning data" part of the Data Science specialization from Coursera. 

1.  run_analysis.R
2.  tidy_dataset.txt
3.  CodeBook.md
4.  README.md

### R Language Program
The program ‘run_analysis.R’ reads from set of downloaded data files recorded from an experiment using 
the database of 30 people in training or test mode using the results of the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These signals were used to estimate variables of the feature vector for each pattern, ‘-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The program performs the process to extract and clean the data from a set of raw data files identified in the CookBook. A clean and tidy dataset (tidy_dataset.txt) is produced as an output to allow for further analysis.

### How it Works
Step 1:  Unzip the dataset “UCI HAR Dataset.zip” to local directory.

Step 2:  Download the script run_analysis.R to same local directory.

Step 3:  Load the script file into R Studio.

Step 4:  Run the script file.

Step 5:  The program will perform the following:

	1)	Merges the training and the test sets to create one big data set.
	2)	Extracts only the measurements on the mean and standard deviation for each measurement.
	3)	Use the descriptive activity names to name the activities in the data set.
	4)	Appropriately labels the data set with descriptive variable names.
	5)	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	6)	A copy of cleaned and tidy dataset is output to a file “tidydataset.txt” ready for use for analysis.


### The Codebook

The CodeBook.md file explains how the transformations are performed and the variables used together with the result data format.


Huang Li Chung, March 2015 
