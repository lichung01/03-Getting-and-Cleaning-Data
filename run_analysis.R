##  Program name:  run_analysis.R
##  This program reads a few sets of raw data from txt filess, combines and reshaped to a clean tidy dataset.
##

# Load and attach the required packages.
library(dplyr)
library(reshape2)

##
## Part (1): Merge the test and training sets
##

# Load test results
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)

# Load training results
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)

# Row bind 'subject' dataset
subject_dataset <- rbind(subject_train, subject_test)

# Row bind x_train and x_test dataset
feature_dataset <- rbind(x_train, x_test)

# Row bind y_train and y_test dataset
activity_dataset <- rbind(y_train, y_test)

#
# Part 2: Extract the measurements for mean and standard deviation from each measurement record
#

# Load features and substitute and reformat the Mean and Std without '()'
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = TRUE)

# extract list number for columns containing mean() or std()
# extract and overwrite activity_dataset with columns containing mean() or std()
meanStdOnly_features <- grep("(mean|std)\\(\\)", features[, 2])
feature_dataset <- feature_dataset[, meanStdOnly_features]

# correct the column names
names(feature_dataset) <- features[meanStdOnly_features, 2]

##
## Part 3:  Use descriptive activity to name the activities tnI/N in the data set
##

activities <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = TRUE)

## Change column header to "activity"
names(activity_dataset) <- "activity"

# Change column header to "subject"
names(subject_dataset) <- "subject"

## Replace activitiy values with activity names
activity_dataset[, 1] <- activities[activity_dataset[, 1], 2]

##
## Part 4: Label the data set with descriptive variable names
##
# bind all data into a single data set
combine_data <- cbind(activity_dataset, subject_dataset, feature_dataset)

##
## Part 5: Create a second, independent tidy data set with the average of each variable
## for each activity and each subject

# Break down the combine_dataset with melt on activity, subject
# This gives us a table of activity, subject, variable,value
melted_data <- melt(combine_data, id=c('activity', 'subject'))
colnames(melted_data) <- c("activity", "subject", "feature", "value")

# Group melted_data order by subject, activity, feature.
group_data <- melted_data %>%
                group_by(activity, subject, feature) %>%
                dplyr::summarise(mean = mean(value))


# Output tidy dataset to text file
write.table(group_data, 'tidy_dataset.txt', row.names=FALSE, sep=',')

