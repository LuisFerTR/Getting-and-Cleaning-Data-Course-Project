# Getting and Cleaning Data Course Project
## Scripts
The project is composed by two scripts: get_data.R and run_analysis.R

get_data.R contains a function called get.data which creates a directory to store data, download dataset and return a list of data frames obtained from dataset and get.data is called inside run_analysis by getting the data.

run_analysis performs the data analysis on the downloaded dataset following the steps mentioned in 
assignment description:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

And finally stores the resulting tidy dataset in data directory.