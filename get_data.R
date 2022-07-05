# get.data function creates directory to store data, download dataset and 
# return a list of data frames obtained from dataset
get.data <- function(zip.url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip") {
  # Create data folder
  data.dir <- "./data"
  if(!file.exists(data.dir)) {
    dir.create(data.dir)
  }
  
  # Download and extracting data
  setwd(data.dir)
  print("Downloading data...")
  download.file(zip.url,
                destfile = "dataset.zip")
  print("Extracting data...")
  unzip("dataset.zip")
  
  # Change working directory to dataset directory
  dataset.dir <- "UCI HAR Dataset"
  setwd(dataset.dir)
  
  print("Reading data...")
  
  # Read test data
  subject.test <- read.table("./test/subject_test.txt")
  x.test <- read.table("./test/X_test.txt")
  y.test <- read.table("./test/Y_test.txt")
  
  # Read train data
  subject.train <- read.table("./train/subject_train.txt")
  x.train <- read.table("./train/X_train.txt")
  y.train <- read.table("./train/Y_train.txt")
  
  # Returning to original working directory
  setwd("../..")
  
  print("Finished getting data!")
  
  list(
    subject.test = subject.test,
    x.test = x.test,
    y.test = y.test,
    subject.train = subject.train,
    x.train = x.train,
    y.train = y.train
  )
}