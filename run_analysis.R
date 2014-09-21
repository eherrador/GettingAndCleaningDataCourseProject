## The data in this project represent "Human Activity Recognition Using Smartphones Data Set" collected
## from the accelerometers from the Samsung Galaxy S smartphone.
## A full description is available at the site where the data was obtained:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

if (!("reshape2" %in% rownames(installed.packages())) ) {
  message("Installing \"reshape2\" package before proceeding...")
  install.packages("reshape2")
} else {
  library(reshape2)

  #### Read the data ####
  ## Read the class labels with their activity name
  activity_labels <- read.table("./data/activity_labels.txt", col.names = c("activityId", "activityName"))

  ## Read the list of all features
  feature_names <- read.table("./data/features.txt")[,2]

  ## Read the test data
  testdata <- read.table("./data/test/X_test.txt")
  ## Read the training data
  traindata <- read.table("./data/train/X_train.txt")

  ## Read the ids of the test subjects
  test_subject_id <- read.table("./data/test/subject_test.txt")
  ## Read the ids of the test subjects
  train_subject_id <- read.table("./data/train/subject_train.txt")

  ## Read the activity id's of the test data
  test_activity_id <- read.table("./data/test/y_test.txt")
  ## Read the activity id's of the training data
  train_activity_id <- read.table("./data/train/y_train.txt")

  ## ## Appropriately labels the data set with descriptive variable names.
  colnames(testdata) <- feature_names
  colnames(traindata) <- feature_names
  colnames(test_subject_id) <- "subject_id"
  colnames(test_activity_id) <- "activity_id"
  colnames(train_subject_id) <- "subject_id"
  colnames(train_activity_id) <- "activity_id"

  #### Combine ####
  ## Merges the training and the test sets to create one data set.
  alldata <- do.call("rbind", list(cbind(train_subject_id , train_activity_id , traindata),
                                    cbind(test_subject_id , test_activity_id , testdata)))

  ## Extracts  only the measurements on the mean and standard deviation for each measurement.
  mean_col_idx <- grep("mean()",names(alldata),ignore.case=FALSE, fixed=TRUE)
  mean_col_names <- names(alldata)[mean_col_idx]
  std_col_idx <- grep("std()",names(alldata),ignore.case=FALSE, fixed=TRUE)
  std_col_names <- names(alldata)[std_col_idx]
  meanstddata <-alldata[,c("subject_id","activity_id",mean_col_names,std_col_names)]

  ## Uses descriptive activity names to name the activities in the data set
  activitynames <- merge(activity_labels,meanstddata,by.x="activityId",by.y="activity_id",all=TRUE)

  ## creates a second, independent tidy data set with
  ## the average of each variable for each activity and each subject.
  mdata <- melt(activitynames,id=c("activityId","activityName","subject_id"))
  dmean <- dcast(mdata,activityId + activityName + subject_id ~ variable,mean)
  write.table(dmean,"./tidydata.txt", row.names = FALSE)
}
