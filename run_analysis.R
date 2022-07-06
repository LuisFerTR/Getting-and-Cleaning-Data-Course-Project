source("get_data.R") # get.data

library(dplyr) # mutate, group_by

# Getting data frames list
sets <- get.data()

print("Tidying data")

# Merge train and test sets
test.set <- cbind(sets$subject.test, sets$y.test, sets$x.test)
train.set <- cbind(sets$subject.train, sets$y.train, sets$x.train)
data.set <- rbind(test.set, train.set)

# Extracting the mean and standard deviation measurements columns for each measurement.
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
mean.std.index <- grep("(mean|std)\\(\\)",features$V2)

# Adjusting indexes
mean.std.index <- mean.std.index + 2

# Subsetting dataset
data.set <- data.set[,c(1,2,mean.std.index)]

# Getting activity names map
activity.names <- read.table("./data/UCI HAR Dataset/activity_labels.txt", 
                             stringsAsFactors = FALSE)

# Replacing activity ID by activity name
names(activity.names) <- c("ID", "label")
data.set <- mutate(data.set, V1.1 = activity.names$label[V1.1])

# Make features names more descriptive
features.names <- features$V2[(mean.std.index-2)]
features.names <- gsub("^t", "time", features.names)
features.names <- gsub("^f", "freq", features.names)

# Labeling data with more descriptive variable names
names(data.set ) <- c("Subject_ID", "Activity", features.names) 

# Grouping data
grouped.data.set <- group_by(data.set, Subject_ID, Activity)

# Tidy data set with the average of each variable for each activity and each subject.
tidy.data.set <- summarise(grouped.data.set, across(features.names, mean, .names = "{.col}"))

# Saving tidy data set
print("Saving tidy dataset as data/tidy_dataset.csv")
write.csv(tidy.data.set, file = "./data/tidy_dataset.csv")