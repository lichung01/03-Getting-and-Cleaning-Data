# Codebook

### The Experiment
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
 
### Variables used for the study
The following variables provide are identified to provide unique pair for each subject with activity relating to below:

	◦	Subject: the integer subject ID.
	◦	Using a group of 30 volunteers (ID from 1 to 30)
	◦	Activity: the string activity name:
		◦	1	-	WALKING
		◦	2	-	WALKING UPSTAIRS
		◦	3	-	WALKING DOWNSTAIRS
		◦	4	-	SITTING	
		◦	5	-	STANDING
		◦	6	-	LAYING

### Data used for the study
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project can be downloaded:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For each record, it is provided:

	•	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
	•	Triaxial Angular velocity from the gyroscope. 
	•	A 561-feature vector with time and frequency domain variables. 
	•	Its activity label. 
	•	An identifier of the subject who carried out the experiment.

The above zipped dataset includes the following files:

	⁃	'README.txt'
	⁃	'features_info.txt': Shows information about the variables used on the feature vector.
	⁃	'features.txt': List of all features.
	⁃	'activity_labels.txt': Links the class labels with their activity name.
	⁃	'train/X_train.txt': Training set.
	⁃	'train/y_train.txt': Training labels.
	⁃	'test/X_test.txt': Test set.
	⁃	'test/y_test.txt': Test labels.
	⁃	The following files are available for the train and test data. Their descriptions are equivalent. 
	⁃	'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
	⁃	'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
	⁃	’train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
	⁃	'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

The below files are being used for extracting, cleaning and combining to form a set of clean and tidy data.

(1)	features 	-> 	x-test.txt

(2)	activity 	->	y-test.txt

(3)	subject	->	subject_test.txt

(4)	features 	-> 	x-train.txt

(5)	activity 	->	y-train.txt

(6)	subject	->	subject_train.txt

There are a total of 561 features, a total of 6 subjects and a number of dataset for activities.

The output cleaned data set "tidy_dataset.txt" will have the following data structure:

### Data Structure

activity	-	activity labels (1-6) populated descriptive text

subject	-	subjects from a pool of 30  (1-30)

feature	-	list of 561 features

value	-	combined test and train data set


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


### References

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory, DITEN - University  degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living, Universitat PolitËcnica de Catalunya (BarcelonaTech). Vilanova i la Geltr˙ (08800), Spain, activityrecognition '@' smartlab.ws 

