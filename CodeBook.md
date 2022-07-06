# CodeBook

## Data
### Source data
The data used was obtained from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The data is about human activity recognition using smartphones more specifically is from a series of experiments which have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.

### Resulting data
The resulting data is tidy dataset of 180 observations and 68 variables.

1. Subject_ID: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
2. Activity: Activity's name WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
3.timeBodyAcc-mean()-X: Time Body acceleration signal x axis mean
4.timeBodyAcc-mean()-Y: Time Body acceleration signal y axis mean
5.timeBodyAcc-mean()-Z: Time Body acceleration signal z axis mean
6.timeBodyAcc-std()-X: Time Body acceleration signal x axis standard deviation
7.timeBodyAcc-std()-Y: Time Body acceleration signal y axis standard deviation
8.timeBodyAcc-std()-Z: Time Body acceleration signal z axis standard deviation
9.timeGravityAcc-mean()-X: Time Gravity acceleration signal x axis mean
10.timeGravityAcc-mean()-Y: Time Gravity acceleration signal y axis mean
11.timeGravityAcc-mean()-Z: Time Gravity acceleration signal z axis mean
12.timeGravityAcc-std()-X: Time Gravity acceleration signal x axis standard deviation
13.timeGravityAcc-std()-Y: Time Gravity acceleration signal y axis standard deviation
14.timeGravityAcc-std()-Z: Time Gravity acceleration signal z axis standard deviation
15.timeBodyAccJerk-mean()-X: Body linear acceleration derived in time Jerk signal x axis mean
16.timeBodyAccJerk-mean()-Y: Body linear acceleration derived in time Jerk signal y axis mean
17.timeBodyAccJerk-mean()-Z: Body linear acceleration derived in time Jerk signal z axis mean
18.timeBodyAccJerk-std()-X: Body linear acceleration derived in time Jerk signal x axis standard deviation
19.timeBodyAccJerk-std()-Y: Body linear acceleration derived in time Jerk signal y axis standard deviation
20.timeBodyAccJerk-std()-Z: Body linear acceleration derived in time Jerk signal z axis standard deviation
21.timeBodyGyro-mean()-X: Time Angular velocity signal x axis mean 
22.timeBodyGyro-mean()-Y: Time Angular velocity signal y axis mean
23.timeBodyGyro-mean()-Z: Time Angular velocity signal z axis mean
24.timeBodyGyro-std()-X: Time Angular velocity signal x axis standard deviation
25.timeBodyGyro-std()-Y: Time Angular velocity signal y axis standard deviation
26.timeBodyGyro-std()-Z: Time Angular velocity signal z axis standard deviation
27.timeBodyGyroJerk-mean()-X: Angular velocity derived in time Jerk signal x axis mean 
28.timeBodyGyroJerk-mean()-Y: Angular velocity derived in time Jerk signal y axis mean
29.timeBodyGyroJerk-mean()-Z: Angular velocity derived in time Jerk signal z axis mean
30.timeBodyGyroJerk-std()-X: Angular velocity derived in time Jerk signal x axis standard deviation
31.timeBodyGyroJerk-std()-Y: Angular velocity derived in time Jerk signal y axis standard deviation
32.timeBodyGyroJerk-std()-Z: Angular velocity derived in time Jerk signal z axis standard deviation
33.timeBodyAccMag-mean(): Time Body acceleration magnitude mean
34.timeBodyAccMag-std(): Time Body acceleration magnitude standard deviation
35.timeGravityAccMag-mean(): Time Gravity acceleration magnitude mean
36.timeGravityAccMag-std(): Time Gravity acceleration magnitude standard deviation
37.timeBodyAccJerkMag-mean(): Body linear acceleration derived in time Jerk signal magnitude mean
38.timeBodyAccJerkMag-std(): Body linear acceleration derived in time Jerk signal magnitude standard deviation
39.timeBodyGyroMag-mean(): Time Angular velocity magnitude mean
40.timeBodyGyroMag-std(): Time Angular velocity magnitude standard deviation
41.timeBodyGyroJerkMag-mean(): Angular velocity derived in time Jerk signal magnitude mean 
42.timeBodyGyroJerkMag-std(): Angular velocity derived in time Jerk signal magnitude standard deviation 
43.freqBodyAcc-mean()-X: Frequency Body acceleration signal x axis mean
44.freqBodyAcc-mean()-Y: Frequency Body acceleration signal y axis mean
45.freqBodyAcc-mean()-Z: Frequency Body acceleration signal z axis mean
46.freqBodyAcc-std()-X: Frequency Body acceleration signal x axis standard deviation
47.freqBodyAcc-std()-Y: Frequency Body acceleration signal y axis standard deviation
48.freqBodyAcc-std()-Z: Frequency Body acceleration signal z axis standard deviation
49.freqBodyAccJerk-mean()-X: Body linear acceleration derived in time frequency Jerk signal x axis mean
50.freqBodyAccJerk-mean()-Y: Body linear acceleration derived in time frequency Jerk signal y axis mean 
51.freqBodyAccJerk-mean()-Z: Body linear acceleration derived in time frequency Jerk signal z axis mean 
52.freqBodyAccJerk-std()-X: Body linear acceleration derived in time frequency Jerk signal x axis standard deviation 
53.freqBodyAccJerk-std()-Y: Body linear acceleration derived in time frequency Jerk signal y axis standard deviation 
54.freqBodyAccJerk-std()-Z: Body linear acceleration derived in time frequency Jerk signal z axis standard deviation
55.freqBodyGyro-mean()-X: Frequency Angular velocity signal x axis mean 
56.freqBodyGyro-mean()-Y: Frequency Angular velocity signal y axis mean
57.freqBodyGyro-mean()-Z: Frequency Angular velocity signal z axis mean
58.freqBodyGyro-std()-X: Frequency Angular velocity signal x axis standard deviation
59.freqBodyGyro-std()-Y: Frequency Angular velocity signal y axis standard deviation
60.freqBodyGyro-std()-Z: Frequency Angular velocity signal z axis standard deviation
61.freqBodyAccMag-mean(): Frequency Body acceleration magnitude mean 
62.freqBodyAccMag-std(): Frequency Body acceleration magnitude standard deviation
63.freqBodyAccJerkMag-mean(): Body linear acceleration derived in time Jerk signal magnitude frequency mean
64.freqBodyAccJerkMag-std(): Body linear acceleration derived in time Jerk signal magnitude frequency standard deviation 
65.freqBodyGyroMag-mean(): Time Angular velocity magnitude frequency mean
66.freqBodyGyroMag-std(): Time Angular velocity magnitude frequency standard deviation
67.freqBodyGyroJerkMag-mean(): Angular velocity derived in time Jerk signal magnitude frequency mean
68.freqBodyGyroJerkMag-std(): Angular velocity derived in time Jerk signal magnitude frequency standard deviation 


## Variables
### get_data.R
data.dir: Data directory path\
dataset.dir: Dataset directory path

subject.test: Data frame storing dataset.dir/test/subject_test.txt data\
x.test: Data frame storing dataset.dir/test/X_test.txt data\
y.test: Data frame storing dataset.dir/test/Y_test.txt data

subject.train: Data frame storing dataset.dir/train/subject_train.txt data\
x.train: Data frame storing dataset.dir/train/X_train.txt data\
y.train: Data frame storing dataset.dir/train/Y_train.txt data

### run_analysis.R
sets: A list of data frames obtained from downloaded dataset
test.set: The test directory data merged into one data frame
train.set: The train directory data merged into one data frame
data.set: The test and train directories data merged into one data frame
features: features names and indices data frame got it from features.txt
mean.std.index: Indices of the mean and standard deviation for each measurement.
activity.names: Activity names labels from activity_labels.txt
features.names: Column vector from features, stores names located at features mean.std.index indices
grouped.data.set: data.set grouped by Subject_ID and Activity
tidy.data.set: Tidied data set, each row is the average of each variable for each activity and each subject.

## Transformations or work performed
1. Merge train and test sets
2. Subsetting dataset by Subject_ID, Activity ID and mean and standard deviation for each measurement columns.
3. Replacing activity ID by activity name
4. Labeling data with more descriptive variable names
5. Grouping data by Subject_ID and Activity 
6. Transform and group rows the average of each variable for each activity and each subject.