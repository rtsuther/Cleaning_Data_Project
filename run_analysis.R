# run_analysis.R
# R script to take UCI HAR data and turn it into tidy data set


library(plyr)
library(dplyr)

# Read in the labels for the Activities and the Features which will be used to create the col names
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=F,sep="")
features <- read.table("./UCI HAR Dataset/features.txt", header=F,sep="")

# Change labels to make them more meaningful
features$V2 <-gsub("^t","time",features$V2)
features$V2 <-gsub("^f","frequency",features$V2)
features$V2 <-gsub("BodyBody","Body",features$V2)

# Fix for Duplicate values because X,Y,Z were left off.
features$V2[303:316] <- paste0(features$V2[303:316],"-X")
features$V2[317:330] <- paste0(features$V2[317:330],"-Y")
features$V2[331:344] <- paste0(features$V2[331:344],"-Z")

features$V2[382:395] <- paste0(features$V2[382:395],"-X")
features$V2[396:409] <- paste0(features$V2[396:409],"-Y")
features$V2[410:423] <- paste0(features$V2[410:423],"-Z")

features$V2[461:474] <- paste0(features$V2[461:474],"-X")
features$V2[475:488] <- paste0(features$V2[475:488],"-Y")
features$V2[489:502] <- paste0(features$V2[489:502],"-Z")


# retrieve the columns that contain means.  Excludes the columns where mean is in the title,
# but the data isn't actaully a mean.
mean_col <- grep("mean(", features$V2,fixed=TRUE)

# combines the means column ids with the standard deviation column ids
mean_std_cols <- c(mean_col,grep("std", features$V2))

# Read in the training set, apply the new column names 
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=F,sep="")
names(subject_train) <- "Subject"
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=F,sep="")
names(x_train) <-features$V2
x_train <- x_train[,mean_std_cols]

y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt", header=F,sep="")

# Iterate through the training data to apply the activity labels
label_index <- nrow(activity_labels)
train_index <- nrow(y_train)
for (i in 1:label_index) {
  for(j in 1:train_index) {
    if(y_train$V1[j] == activity_labels$V1[i]) {
      y_train$V1[j] <- as.character(activity_labels$V2[i])
    }
  }
}

names(y_train) <- "Activity"

# Combine the training data sets
combined_train <- cbind(subject_train,y_train,x_train)

# Read in the test set, apply the new column names
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=F,sep="")
names(subject_test) <- "Subject"
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=F,sep="")
names(x_test) <-features$V2
x_test <- x_test[,mean_std_cols]

y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt", header=F,sep="")

# Iterate through the test data to apply the activity labels
test_index <- nrow(y_test)
for (i in 1:label_index) {
  for(j in 1:test_index) {
    if(y_test$V1[j] == activity_labels$V1[i]) {
      y_test$V1[j] <- as.character(activity_labels$V2[i])
    }
  }
}

names(y_test) <- "Activity"

# Combine the test data sets
combined_test <- cbind(subject_test,y_test,x_test)

# combine the test and train data sets
tidy_combined_set <- rbind(combined_test,combined_train)

# Just a copy of the combined set at this point.  Averaging occurs next
tidy_averaged_set <- tbl_df(tidy_combined_set)

# Takes the data from the combined set above that was copied above, groups the data 
# and summarizes it so that there is a row of average data for each participant for 
# each activity
tidy_averaged_set <- tidy_averaged_set %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))

# Writes the data to a file
write.table(tidy_averaged_set,"tidy_averaged_set.txt",row.name=FALSE)
