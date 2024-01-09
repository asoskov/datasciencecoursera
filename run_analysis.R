# Download the dataset
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url, destfile = "UCI_HAR_Dataset.zip", method = "curl")

# Unzip the dataset
unzip("UCI_HAR_Dataset.zip")

# Load features and activity labels
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index", "feature"))
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_label"))

# Load training data
train_x <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
train_y <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity_id")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

# Load test data
test_x <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
test_y <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity_id")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# Merge training and test sets
merged_data <- rbind(train_x, test_x)
merged_activity <- rbind(train_y, test_y)
merged_subject <- rbind(train_subject, test_subject)

# Extract columns with mean and standard deviation measurements
selected_columns <- grep("mean()|std()", features$feature)
extracted_data <- merged_data[, c(selected_columns)]

# Merge activity labels with the data
merged_activity_labels <- merge(merged_activity, activity_labels, by = "activity_id", all.x = TRUE)

# Replace activity_id with descriptive activity names
merged_activity_labels$activity <- factor(merged_activity_labels$activity_label)
extracted_data <- cbind(merged_subject, merged_activity_labels$activity, extracted_data)

# Make variable names more descriptive
colnames(extracted_data)[1:2] <- c("subject", "activity")
library(dplyr)
# Create a tidy data set with averages
tidy_data <- extracted_data %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

# Write the tidy data set to a file
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)



