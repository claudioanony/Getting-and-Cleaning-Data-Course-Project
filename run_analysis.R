# Check if the working directory is UCA_HAR_Dataset

# Load the necessary libraries
library(dplyr)
#library(tidyr)
library(reshape2)


# Merge the training and the test sets to create one data set
X_train <- read.table("./train/X_train.txt")
X_test <- read.table("./test/X_test.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
activity_test <- read.table("./test/y_test.txt")
activity_train <- read.table("./train/y_train.txt")
# We build up a single data set
X_test2 <- cbind(X_test, subject_test, activity_test)
X_train2 <- cbind(X_train, subject_train, activity_train)
X_complete <- rbind(X_train2, X_test2)
# Features are the variable names. For the time being the data 
# are a data frame. 
features <- read.table("features.txt") 
# We add two rows to make space for subjects and activities
features2 <- rbind(features, 
      data.frame(V1=c(562,563), V2=c("subject", "activity")))
#The column with the variable names is transposed into a row
variables  <- t(features2$V2)
# and added to the main data set
names(X_complete) <- variables
# Select only non duplicated column
X_complete2 <- X_complete[,!duplicated(colnames(X_complete))]
# Collect in a vector the names which refer directly to means and stds
w <- grep("mean[^Fr]|std", colnames(X_complete2), ignore.case=TRUE)
# Create a data frame with mean and std variables
res <- X_complete2[,w]
# Add a column with subjects
res <- cbind(res, X_complete2$subject)
# Sustitute activities to integer reference
a <- gsub("1","WALKING", X_complete2$activity)
a <- gsub("2","WALKING_UPSTAIRS", a)
a <- gsub("3","WALKING_DOWNSTAIRS", a)
a <- gsub("4","SITTING", a)
a <- gsub("5","STANDING", a)
a <- gsub("6","LAYING", a)
# Add the column with activities
res2 <- cbind(res, a)
# The txt file with variable names has been corrected 
# with a text editor
myfeatures <- read.table("myfeatures.txt")
colnames(res2) <- myfeatures
# Reshape the data so to have variables mean per activities per subject
resmelted <- melt(res2, id=c("subject", "activity"))
rescast <- dcast(resmelted, subject + activity ~ variable, mean)

write.table(rescast, "tidydata.txt", sep="\t", row.name=FALSE)
# summarise_each(group_by(res2, subject, activity), funs(mean))

