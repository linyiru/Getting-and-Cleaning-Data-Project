## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## load data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

activity_lables <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

## 1. Merges the training and the test sets to create one data set.

train <- cbind(y_train, subject_train, X_train)
test  <- cbind(y_test, subject_test, X_test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

dataset <- rbind(X_test, X_train)

merged <- rbind(train, test)
merged <- merged[,c(TRUE, TRUE, features)]





## 3. Uses descriptive activity names to name the activities in the data set



## 4. Appropriately labels the data set with descriptive activity names.



## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
